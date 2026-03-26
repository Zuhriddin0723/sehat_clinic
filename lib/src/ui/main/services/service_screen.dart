import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/appStyles/app_styles.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';
import 'package:sehat_clinic/src/app_theme/app_icons/app_icons.dart';
import 'package:sehat_clinic/src/ui/main/services/service_deteil/service_deteil_screen.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Text("services".tr(), style: TextStyle(fontSize: 16.sp)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            children: [
              Row(
                children: [
                  _createServices("cardiology".tr(), AppIcons.heart,48,48),
                  Gap(10.w),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => ServiceDetailScreen(),
                        ),
                      );
                    },
                    child: _createServices("stamatology".tr(), AppIcons.teeth,48,48),
                  ),
                ],
              ),
              Gap(15.sp),
              Row(
                children: [
                  _createServices("neurology".tr(), AppIcons.brain,48,48),
                  Gap(10.w),
                  _createServices("ophthalmology".tr(), AppIcons.eye,48,48),
                ],
              ),
              Gap(15.sp),
              Row(
                children: [
                  _createServices("laboratory".tr(), AppIcons.bottle,55,55),
                  Gap(10.w),
                  _createServices("dermatology".tr(), AppIcons.hair,48,48),
                ],
              ),
              Gap(15.sp),
              Row(
                children: [
                  _createServices("otolaryngology".tr(), AppIcons.ear,55,55),
                  Gap(10.w),
                  _createServices("orthopedics".tr(), AppIcons.plaster,55,55),
                ],
              ),
              Gap(10.sp),
              Row(
                children: [
                  _createServices("endocrinology".tr(), AppIcons.body,55,55),
                  Gap(10.w),
                  _createServices("pulmonology".tr(), AppIcons.lung,55,55),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createServices(String text, String img,int height,int width) {
    return Container(
      width: 160.w,
      height: 115.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text, style: AppStyles.medium16(AppColors.black),),
            Gap(5.h),
            Padding(
              padding: EdgeInsets.all(5.h),
              child: Row(
                children: [
                  Container(
                      height: height.h,
                      width: width.w,
                      child: Image.asset(img)),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: SvgPicture.asset(AppIcons.arrow_right),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
