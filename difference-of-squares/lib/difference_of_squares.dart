class DifferenceOfSquares {
  // Put your code here
  int squareOfSum(int val) {
    int sum = 0;

    for (int i = 1; i <= val; i++) {
      sum += i;
    }

    return sum * sum;
  }

  int sumOfSquares(int val) {
    int sum_of_sqr = 0;
    for (int i = 1; i <= val; i++) {
      sum_of_sqr += i * i;
    }

    return sum_of_sqr;
  }

  int differenceOfSquares(int val) {
    return sumOfSquares(val) - squareOfSum(val);
  }
}
