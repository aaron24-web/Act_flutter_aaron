import 'dart:math';

class FindGreatestNumber {
  double? execute({double? n1, double? n2, double? n3}) {
    if (n1 == null || n2 == null || n3 == null) {
      return null;
    }
    return max(n1, max(n2, n3));
  }
}
