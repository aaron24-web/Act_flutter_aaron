import 'package:flutter/material.dart';
import 'package:palindrome_checker/domain/usecases/check_palindrome.dart';

class PalindromeProvider extends ChangeNotifier {
  final CheckPalindrome _checkPalindrome = CheckPalindrome();

  String _inputText = '';
  bool? _isPalindrome;

  String get inputText => _inputText;
  bool? get isPalindrome => _isPalindrome;

  void updateInputText(String value) {
    _inputText = value;
    notifyListeners();
  }

  void check() {
    _isPalindrome = _checkPalindrome.execute(_inputText);
    notifyListeners();
  }
}
