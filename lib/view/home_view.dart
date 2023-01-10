import 'package:flutter/material.dart';
import 'package:flutter_basic/res/color/color.dart';
import 'package:flutter_basic/res/component/checkbox.dart';
import 'package:flutter_basic/res/component/gird_view.dart';

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
          checkbox(),
          Text("Hello  mera world"),
        ],
      ),
    );
  }
}
