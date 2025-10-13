class CheckPalindrome {
  bool execute(String text) {
    String sanitizedText = text
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]'), '');
    String reversedText = sanitizedText.split('').reversed.join('');
    return sanitizedText == reversedText;
  }
}
