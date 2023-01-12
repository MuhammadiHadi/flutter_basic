import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Fun {
  void Snakbarshow(BuildContext context, String title, String label) {
    final snackbar = SnackBar(
      content: Text(title),
      action: SnackBarAction(
        label: label,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void ShowToast(
    BuildContext context,
    String title,
  ) {
    Fluttertoast.showToast(msg: title);
  }
}
