
import 'package:counterapp/features/counter/presentation/widgets/decrement_button.dart';
import 'package:counterapp/features/counter/presentation/widgets/increment_button.dart';
import 'package:counterapp/features/counter/presentation/widgets/reset_fab_button.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DecrementButton(),
        ResetFabButton(),
        IncrementButton(),
      ],
    );
  }
}
