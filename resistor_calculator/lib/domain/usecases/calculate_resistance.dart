import 'package:resistor_calculator/domain/models/resistor_color_data.dart';

class CalculateResistance {
  String execute({
    ResistorColor? band1, 
    ResistorColor? band2, 
    ResistorColor? multiplier, 
    ResistorColor? tolerance
  }) {
    if (band1 == null || band2 == null || multiplier == null) {
      return "Selecciona los colores";
    }

    final band1Value = ResistorColorData.values[band1]!;
    final band2Value = ResistorColorData.values[band2]!;
    final multiplierValue = ResistorColorData.multipliers[multiplier]!;

    final baseValue = (band1Value * 10 + band2Value) * multiplierValue;

    String result;
    if (baseValue >= 1000000) {
      result = '${baseValue / 1000000} MΩ';
    } else if (baseValue >= 1000) {
      result = '${baseValue / 1000} kΩ';
    } else {
      result = '$baseValue Ω';
    }

    if (tolerance != null) {
      final toleranceValue = ResistorColorData.tolerances[tolerance]!;
      result += ' ±$toleranceValue%';
    }

    return result;
  }
}
