import 'dart:math';

class ArmstrongNumbers {
  // Put your code here
  bool isArmstrongNumber(int num) {
    String temp = num.toString();
    int len = temp.length;
    int? res = 0;
    while (num != 0) {
      res = (res! + pow((num % 10), len)) as int?;
      num = (num / 10).round();
    }
    return res == int.parse(temp);
  }
}
