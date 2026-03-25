import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';
import 'package:sehat_clinic/src/app_theme/app_icons/app_icons.dart';

// Sahifalaringizni import qiling (yo'llar to'g'riligiga ishonch hosil qiling)
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

  // Ekranlar ro'yxati
  final List<Widget> screens = [
    const HomePage(),
    const ServiceScreen(),
    const MyBookingsScreen(),
    const Center(child: Text("Analyses Screen")),
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
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
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
            SvgPicture.asset(
              getIconPath(),
              height: 24,
              width: 24,
            ),
            const SizedBox(height: 4),
            Text(
              name,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                color: isActive ? AppColors.primary: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}