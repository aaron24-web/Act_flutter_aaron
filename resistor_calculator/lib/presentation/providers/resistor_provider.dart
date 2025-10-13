import 'package:flutter/material.dart';
import 'package:resistor_calculator/domain/models/resistor_color_data.dart';
import 'package:resistor_calculator/domain/usecases/calculate_resistance.dart';

class ResistorProvider extends ChangeNotifier {
  ResistorColor? _band1;
  ResistorColor? _band2;
  ResistorColor? _multiplier;
  ResistorColor? _tolerance;
  String _result = "Selecciona los colores";

  final CalculateResistance _calculateResistance = CalculateResistance();

  ResistorColor? get band1 => _band1;
  ResistorColor? get band2 => _band2;
  ResistorColor? get multiplier => _multiplier;
  ResistorColor? get tolerance => _tolerance;
  String get result => _result;

  void updateBand1(ResistorColor? color) {
    _band1 = color;
    _calculate();
  }

  void updateBand2(ResistorColor? color) {
    _band2 = color;
    _calculate();
  }

  void updateMultiplier(ResistorColor? color) {
    _multiplier = color;
    _calculate();
  }

  void updateTolerance(ResistorColor? color) {
    _tolerance = color;
    _calculate();
  }

  void _calculate() {
    _result = _calculateResistance.execute(
      band1: _band1,
      band2: _band2,
      multiplier: _multiplier,
      tolerance: _tolerance,
    );
    notifyListeners();
  }
}
