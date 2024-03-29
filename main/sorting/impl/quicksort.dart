import '../sort.dart';

class QuickSort implements Sort {
// A utility function to swap two elements
  static void swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }

/* This function takes last element as pivot, places
the pivot element at its correct position in sorted
array, and places all smaller (smaller than pivot)
to left of pivot and all greater elements to right
of pivot */
  static int partition(List<int> arr, int low, int high) {
    // pivot
    int pivot = arr[high];

    // Index of smaller element and
    // indicates the right position
    // of pivot found so far
    int i = (low - 1);

    for (int j = low; j <= high - 1; j++) {
      // If current element is smaller
      // than the pivot
      if (arr[j] < pivot) {
        // Increment index of
        // smaller element
        i++;
        swap(arr, i, j);
      }
    }
    swap(arr, i + 1, high);
    return (i + 1);
  }

/* The main function that implements QuickSort
		arr[] --> Array to be sorted,
		low --> Starting index,
		high --> Ending index
*/
  static void quickSort(List<int> arr, int low, int high) {
    if (low < high) {
      // pi is partitioning index, arr[p]
      // is now at right place
      int pi = partition(arr, low, high);

      // Separately sort elements before
      // partition and after partition
      quickSort(arr, low, pi - 1);
      quickSort(arr, pi + 1, high);
    }
  }

// Function to print an array
  static void printArray(List<int> arr, int size) {
    print(arr);
  }

  @override
  List<int> sortData(List<int> data) {
    quickSort(data, data.first, data.last);
    return data;
  }
}
