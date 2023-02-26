import 'package:flutter/material.dart';
import 'package:lime_project_app/common/ui/res/dimen.dart';
import '../theme/app_color.dart';
import '../theme/app_style.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.label,
    this.buttonBgColor = AppColor.primary,
    this.buttonBorderColor = Colors.transparent,
    required this.onPressed,
    this.height,
    this.width,
    this.edgeCircleRadius = Dimen.dimen_8,
    this.textColor =AppColor.white,
    this.fontWeight = FontWeight.w500
  }) : super(key: key);
  final double? height;
  final double? width;
  final String label;
  final Color textColor;
  final Color buttonBgColor;
  final Color buttonBorderColor;
  final VoidCallback onPressed;
  final double edgeCircleRadius;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: width,
      height: height,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(edgeCircleRadius),
      ),
      color: buttonBgColor,
      child: Text(
        label,
        style: AppStyle.textStyle14(color: textColor, fontWeight: FontWeight.w500),
      ),
      //child: LoginWithButton(),
    );
  }
}
