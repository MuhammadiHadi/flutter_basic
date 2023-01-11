import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

class Local extends StatefulWidget {
  @override
  _LocalState createState() => _LocalState();
}

class _LocalState extends State<Local> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: LocaleText(
                "welcome",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
              onTap: () {
                setState(() {
                  visible = !visible;
                });
              },
              child: Icon(Icons.abc_sharp)),
          Visibility(
            visible: visible,
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.green,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[700],
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: ((context) {
                return AlertDialog(
                  content: Column(
                    children: [
                      ListTile(
                        title: Text("English"),
                        onTap: () => LocaleNotifier.of(context)!.change('en'),
                      ),
                      ListTile(
                        title: Text("Urdu"),
                        onTap: () => LocaleNotifier.of(context)!.change('fa'),
                      ),
                    ],
                  ),
                );
              }));
        },
      ),
    );
  }
}
