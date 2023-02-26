import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/dimen.dart';
import '../theme/app_color.dart';
import '../theme/app_style.dart';
import 'suffix_icon.dart';

class AppTextFieldForm extends StatefulWidget {
  final String label;
  final String? placeHolder;
  final TextEditingController? editingController;
  final TextInputType textInputType;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;
  final String? iconName;
  final TextInputAction textInputAction;
  final bool isEditable;
  final String? prefixText;
  final int? maxLength;
  final String? errorText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final VoidCallback? onSuffixIconClick;
  final double? marginTop;
  final double? marginBottom;
  final String? Function(String?)? validation;

  const AppTextFieldForm(
      {Key? key,
      required this.label,
      this.editingController,
      this.textInputType = TextInputType.text,
      this.obscureText = false,
      this.enableSuggestions = true,
      this.autocorrect = true,
      this.iconName,
      required this.textInputAction,
      this.isEditable = true,
      this.prefixText,
        this.prefixIcon,
      this.maxLength,
      this.errorText,
      this.suffixIcon,
      this.onSuffixIconClick,
      this.marginTop,
      this.marginBottom,
      this.validation,
      Null Function()? onTap,
      this.placeHolder})
      : super(key: key);

  @override
  State<AppTextFieldForm> createState() => _AppTextFieldFormState();
}

class _AppTextFieldFormState extends State<AppTextFieldForm> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: (widget.marginTop ?? Dimen.dimen_0).h),
        TextFormField(
          cursorColor: AppColor.accent,
          controller: widget.editingController,
          enabled: widget.isEditable,
          obscureText: passwordVisible,
          autocorrect: widget.autocorrect,
          enableSuggestions: widget.enableSuggestions,
          //validator: widget.validation,
          validator: (value){
            if(value?.isEmpty==true) {
              return widget.placeHolder;
            }
            return null;
          },
          style: AppStyle.textStyle14(color: AppColor.greyColor6),
          textAlign: TextAlign.left,
          //textAlignVertical: TextAlignVertical.center,
          keyboardType: widget.textInputType,
          textInputAction: widget.textInputAction,
          maxLength: widget.maxLength,
          decoration: InputDecoration(
            hintText: widget.placeHolder,
            fillColor: AppColor.greyColor1,
              filled: true,
              suffixIconConstraints: const BoxConstraints(minHeight: 1),
              contentPadding: EdgeInsets.only(bottom: Dimen.dimen_2.h),
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.obscureText || (widget.suffixIcon != null)
                  ? SuffixIcon(
                      suffixIcon: widget.suffixIcon,
                      onSuffixIconClick: widget.onSuffixIconClick,
                      onPasswordToggle:widget.obscureText? (isVisible) {
                        setState(() {
                          passwordVisible = isVisible;
                        });
                      }:null,
                    )
                  : null,
              isDense: false,
              errorText: widget.errorText,
              errorStyle:
                  AppStyle.textStyle10(color: AppColor.accent),
            border: InputBorder.none,


          ),
          cursorHeight: Dimen.dimen_16.h,


        ),
        SizedBox(height: (widget.marginBottom ?? Dimen.dimen_0).h),
      ],
    );
  }
}
