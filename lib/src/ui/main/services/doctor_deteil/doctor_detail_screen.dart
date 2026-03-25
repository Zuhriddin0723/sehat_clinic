import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/app_icons/app_icons.dart';
import 'package:sehat_clinic/src/app_theme/app_images/app_images.dart';

import '../../../../app_theme/appStyles/app_styles.dart';
import '../../../../app_theme/app_colors/app_colors.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left_sharp),
        ),
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 40.w),
            child: Text("Dr. Karim Nasrov", style: AppStyles.medium16(AppColors.black)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.h),
                  child: Row(
                    children: [
                      Container(
                        height: 76.h,
                        width: 76.h,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Image.asset(
                          AppImages.dentist2,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Gap(15.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. Karim Nasrov",
                            style: AppStyles.regular16(AppColors.black),
                          ),
                          Gap(6.h),
                          Container(
                            padding: EdgeInsets.only(
                              left: 10.w,
                              right: 10.w,
                              top: 3.h,
                              bottom: 3.h,
                            ),
                            height: 26.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: Colors.grey[400],
                            ),
                            child: Text(
                              "dentist".tr(),
                              style: AppStyles.regular12(AppColors.primary)
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(10.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "doctor_information".tr(),
                        style: AppStyles.medium16(AppColors.black),
                      ),
                      Gap(10.h),
                      _doctorInformation(
                        AppIcons.cardmoon,
                        "department".tr(),
                        "stamatology".tr(),
                      ),
                      _doctorInformation(
                        AppIcons.translation,
                        "language_spoken".tr(),
                        "language_spoken_val".tr(),
                      ),
                      _doctorInformation(
                        AppIcons.cardmoon,
                        "work_experience".tr(),
                        "five_year".tr(),
                      ),
                      _doctorInformation(
                        AppIcons.user_multiple,
                        "number_of_patients_treated".tr(),
                        "hundred".tr(),
                      ),
                      Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(
                            left: 10.w,
                            right: 10.w,
                            bottom: 5.h,
                            top: 5.h,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.user, height: 20.h),
                              Gap(10.sp),
                              Text(
                                "more_about_the_doctor".tr(),
                                style: AppStyles.regular14(AppColors.grey),
                              ),
                              Spacer(),
                              SvgPicture.asset(AppIcons.chevron_down),
                            ],
                          ),
                        ),
                      ),
                      Gap(10.h),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.h),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 45.h),
                                child: SvgPicture.asset(
                                  AppIcons.time_user,
                                  height: 20.h,
                                ),
                              ),
                              Gap(10.sp),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "working_time".tr(),
                                      style: AppStyles.regular14(AppColors.grey),
                                    ),
                                    Text(
                                      "working_time_range".tr(),
                                      style: AppStyles.medium14(AppColors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(10.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(10.h),
                          Center(
                            child: Container(
                              height: 167.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Image.asset(
                                AppImages.gallery5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Gap(10.h),
                          _doctorInformation(AppIcons.hospital, "name_of_the_hospital".tr(), "sehat_clinic".tr()),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.grey[200],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.h),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 13.h),
                                    child: SvgPicture.asset(AppIcons.location),
                                  ),
                                  Gap(10.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "location".tr(),
                                        style: AppStyles.regular14(AppColors.grey),
                                      ),
                                      Text(
                                        "amir_temur_square".tr(),
                                        style: AppStyles.medium14(AppColors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Gap(10.h),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 125.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.r),
                                        topRight: Radius.circular(10.r),
                                      ),
                                    ),
                                    clipBehavior: Clip.hardEdge,
                                    child: Image.asset(
                                      AppImages.map,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Gap(10.h),
                                  Text(
                                    "mirzo_ulugbek_street".tr(),
                                    style: AppStyles.regular12(AppColors.grey),
                                  ),
                                  Gap(10.h),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(10.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        color: Colors.white,
        child: SafeArea(
          child: SizedBox(
            height: 50.h,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF001E62),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              child: Text(
                "schedule_checkup".tr(),
                style: TextStyle(fontSize: 14.sp, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _doctorInformation(String icon, String title, String subtitle) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.grey[200],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.w,
          right: 10.w,
          bottom: 5.h,
          top: 5.h,
        ),
        child: Row(
          children: [
            SvgPicture.asset(icon, height: 20.h),
            Gap(10.sp),
            Text(
              title,
              style: AppStyles.regular14(AppColors.grey),
            ),
            Spacer(),
            Text(subtitle, style: AppStyles.medium14(AppColors.black)),
          ],
        ),
      ),
    );
  }
}
