import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime_project_app/common/ui/res/dimen.dart';
import 'package:lime_project_app/common/ui/theme/app_color.dart';
import 'package:lime_project_app/common/ui/theme/app_style.dart';

import '../../../../common/navigation/route_list.dart';
import '../../../../data/models/home_menu_item.dart';

class MainListItem extends StatelessWidget {

  final HomeMenuItem menuItem;


  const MainListItem({Key? key, required this.menuItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(menuItem.id==1){
          Navigator.pushReplacementNamed(context, RouteList.truckReportingScreen);
        }
      },
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.image, size: Dimen.dimen_24, color: menuItem.textColor,),
                  SizedBox(width: Dimen.dimen_4.w,),
                  Text(menuItem.title, style: AppStyle.textStyle14(color: menuItem.textColor, fontWeight: FontWeight.normal),),
                ],
              ),
              const Icon(Icons.keyboard_arrow_right, size: Dimen.dimen_24,),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimen.dimen_4.w),
            child: Divider(height: Dimen.dimen_16.h, thickness: Dimen.dimen_1,),
          )
        ],
      ),
    );
  }
}
