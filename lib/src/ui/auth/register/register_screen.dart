import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart'; // 1. Import
import 'package:sehat_clinic/src/ui/auth/register/accaunt/account_screen.dart';
import 'package:sehat_clinic/src/ui/auth/verfy/verification_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../app_theme/appStyles/app_styles.dart';
import '../../../app_theme/app_colors/app_colors.dart';
import '../../../widget/buton_widget.dart';

class RegisterScreen extends StatefulWidget {
  final void Function()? onTap;
  const RegisterScreen({super.key,required this.onTap});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController controllerPhone = TextEditingController();
  bool isFull = false;
  var maskFormatter = MaskTextInputFormatter(
    mask: '+998 ## ### ## ##',
    filter: { "#": RegExp(r'[0-9]') },
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade50,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "login_title".tr(),
                    style: AppStyles.medium20(AppColors.black),
                  ),
                  Gap(4.h),
                  Text(
                    "login_subtitle".tr(),
                    style: AppStyles.regular16(AppColors.grey),
                  ),
                  Gap(24.h),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "phone_number".tr(),
                        style: AppStyles.medium14(AppColors.black),
                      ),
                      TextSpan(
                        text: " *",
                        style: AppStyles.medium14(AppColors.error),
                      ),
                    ]),
                  ),
                  Gap(8.h),
                  TextField(
                    controller: controllerPhone,
                    inputFormatters: [maskFormatter], // 3. Maskani ulash
                    keyboardType: TextInputType.phone,
                    onChanged: (val) {
                      setState(() {
                        isFull = val.length == 17;
                      });
                    },
                    style: AppStyles.medium14(AppColors.black),
                    decoration: InputDecoration(
                      hintText: "+998 _ _  _ _ _  _ _  _ _",
                      hintStyle: AppStyles.regular16(AppColors.grey.withOpacity(0.5)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                      filled: true,
                      fillColor: Colors.white,
                      // Borderlar dizayni
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.r),
                        borderSide: BorderSide(color: Color(0xffE2E8F0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.r),
                        borderSide: BorderSide(color: AppColors.primary, width: 1.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(16.h), // Tugma va matn orasidagi masofa
          Padding(
            padding: EdgeInsets.only(left: 28.0.w,bottom: 24.h),
            child: GestureDetector(
              onTap: widget.onTap,
              child: RichText(
                text: TextSpan(
                  style: AppStyles.regular16(AppColors.grey),
                  children: [
                    TextSpan(text: "have_an_account".tr(),
                        style: AppStyles.regular16(AppColors.black)),
                    TextSpan(
                      text: "login".tr(),
                      style: AppStyles.medium14(AppColors.primary).copyWith(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ButtonWidget(
            isActive: isFull,
            text: "continue".tr(),
            onTap: () async{
              final SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setBool('register', true);
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>VerificationScreen()));
            },
          ),
          Gap(34.h)
        ],
      ),
    );
  }
}