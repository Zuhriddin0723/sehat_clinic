import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/appStyles/app_styles.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';
import 'package:sehat_clinic/src/app_theme/app_icons/app_icons.dart';
import 'package:sehat_clinic/src/app_theme/app_images/app_images.dart';
import '../doctor_deteil/doctor_detail_screen.dart';
import '../ecuipment_detail/ecuipment_detail.dart';

class ServiceDetailScreen extends StatelessWidget {
  const ServiceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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
          padding:  EdgeInsets.only(right: 35.w),
          child: Center(
            child: Text("stamatology".tr(), style: TextStyle(fontSize: 16.sp)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(15.w),
          child: Column(
            children: [
              Container(
                height: 200.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
                ),
                child: Padding(
                  padding:  EdgeInsets.all(10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("stamatology".tr(), style: AppStyles.medium16(AppColors.black)),
                      Gap(10.h),
                      Container(
                        height: 146.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(9.w),
                          child: Text(
                            "The Stomatology Service delivers comprehensive, patient-centered dental care through a coordinated, multidisciplinary team approach. We offer advanced and integrated treatment options for a wide range of oral, dental, and maxillofacial conditions.",
                            style: AppStyles.regular14(AppColors.black)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(20.h),
              Container(
                height: 522.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 12, color: Colors.black12)],
                ),
                child: Padding(
                  padding:  EdgeInsets.all(10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "meet_our_doctors".tr(),
                        style: AppStyles.medium16(AppColors.black),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => DoctorDetailScreen(),
                            ),
                          );
                        },
                        child: _doctor(
                          AppImages.doctor1,
                          "Dr. Elena Voss",
                          "pediatrician".tr(),
                        ),
                      ),
                      _doctor(
                        AppImages.doctor2,
                        "Dr. Marcus Lyle",
                        "orthopedic_surgeon".tr(),
                      ),
                      _doctor(
                        AppImages.doctor3,
                        "Dr. Fiona Hargrove",
                        "cardiologist".tr(),
                      ),
                      _doctor(
                        AppImages.doctor4,
                        "Dr. Samuel Treadwell",
                        "neurologist".tr(),
                      ),
                      _doctor(
                        AppImages.doctor5,
                        "Dr. Clara Winslow",
                        "dermatologist".tr(),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(20.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("diagnostics".tr(), style: AppStyles.medium16(AppColors.black)),
                      Gap(10.h),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (ctx)=> EcuipmentDetail()));
                            },
                            child: Container(
                              height: 115.h,
                              width: 147.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: Colors.grey[200],
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "X-ray",
                                      style: AppStyles.medium16(AppColors.black),
                                    ),
                                    Gap(13.h),
                                    Row(
                                      children: [
                                        Image.asset(AppIcons.image),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.only(top: 30),
                                          child: SvgPicture.asset(
                                            AppIcons.arrow_right,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Gap(10.w),
                          Container(
                            height: 115.h,
                            width: 147.w ,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: Colors.grey[200],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mskt",
                                    style: AppStyles.medium16(AppColors.black),
                                  ),
                                  Gap(13.h),
                                  Row(
                                    children: [
                                      Image.asset(AppIcons.image),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(top: 30),
                                        child: SvgPicture.asset(
                                          AppIcons.arrow_right,
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
                    ],
                  ),
                ),
              ),
              Gap(20.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.w),
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
                ),
                child: Padding(
                  padding:  EdgeInsets.all(12.5.h),
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
                        height: 319.h,
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
              /// location
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
                ),
                clipBehavior: Clip.hardEdge,
                child: Padding(
                  padding:  EdgeInsets.all(10),
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
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(8.w),
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(8.w),
                          child: Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(bottom: 13.w),
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
        padding: EdgeInsets.all(16.w),
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
                  borderRadius: BorderRadius.circular(23.r),
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

  Widget _doctor(String img, String title, String subtitle) {
    return Padding(
      padding:  EdgeInsets.only(top: 10),
      child: Container(
        height: 84.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.grey[200],
        ),
        child: Padding(
          padding:  EdgeInsets.all(8.w),
          child: Row(
            children: [
              Container(
                height: 64,
                width: 64,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Image.asset(img, fit: BoxFit.cover),
              ),
              Gap(10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyles.medium16(AppColors.black)
                  ),
                  Gap(5.w),
                  Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 3,
                      bottom: 3,
                    ),
                    height: 26,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: Colors.grey[400],
                    ),
                    child: Text(
                      subtitle,
                      style: AppStyles.regular12(AppColors.primary)
                    ),
                  ),
                ],
              ),
            ],
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
  }
}
