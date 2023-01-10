import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      ],
    );
  }
}
