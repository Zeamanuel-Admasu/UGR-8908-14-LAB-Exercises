int? findHighest(List<int> numbers) {
  if (numbers.isEmpty) {
    return null;
  }
  int highest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > highest) {
      highest = numbers[i];
    }
  }

  return highest;
}

void main() {
  List<int> numbers = [10, 5, 20, 15, 25];
  int? highestNumber = findHighest(numbers);
  print('The highest number is: $highestNumber');
}
