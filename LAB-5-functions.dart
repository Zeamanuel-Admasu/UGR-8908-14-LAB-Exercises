void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int curr = 0;
  for (int i = 0; i < numbers.length; i++) {
    curr = curr + numbers[i];
  }
  print(curr / numbers.length);
}
