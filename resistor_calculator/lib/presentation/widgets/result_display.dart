import 'package:flutter/material.dart';

class ResultDisplay extends StatelessWidget {
  final String result;

  const ResultDisplay({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Text(
      result,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
