import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/ui/auth/verfy/verification_screen.dart';
import 'package:sehat_clinic/src/widget/field_widget.dart';

import '../../../widget/buton_widget.dart';

class RegisterScreen extends StatelessWidget {
  final void Function()? onTap;
  const RegisterScreen({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(60.h),
            Text(
              "login_title".tr(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            Gap(13.h),
            Text(
              "login_subtitle".tr(),
              style: TextStyle(fontSize: 15.sp, color: Colors.grey),
            ),
            Gap(22.h),
            Text("phone_number".tr(), style: TextStyle(fontSize: 17.sp)),
            Gap(16.h),
            FieldWidget(hintText: "phone_number_hint".tr(), controller: _controller),
            Gap(450.h),
            Row(
              children: [
                Text("have_an_account".tr(), style: TextStyle(fontSize: 12.sp)),
                Gap(2.w),
                InkWell(
                    onTap: onTap,
                    child: Text("login".tr(),style: TextStyle(fontSize: 12.sp,color: Colors.blue),))
              ],
            ),
            Gap(20.h),
            ButtonWidget(text: "continue".tr(), onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=> VerificationScreen()));
            },),
            Gap(20.h),
          ],
        ),
      ),
    );
  }
}

TextEditingController _controller = TextEditingController();
