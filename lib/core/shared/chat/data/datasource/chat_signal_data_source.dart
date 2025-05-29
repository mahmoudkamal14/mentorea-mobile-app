import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:signalr_netcore/signalr_client.dart';
import '../models/message_model.dart';

class ChatSignalRDataSource {
  late final HubConnection _hubConnection;

  ChatSignalRDataSource({required String userToken}) {
    const serverUrl = '${ApiConstants.baseUrl}/chathub';

    final httpOptions = HttpConnectionOptions(
      accessTokenFactory: () async => userToken,
      transport: HttpTransportType.WebSockets,
      logMessageContent: true,
    );

    _hubConnection = HubConnectionBuilder()
        .withUrl(serverUrl, options: httpOptions)
        .configureLogging(httpOptions.logger!)
        .build();
  }

  Future<void> startConnection() async {
    if (_hubConnection.state != HubConnectionState.Connected) {
      await _hubConnection.start();
    }
  }

  void listenToMessages(Function(MessageModel message) onMessage) {
    _hubConnection.on('ReceiveMessage', (arguments) {
      final senderId = arguments?[0] as String;
      final message = arguments?[1] as String;

      final messageModel = MessageModel(
        senderId: senderId,
        receiverId: '',
        content: message,
        sentAt: DateTime.now(),
      );

      onMessage(messageModel);
    });
  }

  Future<void> sendMessage(MessageModel message) async {
    await _hubConnection.invoke(
      'SendMessage',
      args: [message.senderId, message.receiverId, message.content],
    );
  }

  Future<void> stopConnection() async {
    await _hubConnection.stop();
  }
}
