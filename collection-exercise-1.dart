int? findHighest(List<int> numbers) {
  if (numbers.isEmpty) {
    // If the list is empty, return null or throw an error, depending on requirements
    return null; // Alternatively, throw an error: throw ArgumentError('List is empty');
  }

  int highest = numbers[0]; // Initialize highest to the first element

  // Iterate through the list to find the highest number
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > highest) {
      highest = numbers[i];
    }
  }

  return highest; // Return the highest number
}

void main() {
  // Example usage:
  List<int> numbers = [10, 5, 20, 15, 25];
  int? highestNumber = findHighest(numbers);
  print(
      'The highest number is: $highestNumber'); // Output: The highest number is: 25
}
