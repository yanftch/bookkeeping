import 'package:flutter/material.dart';

class DialogUtils {
  
  static void showCommonDialog(
      BuildContext context,
      String title,
      String content,
      String leftBtn,
      String rightBtn,
      bool barrierDismissible,
      Function onPositiveEvent) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (_) {
        return new AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: Text(content),
          ),
          actions: <Widget>[
            new FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(leftBtn),
            ),
            new FlatButton(
              onPressed: () {
                Navigator.pop(context);
                if (onPositiveEvent != null) {
                  onPositiveEvent("click right button...");
                }
              },
              child: Text(rightBtn),
            )
          ],
        );
      },
    );
  }

  // static void showDialogs(BuildContext context, String title, String content,
  //     String leftBtn, String rightBtn, bool barrierDismissible) {
  //   showCommonDialog(
  //       context, title, content, leftBtn, rightBtn, barrierDismissible);
  // }
}
