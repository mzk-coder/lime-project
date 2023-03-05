
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/dimen.dart';
import '../theme/app_color.dart';
import '../theme/app_style.dart';

typedef OnItemSelect<T> = void Function(T value);

class DropDown<T> extends StatefulWidget {

  final String label;
  final List<T> list;
  final OnItemSelect<T?> onItemSelect;
  final double? marginTop;
  final double? marginBottom;
  final double width;
  final Color filledColor;

  const DropDown({
    Key? key,
    required this.label,
    required this.list,
    required this.onItemSelect,
    this.marginTop,
    this.marginBottom,
    this.width = Dimen.dimen_120,
    this.filledColor = AppColor.filledBlue
  }) : super(key: key);

  @override
  State<DropDown<T>> createState() => _DropDownState<T>();
}

class _DropDownState<T> extends State<DropDown<T>> {

  T? selectedValue;
  bool isFocus = false;

  final focusNode = FocusNode();


  @override
  void initState() {
    super.initState();
    selectedValue = widget.list.first;
    focusNode.addListener(() {
      setState(() {
        isFocus = focusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {



    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: (widget.marginTop ?? Dimen.dimen_0).h),
        // Text(
        //   widget.label.toUpperCase(),
        //   style: AppStyle.textStyle12(color: AppColor.greyColor6),
        // ),
        //SizedBox(height: Dimen.dimen_4.h),
        Container(
          color: AppColor.filledBlue,
          width: widget.width,
          child: DropdownButton<T?>(
            value: selectedValue,
            style:AppStyle.textStyleMedium14(),
            underline: Container(
              height: 0.8.h,
              color: isFocus?AppColor.primary:AppColor.greyColor7,
            ),
            onChanged: (item){
              setState(() {
                selectedValue = item;
              });
              widget.onItemSelect(item);
            },
            items: widget.list.map<DropdownMenuItem<T>>(
                    (T value) {
                  return DropdownMenuItem<T>(
                    value: value,
                    child: Text(value.toString(), style: AppStyle.textStyle14(color: AppColor.greyColor7),),
                  );
                }).toList(),
            isExpanded: true,
            focusNode: focusNode,
          ),
        ),
        SizedBox(height: (widget.marginBottom ?? Dimen.dimen_0).h),
      ],

    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }
}

