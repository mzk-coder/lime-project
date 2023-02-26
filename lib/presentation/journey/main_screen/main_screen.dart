import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime_project_app/common/ui/res/dimen.dart';
import 'package:lime_project_app/common/ui/theme/app_color.dart';
import 'package:lime_project_app/common/ui/widgets/app_text_button.dart';
import 'package:lime_project_app/common/ui/widgets/base_screen.dart';
import 'package:lime_project_app/presentation/journey/main_screen/widgets/header.dart';

import '../../../common/constants/app_constants.dart';
import 'widgets/main_list_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = AppConstants.homeMenu;

    return BaseScreen(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const MainHeader(),
                    ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: list.length,
                        itemBuilder: (ctx, index) {
                          return MainListView(
                            homeMenu: list[index],
                          );
                        })
                  ],
                ),
              ),
            ),
            Container(
              color: AppColor.primary,
              height: Dimen.dimen_48.h,
              width: double.infinity,
              alignment: Alignment.center,
              child: AppTextButton(
                label: "Back",
                textColor: AppColor.white, onPressed: () {  },
              ),
            )
          ],
        ));
  }
}
