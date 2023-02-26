import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime_project_app/common/ui/res/dimen.dart';
import 'package:lime_project_app/common/ui/theme/app_color.dart';
import 'package:lime_project_app/common/ui/theme/app_style.dart';

class MainListHeader extends StatelessWidget {
  final String title;
  final Color textColor;
  const MainListHeader({Key? key, required this.title, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.image, size: Dimen.dimen_40,color: textColor,),
        SizedBox(width: Dimen.dimen_8.w,),
        Text(title, style: AppStyle.textStyle20(color: textColor, fontWeight: FontWeight.bold),)
      ],
    );
  }
}
