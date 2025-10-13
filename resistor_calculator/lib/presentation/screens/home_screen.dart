import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resistor_calculator/domain/models/resistor_color_data.dart';
import 'package:resistor_calculator/presentation/providers/resistor_provider.dart';
import 'package:resistor_calculator/presentation/widgets/color_selector.dart';
import 'package:resistor_calculator/presentation/widgets/resistor_body_view.dart';
import 'package:resistor_calculator/presentation/widgets/result_display.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final resistorProvider = context.watch<ResistorProvider>();

    final valueColors = ResistorColor.values.where((c) => c != ResistorColor.oro && c != ResistorColor.plata).toList();
    final multiplierColors = ResistorColor.values.toList();
    final toleranceColors = ResistorColor.values.where((c) => ResistorColorData.tolerances.containsKey(c)).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resistor Calculator'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ResistorBodyView(
                band1: resistorProvider.band1,
                band2: resistorProvider.band2,
                multiplier: resistorProvider.multiplier,
                tolerance: resistorProvider.tolerance,
              ),
              const SizedBox(height: 20),
              ResultDisplay(result: resistorProvider.result),
              const SizedBox(height: 20),
              ColorSelector(
                label: 'Primera Banda',
                availableColors: valueColors,
                selectedColor: resistorProvider.band1,
                onChanged: (color) => context.read<ResistorProvider>().updateBand1(color),
              ),
              const SizedBox(height: 10),
              ColorSelector(
                label: 'Segunda Banda',
                availableColors: valueColors,
                selectedColor: resistorProvider.band2,
                onChanged: (color) => context.read<ResistorProvider>().updateBand2(color),
              ),
              const SizedBox(height: 10),
              ColorSelector(
                label: 'Multiplicador',
                availableColors: multiplierColors,
                selectedColor: resistorProvider.multiplier,
                onChanged: (color) => context.read<ResistorProvider>().updateMultiplier(color),
              ),
              const SizedBox(height: 10),
              ColorSelector(
                label: 'Tolerancia',
                availableColors: toleranceColors,
                selectedColor: resistorProvider.tolerance,
                onChanged: (color) => context.read<ResistorProvider>().updateTolerance(color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}