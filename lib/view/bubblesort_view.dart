// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:sorting_visualizer/algo.dart';
// import 'package:sorting_visualizer/resources/figurevalues.dart';
// import 'package:sorting_visualizer/resources/colors.dart';

// class bubblesort_view extends StatefulWidget {
//   const bubblesort_view({super.key});

//   @override
//   State<bubblesort_view> createState() => _bubblesort_viewState();
// }

// class _bubblesort_viewState extends State<bubblesort_view> {
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<Algo>(context, listen: false);
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text('Bubble Sort')),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 provider.func(300);
//               },
//               icon: Icon(Icons.build))
//         ],
//       ),
//       body: Container(
//          margin: EdgeInsets.only(top: 300,left: 10),
//         child: Consumer<Algo>(
//           builder: (context, value, child) => ListView.builder(
//               itemCount: provider.list.length,
//               itemBuilder: (context, index) {
//                 return Column(
//                   children: [
//                     Container(
//                         width: provider.list[index].toDouble(),
//                         height: figurevalues.height,
//                         decoration: BoxDecoration(
//                             border: Border.all(color: Colors.white, width: 0.5),
//                             color: value.selector == index
//                                 ? colors.selected
//                                 : value.j == index
//                                     ? colors.traveler
//                                     : colors.ofall))
//                   ],
//                 );
//               }),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.sort_rounded),
//         onPressed: () {
//         provider.bubble_sort();
//       }),
//     );
//   }
// }
