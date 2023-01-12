import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/res/color/color.dart';
import 'package:flutter_basic/res/component/carousel_slider.dart';
import 'package:flutter_basic/res/component/checkbox.dart';
import 'package:flutter_basic/res/component/gird_view.dart';
import 'package:flutter_basic/res/component/list.dart';
import 'package:flutter_basic/res/component/local.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController _controller = TabController(length: 5, vsync: this);

  List<String> imageList = [
    'https://cdn.pixabay.com/photo/2017/10/28/07/47/woman-2896389_960_720.jpg',
    'https://cdn.pixabay.com/photo/2022/10/07/07/13/alps-7504344__340.jpg',
    'https://cdn.pixabay.com/photo/2018/04/07/22/18/nature-3299783__340.jpg',
    'https://cdn.pixabay.com/photo/2015/11/21/15/49/tree-1055091__340.jpg',
    'https://cdn.pixabay.com/photo/2017/10/22/13/24/malham-2877857__340.jpg'
  ];
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
              text: "Add",
              icon: Icon(Icons.chair_outlined),
            ),
            Tab(
              text: "Chair",
              icon: Icon(Icons.chair_outlined),
            ),
            Tab(
              text: "new",
              icon: Icon(Icons.list),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Container(
              height: 100,
              width: double.infinity,
              color: AppColors.green,
            )),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.account_box),
              title: Text("Phone Number"),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Homer"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Gridpage(),
          checkbox(),
          CarouselSlideName(),
          Local(),
          ListNew()
        ],
      ),
    );
  }
}
