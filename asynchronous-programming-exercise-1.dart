import 'dart:async';

void main() async {
  Future<int> fetchData() {
    return Future.delayed(Duration(seconds: 2), () {
      return 42;
    });
  }

  print('Fetching data...');
  int data = await fetchData();
  print('Data fetched: $data');
}
