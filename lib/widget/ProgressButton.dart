import 'dart:async';

import 'package:flutter/material.dart';

/// 默认背景色
const default_color = Colors.orange;

/// 完成回调
typedef void OnFinished(String string);

/// 自带 loading 的 button
class ProgressButton extends StatefulWidget {
  ProgressButton(
      {Key key,
      @required this.btnText,
      this.color,
      this.textStyle,
      this.onFinished})
      : super(key: key);

  final String btnText;
  final Color color;
  final TextStyle textStyle;
  final OnFinished onFinished;

  @override
  _ProgressButtonState createState() => _ProgressButtonState();
}

class _ProgressButtonState extends State<ProgressButton> {
  var _state = 0;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: widget.color ?? default_color,
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: _setUpChild(),
      onPressed: () {
        setState(() {
          if (_state == 0) {
            animateProgress();
          } else {
            return;
          }
        });
      },
    );
  }

  Widget _setUpChild() {
    if (_state == 0) {
      return Text(
        widget.btnText,
        style: widget.textStyle,
      );
    } else if (_state == 1) {
      return SizedBox(
        width: 16,
        height: 16,
        child: CircularProgressIndicator(strokeWidth: 2.0),
      );
    } else {
      return null;
    }
  }

  void animateProgress() {
    setState(() {
      _state = 1;
    });
    setState(() {
      Timer(Duration(milliseconds: 3000), () {
        setState(() {
          _state = 0;
        });
        if (widget.onFinished != null) {
          widget.onFinished("finished...");
        }
      });
    });
  }
}
