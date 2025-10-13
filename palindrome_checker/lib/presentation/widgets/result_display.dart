import 'package:flutter/material.dart';

class ResultDisplay extends StatelessWidget {
  final bool? isPalindrome;

  const ResultDisplay({super.key, this.isPalindrome});

  @override
  Widget build(BuildContext context) {
    if (isPalindrome == null) {
      return const Text('Ingresa una palabra y presiona verificar');
    }

    final message = isPalindrome! ? '¡Es un palíndromo!' : 'No es un palíndromo';
    final icon = isPalindrome!
        ? const Icon(Icons.check_circle, color: Colors.green, size: 40)
        : const Icon(Icons.cancel, color: Colors.red, size: 40);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        const SizedBox(height: 10),
        Text(message, style: const TextStyle(fontSize: 18)),
      ],
    );
  }
}
