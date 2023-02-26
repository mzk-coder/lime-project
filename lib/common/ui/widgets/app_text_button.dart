import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import '../theme/app_style.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color textColor;
  final FontWeight fontWeight;

  const AppTextButton(
      {Key? key,
      required this.onPressed,
      required this.label,
        this.textColor = AppColor.primary,
        this.fontWeight = FontWeight.normal

      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: AppStyle.textStyle12(color: textColor, fontWeight: fontWeight),
        ));
  }
}
