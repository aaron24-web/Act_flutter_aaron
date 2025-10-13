import 'package:flutter/material.dart';
import 'package:resistor_calculator/domain/models/resistor_color_data.dart';

class ResistorBodyView extends StatelessWidget {
  final ResistorColor? band1;
  final ResistorColor? band2;
  final ResistorColor? multiplier;
  final ResistorColor? tolerance;

  const ResistorBodyView({
    super.key,
    this.band1,
    this.band2,
    this.multiplier,
    this.tolerance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.orange[100],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildBand(band1),
          _buildBand(band2),
          _buildBand(multiplier),
          _buildBand(tolerance),
        ],
      ),
    );
  }

  Widget _buildBand(ResistorColor? color) {
    return Container(
      width: 12,
      height: 100,
      color: _getColor(color),
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
