import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/appStyles/app_styles.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';
import 'package:sehat_clinic/src/app_theme/app_icons/app_icons.dart';
import 'package:sehat_clinic/src/app_theme/app_images/app_images.dart';

import 'events_detail_screen/events_detail_screen.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  final PageController controller = PageController();
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left_sharp),
        ),
        title: Text("all".tr(), style: AppStyles.medium16(AppColors.black)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Gap(10.h),
          Center(
            child: Container(
              height: 40.h,
              width: 355,
              padding: EdgeInsets.all(4.h),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Row(
                children: [
                  _tabItem("events".tr(), 0),
                  _tabItem("news".tr(), 1),
                  _tabItem("blog".tr(), 2),
                ],
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              children: [
                /// events
                Padding(
                  padding: EdgeInsets.all(20.h),
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>EventsDetailScreen()));
                            },
                            child: Container(
                              width: 343.w,
                              height: 180.h,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.r),
                                  topRight: Radius.circular(10.r),
                                ),
                              ),
                              child: Image.asset(
                                AppImages.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 12.h),
                            width: 343.w,
                            height: 164,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.r),
                                bottomRight: Radius.circular(10.r),
                              ),
                              color: AppColors.white
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(AppIcons.calendar),
                                      Gap(4.w),
                                      Text(
                                        "Feb 15, 2024",
                                        style: AppStyles.regular14(
                                          AppColors.grey,
                                        ),
                                      ),
                                      Gap(16.w),
                                      SvgPicture.asset(AppIcons.location),
                                      Gap(4.w),
                                      Text(
                                        "sehat_clinic".tr(),
                                        style: AppStyles.regular14(
                                          AppColors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gap(10.h),
                                  Text(
                                    "heart_health_matters".tr(),
                                    style: AppStyles.medium18(AppColors.black),
                                  ),
                                  Gap(6.h),
                                  Text(
                                    "cardiovascular_subtitle".tr(),
                                    style: AppStyles.regular16(AppColors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),

                /// news
                Padding(
                  padding: EdgeInsets.all(20.h),
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: 343.w,
                            height: 180.h,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.r),
                                topRight: Radius.circular(10.r),
                              ),
                            ),
                            child: Image.asset(
                              AppImages.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 12.h),
                            width: 343.w,
                            height: 164,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.r),
                                  bottomRight: Radius.circular(10.r),
                                ),
                                color: AppColors.white
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(AppIcons.calendar),
                                      Gap(4.w),
                                      Text(
                                        "Feb 15, 2024",
                                        style: AppStyles.regular14(
                                          AppColors.grey,
                                        ),
                                      ),
                                      Gap(16.w),
                                      SvgPicture.asset(AppIcons.location),
                                      Gap(4.w),
                                      Text(
                                        "sehat_clinic".tr(),
                                        style: AppStyles.regular14(
                                          AppColors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gap(10.h),
                                  Text(
                                    "heart_health_matters".tr(),
                                    style: AppStyles.medium18(AppColors.black),
                                  ),
                                  Gap(6.h),
                                  Text(
                                    "cardiovascular_subtitle".tr(),
                                    style: AppStyles.regular16(AppColors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),

                /// blog
                Padding(
                  padding: EdgeInsets.all(20.h),
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: 343.w,
                            height: 180.h,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.r),
                                topRight: Radius.circular(10.r),
                              ),
                            ),
                            child: Image.asset(
                              AppImages.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 12.h),
                            width: 343.w,
                            height: 164,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.r),
                                  bottomRight: Radius.circular(10.r),
                                ),
                                color: AppColors.white
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(AppIcons.calendar),
                                      Gap(4.w),
                                      Text(
                                        "Feb 15, 2024",
                                        style: AppStyles.regular14(
                                          AppColors.grey,
                                        ),
                                      ),
                                      Gap(16.w),
                                      SvgPicture.asset(AppIcons.location),
                                      Gap(4.w),
                                      Text(
                                        "sehat_clinic".tr(),
                                        style: AppStyles.regular14(
                                          AppColors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gap(10.h),
                                  Text(
                                    "heart_health_matters".tr(),
                                    style: AppStyles.medium18(AppColors.black),
                                  ),
                                  Gap(6.h),
                                  Text(
                                    "cardiovascular_subtitle".tr(),
                                    style: AppStyles.regular16(AppColors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabItem(String text, int index) {
    final isActive = currentIndex == index;

    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.grey[200],
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Center(
            child: Text(
              text,
              style: AppStyles.medium16(
                isActive ? Color(0xFF001E62) : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
