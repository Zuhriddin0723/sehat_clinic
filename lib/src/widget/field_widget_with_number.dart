import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // O'lchamlar uchun
import 'package:gap/gap.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. Teppa qismidagi "Phone number *" yozuvi
        RichText(
          text: TextSpan(
            text: widget.labelText,
            style: TextStyle(
              color: const Color(0xFF001E62), // To'q ko'k rang
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            children: const [
              TextSpan(
                text: ' *',
                style: TextStyle(color: Colors.red), // Qizil yulduzcha
              ),
            ],
          ),
        ),

        Gap(8.h), // Yozuv va TextField orasidagi masofa

        // 2. TextField qismi
        TextField(
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
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.black,
            letterSpacing: 1.1, // Raqamlar orasi biroz ochiq bo'lishi uchun
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),

            // Doimiy (oddiy) holatdagi border
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.r), // Juda yumaloq burchaklar
              borderSide: BorderSide(color: Colors.blue.shade100, width: 1),
            ),

            // Bosilgandagi (Fokus) holatdagi border
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.r),
              borderSide: const BorderSide(color: Color(0xFF001E62), width: 1.5),
            ),

            hintText: "+998 90 123 45 67",
            hintStyle: TextStyle(color: Colors.grey.shade400),
          ),
        ),
      ],
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