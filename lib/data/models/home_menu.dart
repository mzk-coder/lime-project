import 'dart:ui';

import 'home_menu_item.dart';

class HomeMenu{
  String title;
  Color textColor;
  Color backgroundColor;
  List<HomeMenuItem> menuList;
  HomeMenu({required this.title, required this.textColor,required this.backgroundColor, required this.menuList});
}