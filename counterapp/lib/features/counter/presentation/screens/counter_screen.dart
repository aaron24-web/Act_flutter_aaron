
import 'package:counterapp/features/counter/presentation/widgets/action_buttons.dart';
import 'package:flutter/material.dart';
import 'package:counterapp/features/counter/presentation/widgets/counter_label_text.dart';
import 'package:counterapp/features/counter/presentation/widgets/counter_value_text.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [CounterValueText(), CounterLabelText()],
                ),
              ),
            ),
            ActionButtons(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
