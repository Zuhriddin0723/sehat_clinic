import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // O'lchamlar uchun
import 'package:gap/gap.dart';

import '../app_theme/appStyles/app_styles.dart';
import '../app_theme/app_colors/app_colors.dart';

class FieldWidgetWithNumber extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;

  const FieldWidgetWithNumber({
    super.key,
    required this.labelText,
    required this.controller,
  });

  @override
  State<FieldWidgetWithNumber> createState() => _FieldWidgetWithNumberState();
}

class _FieldWidgetWithNumberState extends State<FieldWidgetWithNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 326.w,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 18.w),
        child: TextField(
          controller: widget.controller,
          keyboardType: TextInputType.phone,
          onTap: () {
            if (widget.controller.text.isEmpty) {
              setState(() {
                widget.controller.text = "+998 ";
              });
            }
          },
          inputFormatters: [
            LengthLimitingTextInputFormatter(17),
            PhoneNumberFormatter(),
          ],
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          style: TextStyle(fontSize: 14.sp),
          decoration: InputDecoration(
            isCollapsed: true,
            hintText: "+998 _ _  _ _ _  _ _  _ _",
            hintStyle: AppStyles.regular14(AppColors.grey),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

// Avvalgi PhoneNumberFormatter klassini ham shu yerga qo'shib qo'ying
class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text;
    if (text.isEmpty) return newValue;
    if (text.length < 5) {
      return const TextEditingValue(
        text: "+998 ",
        selection: TextSelection.collapsed(offset: 5),
      );
    }
    String suffix = text.substring(5).replaceAll(RegExp(r'\D'), '');
    String formatted = "+998 ";
    for (int i = 0; i < suffix.length; i++) {
      if (i == 2) formatted += " ";
      if (i == 5) formatted += " ";
      if (i == 7) formatted += " ";
      formatted += suffix[i];
    }
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}