import 'package:mentorea_mobile_app/shared/authentication/data/models/welcome_message_model.dart';
import 'package:mentorea_mobile_app/shared/onboarding/data/models/user_type_model.dart';

WelcomeMessage buildWelcomeMessage(UserType userType) {
  List<WelcomeMessage> listMessages = listWelcomeMessage;

  if (userType == UserType.mentee) {
    return listMessages[0];
  } else {
    return listMessages[1];
  }
}
