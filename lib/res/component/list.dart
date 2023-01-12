import 'package:flutter/material.dart';

class ListNew extends StatefulWidget {
  const ListNew({Key? key}) : super(key: key);

  @override
  State<ListNew> createState() => _ListNewState();
}

class _ListNewState extends State<ListNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: ((context, orientation) {
          return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              crossAxisSpacing: 3,
              mainAxisSpacing: 4,
              children: List.generate(100, (index) {
                return Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey,
                    child: Center(child: Text("Hello Word")));
              }));
        }),
      ),
    );
  }
}
