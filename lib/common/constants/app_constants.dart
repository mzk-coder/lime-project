import 'package:lime_project_app/common/ui/theme/app_color.dart';
import 'package:lime_project_app/data/models/home_menu_item.dart';

import '../../data/models/home_menu.dart';

class AppConstants {
  AppConstants._();

  static List<HomeMenu> homeMenu = [
    HomeMenu(
        title: "Inbound",
        textColor: AppColor.primary,
        backgroundColor: AppColor.lightBlue,
        menuList: [
          HomeMenuItem(id: 1, title: "Truck Reporting", textColor: AppColor.primary),
          HomeMenuItem(id: 2, title: "Sample Collection", textColor: AppColor.primary),
          HomeMenuItem(id: 3, title: "Bag Internal Transfer", textColor: AppColor.primary)
        ]
    ),
    HomeMenu(
        title: "Goods Review",
        textColor: AppColor.accent,
        backgroundColor: AppColor.lightGray,
        menuList: [
          HomeMenuItem(id: 4, title: "Confirm GRN", textColor: AppColor.greyColor7),
          HomeMenuItem(id: 5, title: "Put-Aways", textColor: AppColor.greyColor7),

        ]
    ),
    HomeMenu(
        title: "Outbound",
        textColor: AppColor.greyColor7,
        backgroundColor: AppColor.lightBlue,
        menuList: [
          HomeMenuItem(id: 6, title: "Sample Dispatch", textColor: AppColor.primary),
          HomeMenuItem(id: 7, title: "Picking & Loading", textColor: AppColor.primary),
          HomeMenuItem(id: 8, title: "POD", textColor: AppColor.primary)
        ]
    )

  ];


}