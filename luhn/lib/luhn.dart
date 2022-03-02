class Luhn {
  // Put your code here
  bool valid(String s) {
    List<int> digits = [];

    for (int i = 0; i < s.length; i++) {
      if (s[i] == ' ') continue;
      int? value = int.tryParse(s[i]);
      if (value == null) return false;
      digits.add(value);
    }
    for (int i = 0; i < digits.length; i += 2) {
      digits[i] *= 2;

      (digits[i] > 9) ? digits[i] = digits[i] - 9 : digits[i];
    }
    int sum = 0;
    sum = digits.reduce((value, element) => sum + element);
    return sum % 10 == 0;
  }
}
