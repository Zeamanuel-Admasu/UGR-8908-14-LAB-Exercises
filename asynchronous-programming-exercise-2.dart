void main() {
  Future<int> fetchData() {
    return Future.delayed(Duration(seconds: 2), () {
      return 42;
    });
  }

  print('Fetching data...');
  fetchData().then((result) {
    print('Data fetched: $result');
  });
}
