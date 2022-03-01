// Put your code here
bool isValid(String str) {
  int res = 0;
  int j = 10;
  int n = str.length;
  for (int i = 0; i < n - 1; i++) {
    if (str[i] == '-') {
      continue;
    }
    res = res + int.parse(str[i]) * j;
    j = j - 1;
  }
  if (str[n - 1] == 'X') {
    res += 10;
  } else {
    res = res + (int.parse(str[n - 1]));
  }
  return (res % 11 == 0);
}
