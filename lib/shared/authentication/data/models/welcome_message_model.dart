import 'package:mentorea_mobile_app/generated/l10n.dart';

class WelcomeMessage {
  final String messageTitile;
  final String messageContent;

  WelcomeMessage({required this.messageTitile, required this.messageContent});
}

List<WelcomeMessage> listWelcomeMessage = [
  WelcomeMessage(
    messageTitile: S.current.welcomeMessage,
    messageContent: S.current.welcomeMessageContent,
  ),
  WelcomeMessage(
    messageTitile: S.current.welcomeMessage,
    messageContent: S.current.mentorWelcomeMessageContent,
  ),
];
