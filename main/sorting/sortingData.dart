import 'sort.dart';

abstract class SortingData {
  late Sort sort;

  List<int> sortingData(List<int> data) {
    return sort.sortData(data);
  }
}
