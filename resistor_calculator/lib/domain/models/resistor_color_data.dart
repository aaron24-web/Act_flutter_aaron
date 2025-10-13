
enum ResistorColor {
  negro,
  marron,
  rojo,
  naranja,
  amarillo,
  verde,
  azul,
  violeta,
  gris,
  blanco,
  oro,
  plata,
}

class ResistorColorData {
  static const Map<ResistorColor, int> values = {
    ResistorColor.negro: 0,
    ResistorColor.marron: 1,
    ResistorColor.rojo: 2,
    ResistorColor.naranja: 3,
    ResistorColor.amarillo: 4,
    ResistorColor.verde: 5,
    ResistorColor.azul: 6,
    ResistorColor.violeta: 7,
    ResistorColor.gris: 8,
    ResistorColor.blanco: 9,
  };

  static const Map<ResistorColor, double> multipliers = {
    ResistorColor.negro: 1,
    ResistorColor.marron: 10,
    ResistorColor.rojo: 100,
    ResistorColor.naranja: 1000,
    ResistorColor.amarillo: 10000,
    ResistorColor.verde: 100000,
    ResistorColor.azul: 1000000,
    ResistorColor.violeta: 10000000,
    ResistorColor.oro: 0.1,
    ResistorColor.plata: 0.01,
  };

  static const Map<ResistorColor, double> tolerances = {
    ResistorColor.marron: 1,
    ResistorColor.rojo: 2,
    ResistorColor.verde: 0.5,
    ResistorColor.azul: 0.25,
    ResistorColor.violeta: 0.1,
    ResistorColor.gris: 0.05,
    ResistorColor.oro: 5,
    ResistorColor.plata: 10,
  };
}
