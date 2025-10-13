import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final String label;
  final Function(String) onChanged;

  const CustomTextInput({
    super.key,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
