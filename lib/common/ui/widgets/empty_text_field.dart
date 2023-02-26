import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime_project_app/common/ui/res/dimen.dart';
import 'package:lime_project_app/common/ui/theme/app_color.dart';
import 'package:lime_project_app/common/ui/theme/app_style.dart';

class EmptyTextField extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Color filledColor;
  const EmptyTextField({super.key, this.padding = EdgeInsets.zero, this.filledColor = AppColor.filledBlue});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimen.dimen_140,
      child: Padding(
        padding: padding,
        child: TextField(
            style: AppStyle.textStyle18(color: AppColor.primary),
            decoration: InputDecoration(
                filled: true,
                fillColor: filledColor,
                //contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                contentPadding: EdgeInsets.fromLTRB(Dimen.dimen_8.w,
                    Dimen.dimen_10.h, Dimen.dimen_8.w, Dimen.dimen_10.h),
                border: InputBorder.none
            ),
        ),
      ),
    );
  }
}
