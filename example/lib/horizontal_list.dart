import 'package:flutter/material.dart';
import 'package:flutter_list_view/flutter_list_view.dart';

class HorizontalListExample extends StatelessWidget {
  const HorizontalListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Horizontal List')),
      body: Center(
        child: SizedBox(
          height: 120,
          child: FlutterListView(
            scrollDirection: Axis.horizontal,
            delegate: FlutterListViewDelegate(
              (context, index) => Container(
                width: 120,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                color: Colors.blueAccent,
                child: Text('Item $index'),
              ),
              childCount: 20,
              preferItemWidth: 120,
            ),
          ),
        ),
      ),
    );
  }
}
