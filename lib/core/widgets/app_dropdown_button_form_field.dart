import 'package:flutter/material.dart';

class AppDropdownButtonFormField extends StatelessWidget {
  const AppDropdownButtonFormField({
    super.key,
    required this.value,
    required this.label,
    required this.items,
    required this.onChanged,
  });

  final String? value;
  final String label;

  final List<DropdownMenuItem<String>>? items;
  final Function(String? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      icon: const SizedBox.shrink(),
      style: Theme.of(context).textTheme.bodyMedium,
      dropdownColor: Theme.of(context).scaffoldBackgroundColor,
      decoration: InputDecoration(
        label: Text(
          label,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        contentPadding: Theme.of(context).inputDecorationTheme.contentPadding,
        focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
        enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
        errorBorder: Theme.of(context).inputDecorationTheme.errorBorder,
      ),
      onChanged: onChanged,
      items: items,
    );
  }
}
