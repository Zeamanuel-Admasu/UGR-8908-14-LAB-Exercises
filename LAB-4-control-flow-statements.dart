void main() {
  int previous = 0;
  int current = 1;
  print(previous);
  print(current);
  for (int j = 2; j < 10; j++) {
    int next = previous + current;
    print(next);
    previous = current;
    current = next;
  }
}
