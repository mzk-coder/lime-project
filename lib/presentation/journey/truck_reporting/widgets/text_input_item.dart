import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime_project_app/common/ui/theme/app_color.dart';
import 'package:lime_project_app/common/ui/theme/app_style.dart';

import '../../../../common/ui/res/dimen.dart';
import '../../../../common/ui/widgets/empty_text_field.dart';

class TextInputItem extends StatelessWidget {
  final String title;
  const TextInputItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimen.dimen_8.w, vertical: Dimen.dimen_2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.image, size: Dimen.dimen_16.h, color: AppColor.greyColor6),
              SizedBox(width: Dimen.dimen_4.w,),
              Text(title, style: AppStyle.textStyle14(color: AppColor.greyColor6, fontWeight: FontWeight.bold),),
            ],
          ),
          const EmptyTextField()
        ],
      ),
    );
  }
}
