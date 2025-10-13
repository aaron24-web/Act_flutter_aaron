import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:palindrome_checker/presentation/providers/palindrome_provider.dart';
import 'package:palindrome_checker/presentation/widgets/custom_text_input.dart';
import 'package:palindrome_checker/presentation/widgets/result_display.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final palindromeProvider = context.watch<PalindromeProvider>();
    final palindromeNotifier = context.read<PalindromeProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Palindrome Checker'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextInput(
              label: 'Palabra o frase',
              onChanged: (value) => palindromeNotifier.updateInputText(value),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => palindromeNotifier.check(),
              child: const Text('Verificar'),
            ),
            const SizedBox(height: 40),
            ResultDisplay(isPalindrome: palindromeProvider.isPalindrome),
          ],
        ),
      ),
    );
  }
}