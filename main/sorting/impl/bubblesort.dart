import '../sort.dart';

class BubbleSort implements Sort {
  void bubbleSort(List<int> data) {}

  void printArray(List<int> arr) {
    print('After: $arr');
  }

  @override
  List<int> sortData(List<int> data) {
    int n = data.length;
    for (int i = 0; i < n - 1; i++) {
      for (int j = 0; j < n - i - 1; j++)
        if (data[j] > data[j + 1]) {
          // swap data[j+1] and data[j]
          int temp = data[j];
          data[j] = data[j + 1];
          data[j + 1] = temp;
        }
    }
    return data;
  }
}
