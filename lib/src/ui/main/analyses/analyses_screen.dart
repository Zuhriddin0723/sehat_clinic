import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/appStyles/app_styles.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';
import 'package:sehat_clinic/src/app_theme/app_icons/app_icons.dart';
import 'package:sehat_clinic/src/app_theme/app_images/app_images.dart';
import 'package:sehat_clinic/src/widget/field_widget.dart';

import '../services/service_deteil/service_deteil_screen.dart';

class AnalysesScreen extends StatefulWidget {
  const AnalysesScreen({super.key});

  @override
  State<AnalysesScreen> createState() => _AnalysesScreenState();
}

class _AnalysesScreenState extends State<AnalysesScreen> {
  int currentIndex = 0;
  final PageController controller = PageController();
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  List<String> a = [
    "cardiology".tr(),
    "laboratory".tr(),
    "heart_rate".tr(),
    "blood_pressure".tr(),
  ];

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "analyses".tr(),
          style: AppStyles.medium16(AppColors.black),
        ),
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
                  _tabItem("analyses_history".tr(), 0),
                  _tabItem("available_analyses".tr(), 1),
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
                /// analyses history
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Gap(15.h),
                    Center(
                      child: FieldWidget(
                        hintText: "search_your_file".tr(),
                        controller: _controller,
                        iconPath: AppIcons.search,
                      ),
                    ),
                    Gap(10.h),

                    /// list view builder
                    SizedBox(
                      height: 45.h,
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        scrollDirection: Axis.horizontal,
                        itemCount: a.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 6.w),
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: AppColors.white,
                            ),
                            child: Text(
                              a[index],
                              style: AppStyles.regular14(AppColors.black),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "the_last_analyzes".tr(),
                            style: AppStyles.medium16(AppColors.black),
                          ),
                          Gap(12.h),
                          _container(
                            AppIcons.heart,
                            "cardiology".tr(),
                            "Dr. Emily Carter",
                            "Feb 14, 2026",
                          ),
                          Gap(6.h),
                          _container(
                            AppIcons.teeth,
                            "stamatology".tr(),
                            "Dr. Lucas Bennett",
                            "Feb 14, 2026",
                          ),
                          Gap(24.h),
                          Text("2024_year_analyzes".tr(),style: AppStyles.medium16(AppColors.black),),
                          _container(
                            AppIcons.brain,
                            "neurology".tr(),
                            "Dr. Ava Mitchell",
                            "Feb 14, 2026",
                          ),
                          Gap(6.h),
                          _container(
                            AppIcons.eye,
                            "ophthalmology".tr(),
                            "Dr. Ethan Parker",
                            "Feb 14, 2026",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                /// available analyses
                Column(
                  children: [
                    Gap(15.h),
                    Center(
                      child: FieldWidget(
                        hintText: "search_".tr(),
                        controller: _controller2,
                        iconPath: AppIcons.search,
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
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
                              Gap(60.h)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
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

  Widget _container(String png, String title, String name, String date) {
    return Container(
      width: 344.w,
      height: 80.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Gap(5.w),
          Container(height: 48.h, width: 48.w, child: Image.asset(png)),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppStyles.medium16(AppColors.black)),
                Gap(2.h),
                Text(name, style: AppStyles.regular14(AppColors.black)),
                Gap(2.h),
                Text(date, style: AppStyles.regular12(AppColors.grey)),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 40.h,
            width: 40.w,
            padding: EdgeInsets.all(7.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.greySoft,
            ),
            child: SvgPicture.asset(AppIcons.download),
          ),
        ],
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
