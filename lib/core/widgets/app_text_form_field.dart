import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isObscureText;
  final int? maxLines;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintTextStyle;
  final Color? backGroundColorHint;
  final TextInputType textInputType;
  final TextEditingController? controller;
  final Function(String?) validator;
  final Function(String? value)? onChanged;

  const AppTextFormField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.isObscureText,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.contentPadding,
    this.hintTextStyle,
    this.backGroundColorHint,
    required this.textInputType,
    this.controller,
    required this.validator,
    this.onChanged,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      style: inputTextStyle ?? Theme.of(context).textTheme.titleSmall,
      controller: controller,
      keyboardType: textInputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: Theme.of(context).inputDecorationTheme.contentPadding,
        focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
        enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
        errorBorder: Theme.of(context).inputDecorationTheme.errorBorder,
        focusedErrorBorder: Theme.of(context).inputDecorationTheme.errorBorder,
        hintText: hintText,
        hintStyle: hintTextStyle ?? Theme.of(context).textTheme.bodySmall,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        suffixIconColor: Theme.of(context).iconTheme.color!,
        prefixIconColor: Theme.of(context).iconTheme.color!,
      ),
      obscureText: isObscureText ?? false,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
