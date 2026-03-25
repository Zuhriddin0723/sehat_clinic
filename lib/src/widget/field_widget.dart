import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sehat_clinic/src/app_theme/appStyles/app_styles.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';
// O'zingizning importlaringizni joyida qoldiring

class FieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? iconPath;

  const FieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      width: 343.w,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 14.sp),
        decoration: InputDecoration(
          isCollapsed: true,
          hintText: hintText,
          hintStyle: AppStyles.regular14(AppColors.grey),
          prefixIcon: iconPath != null
              ? Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: SvgPicture.asset(
              iconPath!,
              height: 20.h,
              width: 20.w,
            ),
          )
              : null,
          contentPadding: iconPath == null
              ? EdgeInsets.symmetric(horizontal: 20.w)
              : EdgeInsets.zero,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}