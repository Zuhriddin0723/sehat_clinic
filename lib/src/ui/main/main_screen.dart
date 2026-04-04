import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';
import 'package:sehat_clinic/src/app_theme/app_icons/app_icons.dart';
import 'package:sehat_clinic/src/ui/main/analyses/analyses_screen.dart';
import 'package:sehat_clinic/src/ui/main/edit_profile/edit_profile.dart';
import 'package:sehat_clinic/src/ui/splash/splash_screen.dart';
import '../../app_theme/appStyles/app_styles.dart';
import '../../app_theme/app_images/app_images.dart';
import 'home/home_page.dart';
import 'my_book/my_bookings_screen.dart';
import 'services/service_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    Builder(
      builder: (context) => HomePage(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    ),
    const ServiceScreen(),
    const MyBookingsScreen(),
    const AnalysesScreen(),
    const Center(child: Text("Chat Screen")),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 30.h, left: 16.w, right: 16.w),
        child: ClipRRect( // 1. Blur chegaradan chiqib ketmasligi uchun
          borderRadius: BorderRadius.circular(25),
          child: BackdropFilter( // 2. Blur effektini beruvchi vidjet
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Xiralik darajasi
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                // 3. Rangni juda shaffof qilish kerak (0.1 - 0.3 atrofida)
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(25),
                border: Border.all( // 4. Glassmorphism effekti uchun ingichka chegara
                  color: Colors.white.withOpacity(0.2),
                  width: 1.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _item(0, "home".tr()),
                  _item(1, "services".tr()),
                  _item(2, "booking".tr()),
                  _item(3, "analyses".tr()),
                  _item(4, "chat".tr()),
                ],
              ),
            ),
          ),
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
                    _drawer(AppIcons.home, "home".tr(), false, () {
                      Navigator.pop(context);
                    }),
                    Gap(5.h),
                    Divider(color: Colors.grey.shade300),
                    Gap(5.h),
                    _drawer(AppIcons.user, "edit_profile".tr(), false, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (ctx) => EditProfile()),
                      );
                    }),
                    Gap(5.h),
                    Divider(color: Colors.grey.shade300),
                    Gap(5.h),
                    _drawer(AppIcons.language, "language".tr(), true, () {}),
                    Gap(5.h),
                    Divider(color: Colors.grey.shade300),
                    Gap(5.h),
                    _drawer(AppIcons.support, "support".tr(), false, () {}),
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
                    _drawer(
                      AppIcons.i_,
                      "about_application".tr(),
                      false,
                      () {},
                    ),
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
                  InkWell(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SplashScreen()),
                            (Route<dynamic> route) => false,
                      );
                    },
                    child: Text(
                      "log_out".tr(),
                      style: AppStyles.regular16(AppColors.error),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "app_version".tr(),
                    style: AppStyles.regular14(AppColors.black),
                  ),
                  Spacer(),
                  Text("1.0.0", style: AppStyles.regular14(AppColors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(int index, String name) {
    final bool isActive = currentIndex == index;

    // Har bir index uchun qaysi ikonkani tanlash mantiqi
    String getIconPath() {
      switch (index) {
        case 0:
          return isActive ? AppIcons.active_home : AppIcons.home;
        case 1:
          return isActive ? AppIcons.active_services : AppIcons.services;
        case 2:
          return isActive ? AppIcons.active_booking : AppIcons.booking;
        case 3:
          return isActive ? AppIcons.active_analyses : AppIcons.analyses;
        case 4:
          return AppIcons.chat; // Chat uchun aktiv ikonka yo'q bo'lsa
        default:
          return AppIcons.home;
      }
    }

    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(getIconPath(), height: 24, width: 24),
            const SizedBox(height: 4),
            Text(
              name,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                color: isActive ? AppColors.primary : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawer(String icon, String name, bool a, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(icon, color: AppColors.black),
          Gap(12.w),
          Text(name, style: AppStyles.regular16(AppColors.black)),
          Spacer(),
          a ? SvgPicture.asset(AppIcons.chevron_down) : Text(""),
        ],
      ),
    );
  }
}
