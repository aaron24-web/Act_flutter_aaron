import 'package:flutter/material.dart';
import 'package:mayor_de_tres/presentation/providers/calculator_provider.dart';
import 'package:mayor_de_tres/presentation/widgets/custom_number_input.dart';
import 'package:mayor_de_tres/presentation/widgets/result_display.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CalculatorProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mayor de Tres'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomNumberInput(
              label: 'Primer número',
              onChanged: (value) => provider.updateNumber1(value),
            ),
            const SizedBox(height: 16),
            CustomNumberInput(
              label: 'Segundo número',
              onChanged: (value) => provider.updateNumber2(value),
            ),
            const SizedBox(height: 16),
            CustomNumberInput(
              label: 'Tercer número',
              onChanged: (value) => provider.updateNumber3(value),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => provider.calculateGreatest(),
              child: const Text('Calcular'),
            ),
            const SizedBox(height: 32),
            ResultDisplay(result: provider.result),
          ],
        ),
      ),
    );
  }
}