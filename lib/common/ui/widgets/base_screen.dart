import 'package:flutter/material.dart';
import 'package:lime_project_app/common/ui/res/dimen.dart';

class BaseScreen extends StatelessWidget {
  final Widget? child;
  final EdgeInsetsGeometry padding;

  const BaseScreen(
      {Key? key,
      required this.child,
      this.padding = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
          child: Padding(
            padding: padding,
            child: child,
          ),
        )
    );
  }
}
