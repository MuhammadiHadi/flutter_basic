import 'package:flutter/material.dart';
import 'package:flutter_basic/funcation/fun.dart';
import 'package:flutter_basic/res/color/color.dart';

class Gridpage extends StatelessWidget {
  Gridpage({Key? key}) : super(key: key);

  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Form(
          key: _globalKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Text Form",
                style: TextStyle(fontSize: 23),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                    decoration: InputDecoration(hintText: "Enter Value"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter value";
                      }
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                  minWidth: 200,
                  color: AppColors.black,
                  child: Text(
                    "send",
                    style: TextStyle(color: AppColors.white),
                  ),
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {}
                    ;
                  })
            ],
          ),
        )
      ],
    );
  }
}
