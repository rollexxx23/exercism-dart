// Put your code here
Set<String> st1 = {'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'};
Set<String> st2 = {'D', 'G'};
Set<String> st3 = {"B", "C", "M", "P"};
Set<String> st4 = {"F", "H", "V", "W", "Y"};
Set<String> st5 = {"K"};
Set<String> st6 = {"J", "X"};
Set<String> st7 = {"Q", "Z"};

int score(String s) {
  int res = 0;
  s = s.toUpperCase();
  for (int i = 0; i < s.length; i++) {
    if (st1.contains(s[i])) {
      res += 1;
    }
    if (st2.contains(s[i])) {
      res += 2;
    }
    if (st3.contains(s[i])) {
      res += 3;
    }
    if (st4.contains(s[i])) {
      res += 4;
    }
    if (st5.contains(s[i])) {
      res += 5;
    }
    if (st6.contains(s[i])) {
      res += 8;
    }
    if (st7.contains(s[i])) {
      res += 10;
    }
  }
  print(res);
  return res;
}
