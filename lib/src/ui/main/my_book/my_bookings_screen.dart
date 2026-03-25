import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/appStyles/app_styles.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';
import 'package:sehat_clinic/src/app_theme/app_icons/app_icons.dart';
import 'package:sehat_clinic/src/app_theme/app_images/app_images.dart';
import 'package:sehat_clinic/src/ui/main/my_book/view_details_complete/view_details_complete.dart';
import 'package:sehat_clinic/src/ui/main/my_book/view_deteils_upcoming/view_deteils_upcoming.dart';

class MyBookingsScreen extends StatefulWidget {
  const MyBookingsScreen({super.key});

  @override
  State<MyBookingsScreen> createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends State<MyBookingsScreen> {
  int currentIndex = 0;
  final PageController controller = PageController();

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
        title: Text(
          "my_bookings".tr(),
          style: AppStyles.medium16(AppColors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Gap(10.h),
          Container(
            height: 40.h,
            width: 355.w,
            padding: EdgeInsets.all(4.h),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Row(
              children: [_tabItem("upcoming".tr(), 0), _tabItem("history".tr(), 1)],
            ),
          ),

          Gap(10.h),

          /// 🔥 PAGE VIEW
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              children: [
                /// Upcoming
                Padding(
                  padding: EdgeInsets.all(20.h),
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => ViewDetailsUpcoming(),
                            ),
                          );
                        },
                        child: Container(
                          height: 119.h,
                          width: 355.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 4.w,
                              right: 4,
                              top: 10,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.h),
                                  child: Row(
                                    children: [
                                      Image.asset(AppImages.dentist),
                                      Gap(10.w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                Gap(5.h),
                                Container(
                                  width: 347.w,
                                  height: 44.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10.r),
                                      bottomLeft: Radius.circular(10.r),
                                    ),
                                    color: Colors.grey.shade100,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.h),
                                    child: Row(
                                      children: [
                                        Image.asset(AppIcons.calendar),
                                        Gap(5.w),
                                        Text(
                                          "Feb.15",
                                          style: AppStyles.medium12(AppColors.black),
                                        ),
                                        Gap(10.w),
                                        Image.asset(AppIcons.clock),
                                        Gap(5.w),
                                        Text(
                                          "15:30",
                                          style: AppStyles.medium12(AppColors.black),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 102.w,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              7.r,
                                            ),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 10,
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(AppIcons.file),
                                              Gap(5.w),
                                              Text(
                                                "view".tr(),
                                                style: AppStyles.medium12(AppColors.black)
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// History
                Padding(
                  padding: EdgeInsets.all(20.h),
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => ViewDetailsComplete(),
                            ),
                          );
                        },
                        child: Container(
                          height: 119.h,
                          width: 355.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.h),
                                  child: Row(
                                    children: [
                                      Image.asset(AppImages.dentist),
                                      Gap(10.w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Dr. Noah Thomson",
                                            style: AppStyles.medium16(AppColors.black),
                                          ),
                                          Text(
                                            "dentist".tr(),
                                            style: AppStyles.regular12(AppColors.grey)
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Container(
                                        width: 62.w,
                                        height: 21.h,
                                        decoration: BoxDecoration(
                                          color: Colors.green.shade100,
                                          borderRadius: BorderRadius.circular(
                                            18.r,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "complete".tr(),
                                            style: AppStyles.regular12(Color(0xFF089D00))
                                          ),
                                        ),
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
                                    color: Colors.grey.shade100,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        Image.asset(AppIcons.calendar),
                                        Gap(5.w),
                                        Text(
                                          "Feb.14",
                                          style: AppStyles.medium12(AppColors.black),
                                        ),
                                        Gap(10.w),
                                        Image.asset(AppIcons.clock),
                                        Gap(2.w),
                                        Text(
                                          "1.5 hours",
                                          style: AppStyles.medium12(AppColors.black),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 102.w,
                                          height: 28.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              10.r,
                                            ),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 10,
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                AppIcons.file,
                                                color: Color(0xFF001E62),
                                              ),
                                              Gap(3.w),
                                              Text(
                                                "view".tr(),
                                                style: AppStyles.medium12(AppColors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Gap(10.h),
                      Container(
                        height: 119.h,
                        width: 355.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.w, right: 5.w),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.h),
                                child: Row(
                                  children: [
                                    Image.asset(AppImages.dentist),
                                    Gap(10.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Dr. Noah Thomson",
                                          style: AppStyles.medium16(AppColors.black)
                                        ),
                                        Text(
                                          "dentist".tr(),
                                          style: AppStyles.medium12(AppColors.grey),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 62.w,
                                      height: 21.h,
                                      decoration: BoxDecoration(
                                        color: Colors.red.shade200,
                                        borderRadius: BorderRadius.circular(
                                          18.r,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "canceled".tr(),
                                          style: AppStyles.regular12(AppColors.error)
                                        ),
                                      ),
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
                                  color: Colors.grey.shade100,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.h),
                                  child: Row(
                                    children: [
                                      Image.asset(AppIcons.calendar),
                                      Gap(5.w),
                                      Text(
                                        "Feb.14",
                                        style: AppStyles.medium12(AppColors.black),
                                      ),
                                      Gap(10.w),
                                      Image.asset(AppIcons.clock),
                                      Gap(2.w),
                                      Text(
                                        "1.5 hours",
                                        style: AppStyles.medium12(AppColors.black),
                                      ),
                                      Spacer(),
                                      Container(
                                        width: 102.w,
                                        height: 28.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            10.r,
                                          ),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 10,
                                            ),
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              AppIcons.file,
                                              color: Color(0xFF001E62),
                                            ),
                                            Gap(3.w),
                                            Text(
                                              "view".tr(),
                                              style: AppStyles.medium12(AppColors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 🔹 TAB ITEM
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
              style: AppStyles.medium16(isActive ? Color(0xFF001E62) : Colors.black)
            ),
          ),
        ),
      ),
    );
  }
}
