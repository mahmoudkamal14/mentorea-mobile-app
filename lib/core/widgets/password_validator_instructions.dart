import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/functions/app_regex.dart';
import 'package:mentorea_mobile_app/core/widgets/password_validations.dart';

class PasswordValidatorInstructions extends StatefulWidget {
  const PasswordValidatorInstructions({
    super.key,
    required this.passwordController,
  });
  final TextEditingController passwordController;

  @override
  State<PasswordValidatorInstructions> createState() =>
      _PasswordValidatorInstructionsState();
}

class _PasswordValidatorInstructionsState
    extends State<PasswordValidatorInstructions> {
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    widget.passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(widget.passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(widget.passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
          widget.passwordController.text,
        );
        hasNumber = AppRegex.hasNumber(widget.passwordController.text);
        hasMinLength = AppRegex.hasMinLength(widget.passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return PasswordValidations(
      hasLowerCase: hasLowerCase,
      hasUpperCase: hasUpperCase,
      hasSpecialCharacters: hasSpecialCharacters,
      hasNumber: hasNumber,
      hasMinLength: hasMinLength,
    );
  }

  @override
  void dispose() {
    widget.passwordController.dispose();
    super.dispose();
  }
}
