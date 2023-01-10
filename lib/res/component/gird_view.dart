import 'package:flutter/cupertino.dart';
import 'package:flutter_basic/res/color/color.dart';

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
