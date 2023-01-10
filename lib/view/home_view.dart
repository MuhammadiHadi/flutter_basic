import 'package:flutter/material.dart';
import 'package:flutter_basic/res/component/button.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            AppButton(
              title: "Hello ",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
