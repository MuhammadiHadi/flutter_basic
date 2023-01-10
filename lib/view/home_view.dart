import 'package:flutter/material.dart';
import 'package:flutter_basic/res/color/color.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController _controller = TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              text: "Home",
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "Home",
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "Home",
              icon: Icon(Icons.home),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Gridpage(),
          Text("Hello "),
          Text("Hello  mera world"),
        ],
      ),
    );
  }
}

class Gridpage extends StatelessWidget {
  const Gridpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 50,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 30,
            width: 40,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            color: AppColors.black,
            child: Center(
                child: Text(
              index.toString(),
              style: TextStyle(color: AppColors.white),
            )),
          );
        });
  }
}
