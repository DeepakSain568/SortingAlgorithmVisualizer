// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:sorting_visualizer/algo.dart';
// import 'package:sorting_visualizer/resources/figurevalues.dart';
// import 'package:sorting_visualizer/resources/colors.dart';

// class insertionsort_view extends StatefulWidget {
//   const insertionsort_view({super.key});

//   @override
//   State<insertionsort_view> createState() => _insertionsort_viewState();
// }

// class _insertionsort_viewState extends State<insertionsort_view> {
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<Algo>(context, listen: false);
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text('insertion Sort')),
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
//                             // color: value.selector == index  
//                             //     ? colors.selected
//                             //     : value.i==index?colors.traveler:
//                             //     value.j == index
//                             //         ? Color.fromARGB(255, 76, 75, 75)
//                                 color    : colors.ofall
//                             ))
//                   ],
//                 );
//               }),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.sort_rounded),
//         onPressed: () {
//         provider.insertion_sort();
//       }),
//     );
//   }
// }
