import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/funcation/fun.dart';
import 'package:flutter_basic/res/color/color.dart';
import 'package:flutter_basic/res/component/button.dart';
import 'package:fluttertoast/fluttertoast.dart';

class checkbox extends StatefulWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool _value = false;
  bool _valueone = false;
  bool _radio = true;
  int? _radio2;
  double slider = 0;
  bool swich = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Switch(
              activeColor: Colors.black,
              activeTrackColor: Colors.green,
              inactiveTrackColor: Colors.red,
              value: swich,
              onChanged: (vla) {
                setState(() {
                  swich = vla;
                });
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text("Selected development tool"),
        ),
        ListTile(
          title: Text("Flutter Development"),
          leading: Checkbox(
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              }),
        ),
        ListTile(
          title: Text("Java Development"),
          leading: Checkbox(
              value: _valueone,
              onChanged: (value) {
                setState(() {
                  _valueone = value!;
                });
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text("Selected one language"),
        ),
        RadioListTile(
            title: Text("Dart language"),
            value: 0,
            groupValue: _radio2,
            onChanged: (hadi) {
              setState(() {
                _radio2 = hadi;
              });
            }),
        RadioListTile(
            title: Text("Java Language"),
            value: 1,
            groupValue: _radio2,
            onChanged: (khan) {
              setState(() {
                _radio2 = khan;
              });
            }),
        Slider(
            max: 500,
            activeColor: AppColors.black,
            inactiveColor: AppColors.green,
            value: slider,
            onChanged: (val) {
              setState(() {
                slider = val;
              });
            }),
        CircularProgressIndicator(
          value: slider,
          strokeWidth: slider,
        ),
        Align(
            alignment: Alignment.center,
            child: Text(
              "${slider.toStringAsFixed(1)}",
              style: TextStyle(fontSize: 25),
            )),
        SizedBox(
          height: 30,
        ),
        AppButton(
          title: "Show Toast",
          onTap: () {
            Fun().ShowToast(context, "Hello Meer Hadi How Are you ");
          },
        )
      ],
    );
  }
}
