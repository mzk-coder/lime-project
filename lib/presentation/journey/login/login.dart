import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime_project_app/common/navigation/route_list.dart';
import 'package:lime_project_app/common/ui/res/dimen.dart';
import 'package:lime_project_app/common/ui/theme/app_color.dart';
import 'package:lime_project_app/common/ui/theme/app_style.dart';
import 'package:lime_project_app/common/ui/widgets/app_text_button.dart';
import '../../../common/ui/widgets/app_primary_button.dart';
import '../../../common/ui/widgets/base_screen.dart';
import '../../../common/ui/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      padding: EdgeInsets.symmetric(
          horizontal: Dimen.dimen_24.w, vertical: Dimen.dimen_16.h),
      child: Column(
        children: [
          SizedBox(
            height: Dimen.dimen_40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello",
                      style: AppStyle.textStyle26(
                          color: AppColor.black, fontWeight: FontWeight.bold)),
                  Text("Welcome Back",
                      style: AppStyle.textStyle16(
                          color: AppColor.greyColor4,
                          fontWeight: FontWeight.normal))
                ],
              ),
              
              const Icon(Icons.image, size: Dimen.dimen_60,)
            ],
          ),
          SizedBox(
            height: Dimen.dimen_24.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CustomTextField(
                label: "Email",
              ),
              const CustomTextField(
                label: "Password",
              ),
              AppTextButton(onPressed: () {}, label: "Forgot Password?")
            ],
          ),
          PrimaryButton(
            label: "Sign In",
            onPressed: () {
              Navigator.pushReplacementNamed(context, RouteList.mainScreen);
            },
            width: double.infinity,
          ),
          SizedBox(
            height: Dimen.dimen_16.h,
          ),
          Text(
            "OWM LOGISTICS",
            style: AppStyle.textStyle12(color: AppColor.greyColor4),
          )
        ],
      ),
    );
  }
}
