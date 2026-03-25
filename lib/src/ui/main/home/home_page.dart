import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/appStyles/app_styles.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';

import '../../../app_theme/app_icons/app_icons.dart';
import '../../../app_theme/app_images/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: myFixedAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// ICONLAR ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppIcons.i),
                  Image.asset(AppIcons.link),
                  Image.asset(AppIcons.message),
                  Image.asset(AppIcons.star),
                  Image.asset(AppIcons.big_notification),
                ],
              ),

              Gap(20.h),
              /// doctor card
              Container(
                width: 343.w,
                height: 162.h,
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(blurRadius: 10, color: Colors.black12),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "doctor's".tr(),
                      style: AppStyles.medium16(AppColors.error),
                    ),
                    Gap(7.h),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset(
                            AppImages.dentist,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Gap(10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. Noah Thomson",
                              style: AppStyles.medium14(AppColors.primary)
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 4.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.r),
                                color: Colors.grey[200],
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 5.h,bottom: 5.h,left: 10.w,right: 10.w),
                                child: Text(
                                  "dentist".tr(),
                                    style: AppStyles.regular12(AppColors.primary)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(10.h),
                    /// date container
                    Container(
                      padding: EdgeInsets.only(left: 10.w,right: 10.w),
                      height: 44.h,
                      width: 335.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.grey[100],
                      ),
                      child: Row(
                        children: [
                          Image.asset(AppIcons.calendar),
                          Gap(5.w),
                          Text("${"feb".tr()}.15",  style: AppStyles.medium12(AppColors.black)),
                          Gap(10.w),
                          Image.asset(AppIcons.clock),
                          Gap(5.w),
                          Text("15:30",  style: AppStyles.medium12(AppColors.black)),
                          const Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.r),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Image.asset(AppIcons.file),
                                Gap(4.w),
                                Text("view".tr(), style: AppStyles.medium12(AppColors.black)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Gap(10.h),
              Row(
                children: [
                  Text("events".tr(),  style: AppStyles.semiBold14(AppColors.black)),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text("all".tr(),  style: AppStyles.regular14(AppColors.primaryBright)),
                  ),
                ],
              ),

              /// Events List
              SizedBox(
                height: 300.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Column(
                        children: [
                          Container(
                            width: 200.w,
                            height: 133.h,
                            clipBehavior: Clip.hardEdge,
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.r),
                                topLeft: Radius.circular(10.r),
                              ),
                            ),
                            child: Image.asset(AppImages.image, fit: BoxFit.cover),
                          ),
                          Container(
                            width: 200.w,
                            decoration:  BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10.r),
                                bottomLeft: Radius.circular(10.r)
                              )
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(AppIcons.calendar),
                                      Gap(5.w),
                                      Text("${"feb".tr()} 15, 2024", style: AppStyles.medium12(AppColors.black)),
                                    ],
                                  ),
                                  Text("heart_health_matters".tr(), style: AppStyles.medium16(AppColors.black)),
                                  Text("cardiovascular_subtitle".tr(), style: AppStyles.regular14(AppColors.grey)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Gap(50.h)
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget myFixedAppBar() {
    return AppBar(
      toolbarHeight: 70.h,
      backgroundColor: const Color(0xFF001E62),
      elevation: 0,
      automaticallyImplyLeading: false,
      leadingWidth: 70.w,
      leading: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Center(
          child: Container(
            height: 40.w,
            width: 40.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white),
            ),
            child: CircleAvatar(
              radius: 20.r,
              backgroundImage: AssetImage(AppImages.profile),
            ),
          ),
        ),
      ),
      title: Container(
        width: 88.w,
        height: 36.h,
        padding: EdgeInsets.all(7.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: AppColors.white.withOpacity(0.1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 26.h,
                width: 26.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColors.error
                ),
                child: Padding(
                  padding: EdgeInsets.all(3.h),
                  child: SvgPicture.asset(AppIcons.gift,),
                )),
            Gap(4.w),
           Text("20.000", style: AppStyles.regular14(AppColors.white)),
          ],
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: Image.asset(AppIcons.notification),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: Container(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 15.h),
          child: Container(
            height: 44.h,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Row(
              children: [
                Image.asset(AppIcons.search, width: 20.w),
                Gap(10.w),
                Expanded(
                  child: TextField(
                    controller: controllerSearch,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "search".tr(),
                      isDense: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(32.r)),
      ),
    );
  }
}