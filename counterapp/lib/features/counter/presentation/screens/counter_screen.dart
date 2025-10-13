
import 'package:counterapp/features/counter/presentation/widgets/action_buttons.dart';
import 'package:counterapp/features/counter/presentation/widgets/reset_fab_button.dart';
import 'package:flutter/material.dart';
import 'package:counterapp/features/counter/presentation/widgets/counter_label_text.dart';
import 'package:counterapp/features/counter/presentation/widgets/counter_value_text.dart';

class CounterScreen extends StatelessWidget {
  final VoidCallback onThemeChanged;
  const CounterScreen({super.key, required this.onThemeChanged});

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
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            top: 16.0,
            right: 0.0,
            child: FloatingActionButton(
              onPressed: onThemeChanged,
              child: const Icon(Icons.color_lens),
            ),
          ),
          const Positioned(
            bottom: 0.0,
            right: 0.0,
            child: ResetFabButton(),
          ),
        ],
      ),
    );
  }
}
