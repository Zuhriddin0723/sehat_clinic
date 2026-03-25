import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:sehat_clinic/src/ui/auth/verfy/verification_screen.dart';
import '../../../app_theme/appStyles/app_styles.dart';
import '../../../app_theme/app_colors/app_colors.dart';
import '../../../widget/buton_widget.dart';
import 'package:go_router/go_router.dart';
class LoginScreen extends StatefulWidget {
  final void Function()? onTap;
  const LoginScreen({super.key, required this.onTap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    "Let’s start with your phone number",
                    style: AppStyles.semiBold20(AppColors.primaryDark),
                  ),
                  Gap(4.h),
                  Text(
                    "We will text you a code to verify your identity.",
                    style: AppStyles.regular16(AppColors.grey),
                  ),
                  Gap(24.h),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Phone number",
                        style: AppStyles.medium14(AppColors.primaryDark),
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
                    style: AppStyles.medium14(AppColors.primaryDark),
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
          Gap(16.h),
          Padding(
            padding: EdgeInsets.only(left: 28.0.w,bottom: 24.h),
            child: GestureDetector(
              onTap: widget.onTap,
              child: RichText(
                text: TextSpan(
                  style: AppStyles.regular16(AppColors.grey),
                  children: [
                    TextSpan(text: "Don’t have an account? ",
                        style: AppStyles.regular16(AppColors.primaryDark)),
                    TextSpan(
                      text: "Sign up",
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
            text: "Continue",
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>VerificationScreen()));
            },
          ),
          Gap(34.h)
        ],
      ),
    );
  }
}