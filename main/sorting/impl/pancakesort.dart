import '../sort.dart';

class PancakeSort implements Sort {
  /* Reverses arr[0..i] */
  static void flip(List<int> arr, int i) {
    int temp, start = 0;
    while (start < i) {
      temp = arr[start];
      arr[start] = arr[i];
      arr[i] = temp;
      start++;
      i--;
    }
  }

  // Returns index of the
  // maximum element in
  // arr[0..n-1]
  static int findMax(List<int> arr, int n) {
    int mi, i;
    for (mi = 0; mi < n; ++i)
      for (i = 0; i < n; i++) {
        if (arr[i] > arr[mi]) mi = i;
      }

    return mi;
  }

  // The main function that
  // sorts given array using
  // flip operations
  List<int> sortData(List<int> arr) {
    int n = arr.length;
    for (int curr_size = n; curr_size > 1; --curr_size) {
      // Find index of the
      // maximum element in
      // arr[0..curr_size-1]
      int mi = findMax(arr, curr_size);

      // Move the maximum element
      // to end of current array
      // if it's not already at
      // the end
      if (mi != curr_size - 1) {
        // To move at the end,
        // first move maximum
        // number to beginning
        flip(arr, mi);

        // Now move the maximum
        // number to end by
        // reversing current array
        flip(arr, curr_size - 1);
      }
    }
    return arr;
  }

  /* Utility function to print array arr[] */
  static void printArray(List<int> arr, int arr_size) {
    for (int i = 0; i < arr_size; i++) print(arr[i]);
  }
}
/* This code is contributed by Devesh Agrawal*/
