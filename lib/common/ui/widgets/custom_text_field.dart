import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime_project_app/common/ui/res/dimen.dart';
import 'package:lime_project_app/common/ui/theme/app_color.dart';
import 'package:lime_project_app/common/ui/theme/app_style.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final EdgeInsetsGeometry padding;
  const CustomTextField({super.key, required this.label, this.padding = const EdgeInsets.only(bottom: Dimen.dimen_16)});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label??"",
            style: AppStyle.textStyle16(color: AppColor.black),
          ),
          TextField(
              style: AppStyle.textStyle18(color: AppColor.primary),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.greyColor1,
                  //contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  contentPadding: EdgeInsets.fromLTRB(Dimen.dimen_8.w,
                      Dimen.dimen_10.h, Dimen.dimen_8.w, Dimen.dimen_10.h),
                  prefixIcon: const Icon(Icons.image),
                  hintText: "Enter $label",
                  border: InputBorder.none
              )
          ),
        ],
      ),
    );
  }
}
