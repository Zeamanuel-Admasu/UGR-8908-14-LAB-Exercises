void main() {
  try {
    throwError();
  } catch (e) {
    print('Caught an exception: $e');
  }
}

void throwError() {
  throw Exception('Something went wrong!');
}
