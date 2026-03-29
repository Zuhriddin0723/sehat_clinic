import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/appStyles/app_styles.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';
import 'package:sehat_clinic/src/ui/main/home/events_screen/events_screen.dart';
import 'package:sehat_clinic/src/ui/main/home/points_history/points_history_screen.dart';
import 'package:sehat_clinic/src/ui/main/home/refer_a_friend/refer_a_friend_screen.dart';
import 'package:sehat_clinic/src/ui/main/home/story_screen/story_screen.dart';
import 'package:sehat_clinic/src/widget/buton_widget.dart';

import '../../../app_theme/app_icons/app_icons.dart';
import '../../../app_theme/app_images/app_images.dart';

class HomePage extends StatefulWidget {
  final VoidCallback onTap;

  const HomePage({super.key, required this.onTap});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: myFixedAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10.h),

            /// ICONLAR ROW
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Gap(15.w),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (ctx) => StoryScreen()),
                      );
                    },
                    child: Image.asset(AppIcons.i),
                  ),
                  Gap(15.w),
                  Image.asset(AppIcons.link),
                  Gap(15.w),
                  Image.asset(AppIcons.message),
                  Gap(15.w),
                  Image.asset(AppIcons.star),
                  Gap(15.w),
                  Image.asset(AppIcons.big_notification),
                ],
              ),
            ),

            /// doctor card
            Padding(
              padding: EdgeInsets.all(20.h),
              child: Container(
                width: 343.w,
                height: 162.h,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gap(10.h),
                            Text(
                              "doctor's".tr(),
                              style: AppStyles.medium16(AppColors.error),
                            ),
                            Gap(11.h),
                            Row(
                              children: [
                                Image.asset(AppImages.dentist),
                                Gap(10.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dr. Noah Thomson",
                                      style: AppStyles.medium16(
                                        AppColors.black,
                                      ),
                                    ),
                                    Text(
                                      "dentist".tr(),
                                      style: AppStyles.regular12(
                                        AppColors.grey,
                                      ),
                                    ),
                                  ],
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
                            bottomRight: Radius.circular(15.r),
                            bottomLeft: Radius.circular(15.r),
                          ),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.h),
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.calendar),
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
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      AppIcons.file,
                                      color: Color(0xFF001E62),
                                    ),
                                    Gap(3.w),
                                    Text(
                                      "view".tr(),
                                      style: AppStyles.medium12(
                                        AppColors.black,
                                      ),
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
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (ctx) => EventsScreen()),
                      );
                    },
                    child: Text(
                      "events".tr(),
                      style: AppStyles.semiBold14(AppColors.black),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "all".tr(),
                      style: AppStyles.regular14(AppColors.primaryBright),
                    ),
                  ),
                ],
              ),
            ),

            /// Events List
            SizedBox(
              height: 300.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: Column(
                      children: [
                        Container(
                          width: 200.w,
                          height: 133.h,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.r),
                              topLeft: Radius.circular(10.r),
                            ),
                          ),
                          child: Image.asset(
                            AppImages.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 200.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10.r),
                              bottomLeft: Radius.circular(10.r),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(AppIcons.calendar),
                                    Gap(5.w),
                                    Text(
                                      "${"feb".tr()} 15, 2024",
                                      style: AppStyles.medium12(
                                        AppColors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "heart_health_matters".tr(),
                                  style: AppStyles.medium16(AppColors.black),
                                ),
                                Text(
                                  "cardiovascular_subtitle".tr(),
                                  style: AppStyles.regular14(AppColors.grey),
                                ),
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
            Gap(50.h),
          ],
        ),
      ),
      drawer: Drawer(
        width: 320.w,
        backgroundColor: AppColors.white,
        child: Column(
          children: [
            Gap(40.h),
            Container(
              height: 96.h,
              width: 96.w,
              child: Image.asset(AppImages.person),
            ),
            Gap(8.h),
            Text("Sarah Johnson", style: AppStyles.medium16(AppColors.black)),
            Gap(4.h),
            Text("ID : 1233455", style: AppStyles.regular14(AppColors.grey)),
            Gap(12.h),
            Container(
              width: 288.w,
              height: 288.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.grey.shade100,
              ),
              child: Padding(
                padding: EdgeInsets.all(13.h),
                child: Column(
                  children: [
                    _drawer(AppIcons.home, "home".tr(), false),
                    Gap(5.h),
                    Divider(color: Colors.grey.shade300),
                    Gap(5.h),
                    _drawer(AppIcons.user, "edit_profile".tr(), false),
                    Gap(5.h),
                    Divider(color: Colors.grey.shade300),
                    Gap(5.h),
                    _drawer(AppIcons.language, "language".tr(), true),
                    Gap(5.h),
                    Divider(color: Colors.grey.shade300),
                    Gap(5.h),
                    _drawer(AppIcons.support, "support".tr(), false),
                    Gap(5.h),
                    Divider(color: Colors.grey.shade300),
                    Gap(5.h),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.gift,
                          color: AppColors.black,
                          height: 25,
                        ),
                        Gap(12.w),
                        Text(
                          "refer_a_friend".tr(),
                          style: AppStyles.regular16(AppColors.black),
                        ),
                      ],
                    ),
                    Gap(5.h),
                    Divider(color: Colors.grey.shade300),
                    Gap(5.h),
                    _drawer(AppIcons.i_, "about_application".tr(), false),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  SvgPicture.asset(AppIcons.logout),
                  Gap(10.w),
                  Text(
                    "logout".tr(),
                    style: AppStyles.regular16(AppColors.error),
                  ),
                ],
              ),
            ),
          ],
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
            child: Builder(
              builder: (context) {
                return InkWell(
                  onTap: widget.onTap,
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundImage: AssetImage(AppImages.profile),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      title: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true, // Balandlikni boshqarish uchun shart
            backgroundColor: Colors.transparent,
            builder: (context) {
              return StatefulBuilder(
                builder: (context, setStateModal) {
                  return DraggableScrollableSheet(
                    // --- O'ZGARTIRILGAN JOYI ---
                    initialChildSize: 0.9,
                    minChildSize: 0.5,
                    maxChildSize: 0.9,
                    expand: false,
                    // ---------------------------
                    builder: (context, scrollController) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20.r),
                          ),
                        ),
                        child: ListView(
                          controller: scrollController,
                          padding: EdgeInsets.only(
                            top: 32.h,
                            left: 22.w,
                            right: 22.w,
                            bottom: 30.h,
                          ),
                          children: [
                            Center(
                              child: Text.rich(
                                textAlign: TextAlign.center,
                                TextSpan(
                                  text: "what_are".tr(),
                                  style: AppStyles.bold24(AppColors.black),
                                  children: [
                                    TextSpan(
                                      text: "loyalty_balance".tr(),
                                      style: AppStyles.bold24(AppColors.error),
                                    ),
                                    TextSpan(
                                      text: "points?".tr(),
                                      style: AppStyles.bold24(AppColors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Gap(10.h),
                            Text(
                              "loyalty_balance_points".tr(),
                              style: AppStyles.regular16(AppColors.grey),
                              textAlign: TextAlign.center,
                            ),
                            Gap(20.h),
                            Center(
                              child: Container(
                                width: 156.w,
                                height: 38.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: AppColors.white.withOpacity(0.5),
                                  border: Border.all(
                                    color: AppColors.grey.withOpacity(0.2),
                                  ),
                                ),
                                child: Text(
                                  "1${"friend".tr()} = 1,000 UZS",
                                  style: AppStyles.regular14(AppColors.black),
                                ),
                              ),
                            ),
                            Gap(20.h),
                            // "View points history" tugmasi
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (ctx) => PointsHistoryScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 343.w,
                                height: 50.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  color: Colors.grey.shade200,
                                ),
                                child: Center(
                                  child: Text(
                                    "view_points_history".tr(),
                                    style: AppStyles.medium14(AppColors.black),
                                  ),
                                ),
                              ),
                            ),
                            Gap(24.h),
                            // Balans kartasi
                            Container(
                              width: 343.w,
                              height: 153.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                color: const Color(0xFFEE3D69),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(14.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "balance".tr(),
                                      style: AppStyles.regular14(
                                        AppColors.white,
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "150,000",
                                          style: AppStyles.bold36(
                                            AppColors.white,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            bottom: 8.h,
                                            left: 5.w,
                                          ),
                                          child: Text(
                                            "UZS",
                                            style: AppStyles.regular18(
                                              AppColors.white,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 5.h),
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.white.withOpacity(
                                              0.5,
                                            ),
                                            size: 30.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Gap(10.h),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              height: 595.h,
                                              width: MediaQuery.of(
                                                context,
                                              ).size.width,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(
                                                    10.r,
                                                  ),
                                                  topRight: Radius.circular(
                                                    10.r,
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(16.h),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Gap(10.h),
                                                    Text.rich(
                                                      TextSpan(
                                                        text: "pay_with".tr(),
                                                        style: AppStyles.bold20(
                                                          AppColors.black,
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                            text: "loyalty"
                                                                .tr(),
                                                            style:
                                                                AppStyles.bold20(
                                                                  AppColors
                                                                      .error,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Gap(20.h),
                                                    Container(
                                                      height: 240.h,
                                                      width: 240.w,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              10.r,
                                                            ),
                                                        border: Border.all(
                                                          width: 1,
                                                          color: Colors
                                                              .grey
                                                              .shade300,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        AppImages.scan,
                                                      ),
                                                    ),
                                                    Gap(20.h),
                                                    Text(
                                                      "scan".tr(),
                                                      style:
                                                          AppStyles.regular16(
                                                            AppColors.grey,
                                                          ),
                                                    ),
                                                    Gap(10.h),
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        width: 343.w,
                                                        height: 50.h,
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                30.r,
                                                              ),
                                                          color: Colors
                                                              .grey
                                                              .shade300,
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            "cancel".tr(),
                                                            style:
                                                                AppStyles.medium14(
                                                                  AppColors
                                                                      .black,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            25.r,
                                          ),
                                          color: Colors.white.withOpacity(0.3),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "pay".tr(),
                                            style: AppStyles.medium16(
                                              AppColors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Gap(18.h),
                            Text(
                              "how_to_earn".tr(),
                              style: AppStyles.medium20(AppColors.black),
                            ),
                            Gap(10.h),
                            Container(
                              width: 343.w,
                              height: 100.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: Colors.grey.shade200,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.h),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 44.h,
                                      width: 44.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          10.r,
                                        ),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(10.h),
                                        child: SvgPicture.asset(
                                          AppIcons.calendar,
                                          color: AppColors.error,
                                        ),
                                      ),
                                    ),
                                    Gap(10.w),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "visit_the_clinic".tr(),
                                            style: AppStyles.medium16(
                                              AppColors.black,
                                            ),
                                          ),
                                          Gap(4.h),
                                          Text(
                                            "get_up".tr(),
                                            softWrap: true,
                                            style: AppStyles.regular14(
                                              AppColors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Gap(10.h),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (ctx) => ReferAFriendScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 343.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  color: Colors.grey.shade200,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.h),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 44.h,
                                        width: 44.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            10.r,
                                          ),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10.h),
                                          child: SvgPicture.asset(
                                            AppIcons.user_add,
                                            color: AppColors.error,
                                          ),
                                        ),
                                      ),
                                      Gap(10.w),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              "refer_a_friend".tr(),
                                              style: AppStyles.medium16(
                                                AppColors.black,
                                              ),
                                            ),
                                            Gap(4.h),
                                            Text(
                                              "earn_50".tr(),
                                              softWrap: true,
                                              style: AppStyles.regular14(
                                                AppColors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
        child: Container(
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
                  color: AppColors.error,
                ),
                child: Padding(
                  padding: EdgeInsets.all(3.h),
                  child: SvgPicture.asset(AppIcons.gift),
                ),
              ),
              Gap(4.w),
              Text("20.000", style: AppStyles.regular14(AppColors.white)),
            ],
          ),
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
                SvgPicture.asset(AppIcons.search, width: 20.w),
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

  Widget _drawer(String icon, String name, bool a) {
    return Row(
      children: [
        SvgPicture.asset(icon, color: AppColors.black),
        Gap(12.w),
        Text(name, style: AppStyles.regular16(AppColors.black)),
        Spacer(),
        a ? SvgPicture.asset(AppIcons.chevron_down) : Text(""),
      ],
    );
  }
}
