import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../../app_theme/appStyles/app_styles.dart';
import '../../../../app_theme/app_colors/app_colors.dart';
import '../../../../app_theme/app_icons/app_icons.dart';
import '../../../../app_theme/app_images/app_images.dart';
import '../doctor_deteil/doctor_detail_screen.dart';

class EcuipmentDetail extends StatelessWidget {
  const EcuipmentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left_sharp),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 35),
          child: Center(
            child: Text("X-ray", style: TextStyle(fontSize: 16.sp)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.h),
          child: Column(
            children: [
              /// img
              Container(
                height: 197.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(AppImages.xray, fit: BoxFit.cover),
              ),
              Gap(20.h),
              /// x ray information
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "xray_informations".tr(),
                        style: AppStyles.medium16(AppColors.black),
                      ),
                      Gap(10.h),
                      Container(
                        width: 321.w,
                        height: 116.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "x_ray_informations".tr(),
                            style: AppStyles.regular12(AppColors.grey),
                          ),
                        ),
                      ),
                      Gap(10.h),
                      Container(
                        width: 321.w,
                        height: 84.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey[200]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "working_time".tr(),
                                style: AppStyles.medium14(AppColors.black),
                              ),
                              Text(
                                "From Monday to Saturday from 08:30 to 17:00",
                                style: AppStyles.regular14(AppColors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(20.h),
              /// patients
              Container(
                height: 214.h,
                width: 345.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "why_patients".tr(),
                        style: AppStyles.medium16(AppColors.black),
                      ),
                      Gap(10.h),
                      Row(
                        children: [
                          _container(
                            AppIcons.clutch,
                            "advanced_technology".tr(),
                            "precision_and_safety".tr(),
                          ),
                          Gap(12.w),
                          _container(
                            AppIcons.person,
                            "personalized_care".tr(),
                            "plans_for_your_condition".tr(),
                          ),
                          Gap(12.w),
                          _container(
                            AppIcons.like,
                            "minimal_discomfort".tr(),
                            "comfort_first_methods".tr(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(20.h),
              /// gallery
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("treatment_gallery".tr(),style: AppStyles.medium16(AppColors.black)),
                      Gap(10.h),
                      Row(
                        children: [
                          Container(
                            height: 154.h,
                            width: 154.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset(
                              AppImages.gallery1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Gap(10.w),
                          Container(
                            height: 154.h,
                            width: 154.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset(
                              AppImages.gallery2,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      Gap(15.h),
                      Container(
                        height: 321.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(
                          AppImages.gallery4,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Gap(15.h),
                      Row(
                        children: [
                          Container(
                            height: 154.h,
                            width: 154.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset(
                              AppImages.gallery3,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Gap(10.w),
                          Container(
                            height: 154.h,
                            width: 154.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset(
                              AppImages.gallery6,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(15.h),
              // Location
              Container(
                width: 343.w,
                height: 524.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                ),
                clipBehavior: Clip.hardEdge,
                child: Padding(
                  padding: EdgeInsets.all(10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("location".tr(), style: AppStyles.medium16(AppColors.black)),
                      Gap(10.h),
                      Container(
                        height: 167.h,
                        width: 319.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(
                          AppImages.gallery5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Gap(10.h),
                      Container(
                        width: 319.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.h),
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.hospital),
                              Gap(10.w),
                              Text(
                                "name_of_the_hospital".tr(),
                                style: AppStyles.regular14(AppColors.grey)
                              ),
                              Spacer(),
                              Text(
                                "Sehat clinic",
                                style: AppStyles.medium14(AppColors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(10.h),
                      Container(
                        width: 319.w,
                        height: 64.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.h),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 15.h),
                                child: SvgPicture.asset(AppIcons.location),
                              ),
                              Gap(10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "location".tr(),
                                    style: AppStyles.regular14(AppColors.grey)
                                  ),
                                  Text(
                                    "Amir Temur Square, Toshkent, Uzbekistan",
                                    style: AppStyles.medium14(AppColors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(10.h),
                      Container(
                        width: 319.w,
                        height: 163.h,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 125.h,
                              width: 319.w,
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
                              "Mirzo Ulugbek Durmon Street 20-A",
                              style: AppStyles.regular12(AppColors.grey)
                            ),
                            Gap(10.h),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(30.h),
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
                style: TextStyle(fontSize: 12.sp, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _container(String img, String title, String subtitle) {
    return Container(
      width: 97.w,
      height: 152.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(width: 1.w, color: Colors.black12),
      ),
      child: Column(
        children: [
          Gap(8.h),
          Image.asset(img),
          Gap(5.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppStyles.medium14(AppColors.black),
          ),
          Gap(5.h),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppStyles.regular12(AppColors.grey),
          ),
        ],
      ),
    );
  }}
