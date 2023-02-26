import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class NavigationUtil {
  static Future<bool> onDeviceBack(BuildContext context) {
    Navigator.of(context).pop();
    return Future.value(true);
  }

  static Future<bool> closeApp() {
    SystemNavigator.pop();
    return Future.value(true);
  }
}