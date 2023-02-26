import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/dimen.dart';


typedef OnPasswordToggle = void Function(bool isVisible);

class SuffixIcon extends StatefulWidget {
  final Widget? suffixIcon;
  final VoidCallback? onSuffixIconClick;
  final OnPasswordToggle? onPasswordToggle;

  const SuffixIcon({Key? key, this.suffixIcon, this.onSuffixIconClick, this.onPasswordToggle})
      : super(key: key);

  @override
  State<SuffixIcon> createState() => _SuffixIconState();
}

class _SuffixIconState extends State<SuffixIcon> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Dimen.dimen_24,
        width: Dimen.dimen_32,
        child: IconButton(
          onPressed: widget.onSuffixIconClick ??
              () {
                setState(() {
                  passwordVisible = !passwordVisible;
                  if(widget.onPasswordToggle!=null){
                    widget.onPasswordToggle!(passwordVisible);
                  }
                });
              },
          iconSize: 18,
          padding: EdgeInsets.only(right: Dimen.dimen_10.w),
          splashRadius: 15,
          icon: widget.suffixIcon != null
              ? widget.suffixIcon!
              : PasswordIcon(isVisible: passwordVisible),
        ));
  }
}

class PasswordIcon extends StatelessWidget {
  final bool isVisible;

  const PasswordIcon({Key? key, required this.isVisible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isVisible
        ? const Icon(Icons.visibility_off)
        : const Icon(Icons.visibility);
  }
}
