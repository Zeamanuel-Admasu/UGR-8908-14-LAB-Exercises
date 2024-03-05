List<T> removeDuplicates<T>(List<T> list) {
  Set<T> uniqueElements = {};
  List<T> resultList = [];
  for (var element in list) {
    if (!uniqueElements.contains(element)) {
      uniqueElements.add(element);
      resultList.add(element);
    }
  }
  return resultList;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 2, 3, 6, 7, 8, 4, 9, 10, 1];
  List<int> uniqueNumbers = removeDuplicates(numbers);
  print('List with duplicates: $numbers');
  print('List without duplicates: $uniqueNumbers');
}
