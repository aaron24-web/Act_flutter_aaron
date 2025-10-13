import 'package:flutter/material.dart';

class CustomNumberInput extends StatelessWidget {
  final String label;
  final void Function(String value) onChanged;

  const CustomNumberInput({
    super.key,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}
