import 'package:flutter/material.dart';
import 'package:sorting_visualizer/resources/figurevalues.dart';
import 'package:provider/provider.dart';
import 'package:sorting_visualizer/viewmodel/algo.dart';
import 'package:sorting_visualizer/resources/colors.dart';
class Selectionsort_view extends StatefulWidget {
  const Selectionsort_view({super.key});

  @override
  State<Selectionsort_view> createState() => _Selectionsort_viewState();
}

class _Selectionsort_viewState extends State<Selectionsort_view> {
  @override
  Widget build(BuildContext context) {
    final provide = Provider.of<Algo>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Data Visualizer')),
        actions: [
          IconButton(
              onPressed: () {
                provide.func(300);
              },
              icon: Icon(Icons.build))
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 300,left: 10),
        child: Consumer<Algo>(
      
            // selector: (context,notifier)=>notifier.selector,
            builder: (context, value, child) => ListView.builder(
              itemCount: value.list.length,
              itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        width: value.list[index].toDouble(),
                        height: figurevalues.height,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white, width: 0.5),
                            color: 
                            value.selector == index
                                ? colors.selected
                                : value.j == index     
                                    ? colors.traveler
                                    :
                                     colors.ofall
                            )
                            ),
                  ]),
            )),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.sort_rounded),
          onPressed: () {
            provide.Selection_sort();
          }),
    );
  }
}
