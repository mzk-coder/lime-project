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
import '../../../common/ui/widgets/switch_view.dart';
import '../../../common/ui/widgets/text_input_item.dart';


class SampleQcScreen extends StatelessWidget {
  const SampleQcScreen({Key? key}) : super(key: key);

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
                        title: 'Sample QC',
                        textColor: AppColor.primary,
                      ),

                      Expanded(child: Container(
                        color: AppColor.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: Dimen.dimen_8.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: Dimen.dimen_8.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Select Truck", style: AppStyle.textStyle16(color: AppColor.black, fontWeight: FontWeight.bold),),
                                    SizedBox(width: Dimen.dimen_16.w,),
                                    DropDown<String>(
                                      label: '', list: const ["trucks"], onItemSelect: (value) {  },
                                      width: 150,
                                      filledColor: AppColor.greyColor4,
                                    ),
                                    PrimaryButton(
                                      label: "OK",
                                      onPressed: () {},
                                      buttonBgColor: AppColor.greyColor6,
                                      fontWeight: FontWeight.normal,
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: Dimen.dimen_8.h,),
                              Container(
                                width: double.infinity,
                                color: AppColor.greyColor1,
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("TRUCK REPORT DETAILS"),
                                    SizedBox(width: Dimen.dimen_64.w,height: Dimen.dimen_40.h,),
                                    Text("ACTIONS")
                                  ],
                                ),
                              ),

                              ListView.builder(
                                shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder: (ctx, index){
                                return Column(
                                  children: [
                                    Container(
                                      color: AppColor.white,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: Dimen.dimen_8.w, vertical: Dimen.dimen_8.h),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Checkbox(value: false, onChanged: (b){

                                            }),

                                            Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("JHA 0901", style: AppStyle.textStyle14(color: AppColor.black, fontWeight: FontWeight.bold),),
                                                  Text("05-03-23 11:00 PM", style: AppStyle.textStyle12())
                                                ]
                                            ),

                                            PrimaryButton(
                                              label: "Sample",
                                              onPressed: () {},
                                              fontWeight: FontWeight.normal,
                                              buttonBgColor: AppColor.filledBlue,
                                              textColor: AppColor.greyColor4,
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                    const Divider()
                                  ],
                                );
                              })



                            ],
                          ),
                        ),
                      )),

                      SizedBox(
                        height: Dimen.dimen_16.h,
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryButton(
                            label: "Home",
                            onPressed: () {},
                            fontWeight: FontWeight.normal,
                          ),
                          SizedBox(width: Dimen.dimen_4.w,),
                          PrimaryButton(
                            label: "Report",
                            onPressed: () {},
                            fontWeight: FontWeight.normal,
                          ),
                          SizedBox(width: Dimen.dimen_4.w,),
                          PrimaryButton(
                            label: "Report",
                            onPressed: () {},
                            fontWeight: FontWeight.normal,
                          ),
                        ],
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
