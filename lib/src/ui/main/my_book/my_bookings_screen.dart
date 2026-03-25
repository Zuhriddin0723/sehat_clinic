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
          const SizedBox(height: 10),
          /// 🔥 TOGGLE
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Row(
              children: [_tabItem("Upcoming", 0), _tabItem("History", 1)],
            ),
          ),

          const SizedBox(height: 10),

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
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 10),
                            ],
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
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 10),
                            ],
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
                                          color: Colors.green.shade200,
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
                                    color: Colors.grey[200],
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
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 10),
                          ],
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
                                  color: Colors.grey[200],
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
          padding: EdgeInsets.symmetric(vertical: 10.w),
          decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.grey[200],
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: isActive ? Color(0xFF001E62) : Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 17.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// 🔥 UPCOMING PAGE
class UpcomingPage extends StatelessWidget {
  const UpcomingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        BookingCard(
          name: "Dr. Noah Thomson",
          job: "Dentist",
          date: "Feb.15",
          time: "15:30",
          status: "Upcoming",
          color: Colors.blue,
        ),
      ],
    );
  }
}

/// 🔥 HISTORY PAGE
class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        BookingCard(
          name: "Dr. Noah Thomson",
          job: "Dentist",
          date: "Feb.14",
          time: "1.5 hours",
          status: "Complete",
          color: Colors.green,
        ),
        SizedBox(height: 10),
        BookingCard(
          name: "Dr. John Smith",
          job: "Cardiology",
          date: "Feb.13",
          time: "1 hours",
          status: "Canceled",
          color: Colors.red,
        ),
      ],
    );
  }
}

/// 🔥 CARD WIDGET
class BookingCard extends StatelessWidget {
  final String name;
  final String job;
  final String date;
  final String time;
  final String status;
  final Color color;

  const BookingCard({
    super.key,
    required this.name,
    required this.job,
    required this.date,
    required this.time,
    required this.status,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(radius: 20),
              const SizedBox(width: 10),

              /// NAME + JOB
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(job, style: const TextStyle(color: Colors.grey)),
                  ],
                ),
              ),

              /// STATUS
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(status, style: TextStyle(color: color)),
              ),
            ],
          ),

          const SizedBox(height: 10),

          /// DATE + TIME
          Row(
            children: [
              const Icon(Icons.calendar_today, size: 16),
              const SizedBox(width: 5),
              Text(date),

              const SizedBox(width: 15),

              const Icon(Icons.access_time, size: 16),
              const SizedBox(width: 5),
              Text(time),

              const Spacer(),

              const Text("View details", style: TextStyle(color: Colors.blue)),
            ],
          ),
        ],
      ),
    );
  }
}
