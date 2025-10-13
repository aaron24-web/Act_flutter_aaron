import 'package:flutter/material.dart';
import 'package:resistor_calculator/domain/models/resistor_color_data.dart';

class ColorSelector extends StatelessWidget {
  final String label;
  final List<ResistorColor> availableColors;
  final ResistorColor? selectedColor;
  final ValueChanged<ResistorColor?> onChanged;

  const ColorSelector({
    super.key,
    required this.label,
    required this.availableColors,
    required this.selectedColor,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<ResistorColor>(
      hint: Text(label),
      value: selectedColor,
      onChanged: onChanged,
      items: availableColors.map((ResistorColor color) {
        return DropdownMenuItem<ResistorColor>(
          value: color,
          child: Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: _getColor(color),
              ),
              const SizedBox(width: 10),
              Text(color.toString().split('.').last),
            ],
          ),
        );
      }).toList(),
    );
  }

  Color _getColor(ResistorColor? color) {
    if (color == null) return Colors.transparent;
    switch (color) {
      case ResistorColor.negro:
        return Colors.black;
      case ResistorColor.marron:
        return Colors.brown;
      case ResistorColor.rojo:
        return Colors.red;
      case ResistorColor.naranja:
        return Colors.orange;
      case ResistorColor.amarillo:
        return Colors.yellow;
      case ResistorColor.verde:
        return Colors.green;
      case ResistorColor.azul:
        return Colors.blue;
      case ResistorColor.violeta:
        return Colors.purple;
      case ResistorColor.gris:
        return Colors.grey;
      case ResistorColor.blanco:
        return Colors.white;
      case ResistorColor.oro:
        return Colors.amber;
      case ResistorColor.plata:
        return Colors.grey[300]!;
      default:
        return Colors.transparent;
    }
  }
}
