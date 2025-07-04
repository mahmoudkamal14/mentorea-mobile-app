import 'package:mentorea_mobile_app/features/authentication/data/models/welcome_message_model.dart';
import 'package:mentorea_mobile_app/features/onboarding/data/models/user_type_model.dart';

WelcomeMessage buildWelcomeMessage(UserType userType) {
  List<WelcomeMessage> listMessages = listWelcomeMessage;

  if (userType == UserType.mentee) {
    return listMessages[0];
  } else {
    return listMessages[1];
  }
}
