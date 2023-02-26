import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import '../theme/app_style.dart';

class TextButtonIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Widget icon;

  const TextButtonIcon(
      {Key? key,
      required this.onPressed,
      required this.label,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: onPressed,
        icon: icon,
        label: Text(
          label,
          style: AppStyle.textStyle14(color: AppColor.primary, fontWeight: FontWeight.bold),
        ));
  }
}
