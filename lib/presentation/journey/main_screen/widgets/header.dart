import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime_project_app/common/ui/theme/app_color.dart';
import 'package:lime_project_app/common/ui/theme/app_style.dart';

import '../../../../common/constants/drawables.dart';
import '../../../../common/ui/res/dimen.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Dimen.dimen_2.h,
      shadowColor: AppColor.greyColor1,
      color: AppColor.lightBlue,
      child: Padding(
        padding: EdgeInsets.all(Dimen.dimen_8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: Dimen.dimen_40,
                  child: Image.asset(Drawables.avatar),
                ),
                SizedBox(width: Dimen.dimen_8.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Amit Kumar", style: AppStyle.textStyle16(color: AppColor.black, fontWeight: FontWeight.bold),),
                    Text("Warehouse Supervisor", style: AppStyle.textStyle12(color: AppColor.black, fontWeight: FontWeight.normal),),
                  ],
                ),
              ],
            ),
            const Icon(Icons.image, size: Dimen.dimen_48,)
          ],
        ),
      ),
    );
  }
}
