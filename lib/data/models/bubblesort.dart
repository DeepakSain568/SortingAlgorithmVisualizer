// import 'dart:math';

import 'package:sorting_visualizer/data/models/Algorithms_base.dart';

class BubleSort extends AlgorithmsBase {

  int Selector = 0;
  int swap = 0;
  int J = 0;
  int i = -1;

@override
 Bubble_sort(List<int> list) async {
    int selector = 0;
    swap = 0;
    J = 0;
    i = -1;
    for (i = list.length - 1; i >= 0; i--) {
      J = 0;
      selector = J;

      await Future.delayed(Duration(milliseconds: 200));
      while (J < list.length - 1) {
        if (list[J] > list[J + 1]) {
          swap = list[J + 1];
          list[J + 1] = list[J];
          selector = J + 1;
          list[J] = swap;
          await Future.delayed(Duration(milliseconds: 200));
        }
        J++;
        await Future.delayed(Duration(milliseconds: 200));
      }
    }
   
  }

}
