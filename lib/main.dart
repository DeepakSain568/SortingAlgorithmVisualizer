import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sorting_visualizer/view/bubblesort_view.dart';
import 'package:sorting_visualizer/view/insertionsort_view.dart';
import 'package:sorting_visualizer/view/selectionsort_view.dart';
import 'viewmodel/algo.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MultiProvider(
             providers: [
              ChangeNotifierProvider(create: (context)=>Algo()),
             ],

           child:MaterialApp(
            home:Selectionsort_view(),
           )
            );

  }
}
