import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../app_theme/app_icons/app_icons.dart';
import '../../../../app_theme/app_images/app_images.dart';

class ViewDetailsUpcoming extends StatelessWidget {
  const ViewDetailsUpcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text("view".tr(), style: TextStyle(fontSize: 12.sp)),
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
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
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
                                  style: TextStyle(fontSize: 8.sp),
                                ),
                                Text(
                                  "dentist".tr(),
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 7.sp,
                                  ),
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
                              Text("Feb.15", style: TextStyle(fontSize: 10.sp)),
                              Gap(13.w),
                              Image.asset(AppIcons.clock),
                              Gap(5.w),
                              Text("15:30",style: TextStyle(fontSize: 10.sp),)
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
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "patient_information".tr(),
                        style: TextStyle(fontSize: 13.sp),
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
                          padding: const EdgeInsets.all(8.0),
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
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    "amir_temur_square".tr(),
                                    style: TextStyle(fontSize: 8.sp),
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
                              height: 167,
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
                                    height: 125,
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
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.grey,
                                    ),
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
        height: 100,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
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
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(15.w),
              Container(
                height: 50,
                width: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFF001E62),
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppIcons.calendar,color: Colors.white,),
                      Gap(5.w),
                      Text(
                        "reschedule".tr(),
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
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
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.grey[200],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
        child: Row(
          children: [
            SvgPicture.asset(icon, height: 20),
            Gap(10.sp),
            Text(
              title,
              style: TextStyle(color: Colors.grey[600], fontSize: 10.sp),
            ),
            Spacer(),
            Text(subtitle, style: TextStyle(fontSize: 10.sp)),
          ],
        ),
      ),
    );
  }
}
