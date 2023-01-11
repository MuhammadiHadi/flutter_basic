import 'package:flutter/material.dart';
import 'package:flutter_basic/res/color/color.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;

  const AppButton({Key? key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(

            //boxShadow
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                offset: Offset(4, 4), // Shadow position
              ),
            ], color: AppColors.black, borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          title.toString(),
          style: TextStyle(color: AppColors.white),
        )),
      ),
    );
  }
}
