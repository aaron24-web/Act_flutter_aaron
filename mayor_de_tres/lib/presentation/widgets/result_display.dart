import 'package:flutter/material.dart';

class ResultDisplay extends StatelessWidget {
  final double? result;

  const ResultDisplay({super.key, this.result});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 24,
      color: Theme.of(context).colorScheme.primary,
    );

    return Text(
      result == null
          ? 'Esperando resultado...'
          : 'El número mayor es: ${result!}',
      style: textStyle,
    );
  }
}
