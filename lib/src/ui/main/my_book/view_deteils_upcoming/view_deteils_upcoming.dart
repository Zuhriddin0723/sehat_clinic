import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../app_theme/appStyles/app_styles.dart';
import '../../../../app_theme/app_colors/app_colors.dart';
import '../../../../app_theme/app_icons/app_icons.dart';
import '../../../../app_theme/app_images/app_images.dart';

class ViewDetailsUpcoming extends StatelessWidget {
  const ViewDetailsUpcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left_sharp),
        ),
        title: Text("view".tr(), style: AppStyles.medium16(AppColors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(AppImages.dentist),
                            Gap(10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dr. Noah Thomson",
                                  style: AppStyles.medium14(AppColors.black),
                                ),
                                Text(
                                  "dentist".tr(),
                                  style: AppStyles.regular12(AppColors.grey)
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Gap(10.h),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10.r),
                            bottomLeft: Radius.circular(10.r),
                          ),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Image.asset(AppIcons.calendar),
                              Gap(5.w),
                              Text("Feb.15", style: AppStyles.medium12(AppColors.black)),
                              Gap(13.w),
                              Image.asset(AppIcons.clock),
                              Gap(5.w),
                              Text("15:30",style: AppStyles.medium12(AppColors.black),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(15.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "patient_information".tr(),
                        style: AppStyles.medium16(AppColors.black),
                      ),
                      Gap(10.h),
                      _doctorInformation(
                        AppIcons.user,
                        "patient_ID".tr(),
                        "1233455".tr(),
                      ),
                      _doctorInformation(
                        AppIcons.call,
                        "call_center".tr(),
                        "+998 91 234 56 78".tr(),
                      ),
                      _doctorInformation(
                        AppIcons.cardmoon,
                        "name_of_the_hospital".tr(),
                        "sehat_clinic".tr(),
                      ),
                      Gap(10.h),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.h),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 13),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(10.h),
                          Center(
                            child: Container(
                              height: 167.h,
                              width: 331.w,
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
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 331.w,
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
                                    style: AppStyles.regular12(AppColors.grey)
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100.h,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(bottom: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  _showExitDialog(context);
                },
                child: Container(
                  height: 50.h,
                  width: 174.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppIcons.cancel,height: 25,),
                        Gap(5.w),
                        Text(
                          "cancel".tr(),
                          style: AppStyles.regular14(AppColors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Gap(8.w),
              Container(
                height: 50.h,
                width: 174.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color(0xFF001E62),
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppIcons.calendar,color: Colors.white,height: 23.h,),
                      Gap(5.w),
                      Text(
                        "reschedule".tr(),
                        style: AppStyles.regular14(AppColors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
        padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 5.h, top: 5.h),
        child: Row(
          children: [
            SvgPicture.asset(icon, height: 20.h),
            Gap(10.w),
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
  void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          insetPadding: EdgeInsets.symmetric(horizontal: 10.w),
          contentPadding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.r),
          ),
          title: Column(
            children: [
              Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // BorderRadius o'rniga doira qilish
                  color: AppColors.greySoft,
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.h),
                  child: SvgPicture.asset(AppIcons.error),
                ),
              ),
            ],
          ),
          content: Text(
            "are_you_sure".tr(),
            textAlign: TextAlign.center, // Matnni o'rtaga qo'yish
            style: AppStyles.regular16(AppColors.black),
          ),
          actionsPadding: EdgeInsets.only(bottom: 20.h, left: 10.w, right: 10.w),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // YO'Q TUGMASI
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 140.w, // Biroz qisqartirildi (sig'ishi uchun)
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      color: AppColors.black.withOpacity(0.05), // Ko'rinadiganroq rang
                    ),
                    child: Center(
                      child: Text("no".tr(), style: AppStyles.medium14(AppColors.black)),
                    ),
                  ),
                ),
                Gap(10.w),
                // HA TUGMASI
                GestureDetector(
                  onTap: () {
                    // Bu yerga amalni bajaring
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 140.w, // Biroz qisqartirildi
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      color: AppColors.primary,
                    ),
                    child: Center(
                      child: Text("yes".tr(), style: AppStyles.medium14(AppColors.white)),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
