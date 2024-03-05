void main() {
  try {
    someFunction();
  } catch (e) {
    print('Caught an exception: $e');
  } finally {
    print('Finally block executed.');
  }
}

void someFunction() {
  throw Exception('Something went wrong!');
}
