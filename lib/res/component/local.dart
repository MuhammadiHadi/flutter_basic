import 'package:flutter/material.dart';
import 'package:flutter_basic/res/component/language.dart';
import 'package:flutter_locales/flutter_locales.dart';

class Local extends StatefulWidget {
  @override
  _LocalState createState() => _LocalState();
}

class _LocalState extends State<Local> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: LocaleText(
            "welcome",
            style: TextStyle(fontSize: 30),
          ),
        ),
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
