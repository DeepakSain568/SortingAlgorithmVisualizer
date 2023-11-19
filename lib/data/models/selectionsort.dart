import 'dart:math';

import 'package:sorting_visualizer/data/models/Algorithms_base.dart';

class SelectionSort extends AlgorithmsBase {

  int Selector = 0;
  int swap = 0;
  int J = 0;
  int i = -1;

@override
  selection_sort(List<int> list) async{
    Selector = 0;
    swap = 0;
    J = 0;
    i = -1;
    for (i = 0; i < list.length - 1; i++) {
      Selector = i;
      await Future.delayed(Duration(milliseconds: 200));
      J = i;
      while (J < list.length) {
        if (list[Selector] > list[J]) {
          Selector = J;
          await Future.delayed(Duration(milliseconds: 200));
        }
        J++;
        await Future.delayed(Duration(milliseconds: 200));
      }
      swap = list[i];
      list[i] = list[Selector];
      list[Selector] = swap;
    }
  }

}
