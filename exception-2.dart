void main() {
  try {
    throwError();
  } catch (e) {
    if (e is CustomException) {
      print('Caught a CustomException: $e');
    } else {
      print('Caught an exception: $e');
    }
  }
}

void throwError() {
  throw CustomException('Something went wrong!');
}

class CustomException implements Exception {
  final String message;

  CustomException(this.message);

  @override
  String toString() {
    return 'CustomException: $message';
  }
}
