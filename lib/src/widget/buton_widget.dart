import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_theme/appStyles/app_styles.dart';


class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final double? width;
  final double? height;
  final bool isActive; // Yangi qo'shilgan maydon

  const ButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
    this.color,
    this.width,
    this.height,
    this.isActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive ? onTap : null,
      child: AnimatedContainer(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        duration: const Duration(milliseconds: 300),
        width: width ?? 1.sw,
        height: height ?? 54.h,
        decoration: BoxDecoration(
          color: isActive
              ? (color ?? Color(0xFF001E62))
              : (color ?? Colors.grey.shade400).withOpacity(0.3),
          borderRadius: BorderRadius.circular(100.r),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: AppStyles.medium18(
            isActive ? Colors.white : Colors.white.withOpacity(0.9),
          ),
        ),
      ),
    );
  }
}