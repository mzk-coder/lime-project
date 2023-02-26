import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime_project_app/data/models/home_menu.dart';
import 'package:lime_project_app/presentation/journey/main_screen/widgets/main_list_item.dart';

import '../../../../common/ui/res/dimen.dart';
import '../../../../common/ui/theme/app_color.dart';
import 'main_list_header.dart';

class MainListView extends StatelessWidget {
  final HomeMenu homeMenu;

  const MainListView({Key? key, required this.homeMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: Dimen.dimen_2.h,
        shadowColor: AppColor.greyColor1,
        color: homeMenu.backgroundColor,
        child: Padding(
        padding: EdgeInsets.all(Dimen.dimen_8.h),
          child: Column(
            children: [
              MainListHeader(
                title: homeMenu.title,
                textColor: homeMenu.textColor,
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimen.dimen_4.w, top: Dimen.dimen_8),
                child: Column(
                  children: homeMenu.menuList.map((e) =>
                      MainListItem(menuItem: e,)
                  ).toList(),
                ),
              )

            ],
          ),
        )
    );
  }
}
