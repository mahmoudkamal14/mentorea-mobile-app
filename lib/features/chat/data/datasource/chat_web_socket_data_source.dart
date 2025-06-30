import 'dart:convert';
import 'dart:developer';
import 'package:logging/logging.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/features/chat/data/models/message_request_body.dart';
import 'package:mentorea_mobile_app/features/chat/data/models/message_response_model.dart';
import 'package:signalr_netcore/signalr_client.dart';

class ChatWebSocketDataSource {
  late HubConnection _hubConnection;
  final String _serverUrl = "${ApiConstants.baseUrl}/chathub";

  Function(MessageResponseModel)? _onMessageReceived;

  void _setupLogging() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((LogRecord rec) {
      //  log('${rec.level.name}: ${rec.time}: ${rec.message}');
    });
  }

  void setOnMessageReceivedHandler(Function(MessageResponseModel) handler) {
    _onMessageReceived = handler;
    log("Message handler set.");
  }

  Future<void> init({required String userId}) async {
    _setupLogging();
    final logger = Logger("SignalR");

    final accessToken =
        await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);

    final httpOptions = HttpConnectionOptions(
      //   logger: logger,
      accessTokenFactory: () async => accessToken!,
      requestTimeout: 10000,
    );

    _hubConnection = HubConnectionBuilder()
        .withUrl(_serverUrl, options: httpOptions)
        .withAutomaticReconnect()
        .configureLogging(logger)
        .build();

    _hubConnection.onclose(({error}) {
      log(error != null
          ? "Connection closed with error: $error"
          : "Connection closed gracefully.");
    });

    _hubConnection.on("newmessage", (args) {
      try {
        if (args != null && args.isNotEmpty) {
          final data = args[0];
          final messageMap = data is String
              ? jsonDecode(data)
              : Map<String, dynamic>.from(data as Map<String, dynamic>);
          final msg = MessageResponseModel.fromJson(messageMap);
          _onMessageReceived?.call(msg);
        }
      } catch (e) {
        log("Error in newmessage handler: $e");
      }
    });

    await _hubConnection.start();
    await _hubConnection.invoke("JoinChat", args: [userId]);
  }

  Future<void> sendMessage(MessageRequestBody message) async {
    try {
      await _hubConnection.invoke("SendMessage", args: [message.toJson()]);
    } catch (e) {
      log("Error sending message: $e");
      rethrow;
    }
  }

  Future<void> disconnect() async {
    if (_hubConnection.state == HubConnectionState.Connected) {
      await _hubConnection.stop();
    }
  }

  bool get isConnected => _hubConnection.state == HubConnectionState.Connected;
}
