import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime_project_app/common/ui/res/dimen.dart';
import 'package:lime_project_app/common/ui/theme/app_color.dart';
import 'package:lime_project_app/common/ui/theme/app_style.dart';
import 'package:lime_project_app/common/ui/widgets/base_screen.dart';

import '../../../common/ui/widgets/app_primary_button.dart';
import '../../../common/ui/widgets/drop_down.dart';
import '../../../common/ui/widgets/empty_text_field.dart';
import '../main_screen/widgets/main_list_header.dart';
import 'widgets/switch_view.dart';
import 'widgets/text_input_item.dart';

class TruckReportScreen extends StatelessWidget {
  const TruckReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(Dimen.dimen_4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Amit Kumar", style: AppStyle.textStyle12(color: AppColor.black, fontWeight: FontWeight.bold),),

                  Text("Login Time 10:08 PM", style: AppStyle.textStyle12(color: AppColor.greyColor6, fontWeight: FontWeight.normal),)
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                color: AppColor.lightBlue,
                height: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimen.dimen_24.w, vertical: Dimen.dimen_16.h),
                  child: Column(
                      children: [
                        const MainListHeader(
                          title: 'Truck Reporting',
                          textColor: AppColor.primary,
                        ),
                        SizedBox(height: Dimen.dimen_8.h,),
                        const TextInputItem(
                          title: "Vehicle No",
                        ),


                        const TextInputItem(
                          title: "Invoice",
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Dimen.dimen_8.w, vertical: Dimen.dimen_2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.image, size: Dimen.dimen_16.h, color: AppColor.greyColor6),
                                  SizedBox(width: Dimen.dimen_4.w,),
                                ],
                              ),
                              DropDown<String>(
                                label: '', list: const ["Select Lime Type"], onItemSelect: (value) {  },
                                width: 280,
                              )
                            ],
                          ),
                        ),

                        const TextInputItem(
                          title: "Description",
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Dimen.dimen_8.w, vertical: Dimen.dimen_8.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.image, size: Dimen.dimen_16.h, color: AppColor.greyColor6),
                                  SizedBox(width: Dimen.dimen_4.w,),
                                  Text("Supplier", style: AppStyle.textStyle14(color: AppColor.greyColor6, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              SizedBox(
                                width: Dimen.dimen_140,
                                  child: Text("PO", style: AppStyle.textStyle14(color: AppColor.greyColor6, fontWeight: FontWeight.bold),)),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Dimen.dimen_8.w, vertical: Dimen.dimen_2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              EmptyTextField(),
                              EmptyTextField()
                            ],
                          ),
                        ),

                        const TextInputItem(
                          title: "Driver Name",
                        ),


                        const TextInputItem(
                          title: "Mobile No",
                        ),

                        const TextInputItem(
                          title: "No Of Bags",
                        ),




                        const TextInputItem(
                          title: "Total Weight",
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Dimen.dimen_8.w, vertical: Dimen.dimen_2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.image, size: Dimen.dimen_16.h, color: AppColor.greyColor6),
                                  SizedBox(width: Dimen.dimen_4.w,),
                                  Text("Paper OK?", style: AppStyle.textStyle14(color: AppColor.greyColor6, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              const SwitchView()
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Dimen.dimen_16.h,
                        ),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              PrimaryButton(
                                label: "Home",
                                onPressed: () {},
                                fontWeight: FontWeight.normal,
                              ),
                              SizedBox(width: Dimen.dimen_4.w,),
                              PrimaryButton(
                                label: "Back",
                                onPressed: () {},
                                fontWeight: FontWeight.normal,
                              ),
                              SizedBox(width: Dimen.dimen_4.w,),
                              PrimaryButton(
                                label: "Next",
                                onPressed: () {},
                                buttonBgColor: AppColor.greyColor6,
                                fontWeight: FontWeight.normal,
                              ),
                              SizedBox(width: Dimen.dimen_4.w,),
                              PrimaryButton(
                                label: "Report",
                                onPressed: () {},
                                buttonBgColor: AppColor.greyColor6,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                        )


                      ],
                  ),
                ),

    ),
            ),
          ],
        ));
  }
}
