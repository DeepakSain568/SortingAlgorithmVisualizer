import 'dart:ffi';
import 'dart:math';
import 'package:sorting_visualizer/data/models/Algorithms_base.dart';
import 'package:sorting_visualizer/data/models/bubblesort.dart';
import 'package:sorting_visualizer/data/models/selectionsort.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Algo with ChangeNotifier {
  List<int> list = [300, 200, 310, 302, 100, 10, 70, 180, 30, 230];
  SelectionSort SS = SelectionSort();
  BubleSort BS = BubleSort();
  
  func(int val) {
    Set<int> set = {};
    while (set.length < list.length) {
      set.add(20 + Random().nextInt(val));
    }
    list = set.toList();
    notifyListeners();
  }

  int selector = 0;
  int j = 0;

  Selection_sort() async {
    SS.selection_sort(list);
    for (int i = 0; i < 90; i++) {
      selector = SS.Selector;
      print("Selector $selector");
      notifyListeners();
      await Future.delayed(Duration(milliseconds: 200));
      j = SS.J;
      print("Selector $j");
      notifyListeners();
      await Future.delayed(Duration(milliseconds: 200));
    }

    selector = 0;
    j = 0;
    Bubble_sort() async {
      BS.Bubble_sort(list);
      for (int i = 0; i < 90; i++) {
        selector = BS.Selector;
        print("Selector $selector");
        notifyListeners();
        await Future.delayed(Duration(milliseconds: 200));
        j = BS.J;
        print("Selector $j");
        notifyListeners();
        await Future.delayed(Duration(milliseconds: 200));
      }
    }

//   insertion_sort() async {
//     selector ;
//     swap = 0;
//     j = 0;
//     i = 1;

//     while (i < list.length) {
//       j = i;
//       notifyListeners();
//         await Future.delayed(Duration(milliseconds: 500));
//       while (j >= 1) {
//         if (list[j] < list[j - 1]) {
//           swap = list[j - 1];
//           list[j - 1] = list[j];
//           list[j] = swap;
//           selector = j;
//           notifyListeners();
//           await Future.delayed(Duration(milliseconds: 500));
//         }
//         j--;
//         notifyListeners();
//         await Future.delayed(Duration(milliseconds: 500));
//       }
//       i++;
//       notifyListeners();
//       await Future.delayed(Duration(milliseconds: 500));
//     }
//   }
  }
}
