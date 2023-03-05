import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime_project_app/common/ui/res/dimen.dart';
import 'package:lime_project_app/common/ui/theme/app_color.dart';
import 'package:lime_project_app/common/ui/widgets/app_text_button.dart';

enum SwitchState{on, off}

class SwitchView extends StatefulWidget {
  const SwitchView({Key? key}) : super(key: key);

  @override
  State<SwitchView> createState() => _SwitchViewState();
}

class _SwitchViewState extends State<SwitchView> {

  var onTextColor = AppColor.white;
  var onBackgroundColor = AppColor.primary;

  var offTextColor = AppColor.primary;
  var offBackgroundColor = AppColor.white;

  var isActive = SwitchState.off;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimen.dimen_100.w,
      color: AppColor.primary,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimen.dimen_1.h, vertical: Dimen.dimen_2.h),
        child: Row(
          children: [
            Container(
              width: Dimen.dimen_48.w,
              color: onBackgroundColor,
              child: AppTextButton(
                onPressed: (){
                  setState(() {
                    isActive = SwitchState.on;
                    offTextColor = AppColor.white;
                    onTextColor = AppColor.primary;

                    offBackgroundColor = AppColor.primary;
                    onBackgroundColor = AppColor.white;
                  });
                },
                label: "Yes",
                textColor: onTextColor
              ),
            ),
            Container(
              width: Dimen.dimen_48.w,
              color: offBackgroundColor,
              child: AppTextButton(
                onPressed: (){
                  setState(() {
                    isActive = SwitchState.off;

                    offTextColor = AppColor.primary;
                    onTextColor = AppColor.white;

                    offBackgroundColor = AppColor.white;
                    onBackgroundColor = AppColor.primary;

                  });
                },
                label: "No",
                textColor: offTextColor
              ),
            )
          ],
        ),
      ),
    );
  }
}
