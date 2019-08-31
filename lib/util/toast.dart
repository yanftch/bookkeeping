import 'package:fluttertoast/fluttertoast.dart';


// todo 将 FlutterToast 替换为原生的 Toast

class T {
  static void show(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIos: 2,
    );
  }
}
