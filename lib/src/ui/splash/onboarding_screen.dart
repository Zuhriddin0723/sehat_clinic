import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/ui/auth/auth_page/auth_page.dart';
import 'package:sehat_clinic/src/ui/auth/register/register_screen.dart';
import 'package:sehat_clinic/src/widget/button_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widget/buton_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _controller,
                  children: [
                    _buildContent(
                      image: "assets/images/onboarding.png",
                      redTitle: "onboarding_title_color".tr(),
                      blackTitle: "onboarding_title".tr(),
                      subtitle: "onboarding_subtitle".tr(),
                    ),
                    _buildContent(
                      image: "assets/images/onboarding2.png",
                      redTitle: "onboarding_title2_color".tr(),
                      blackTitle: "onboarding_title2".tr(),
                      subtitle: "onboarding_subtitle2".tr(),
                    ),
                    _buildContent(
                      image: "assets/images/onboarding3.png",
                      redTitle: "onboarding_title3_color".tr(),
                      blackTitle: "onboarding_title3".tr(),
                      subtitle: "onboarding_subtitle3".tr(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 120), // button uchun joy
            ],
          ),

          /// Indicator
          Positioned(
            bottom: 120,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Color(0xFF001E62),
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  dotWidth: 10,
                ),
              ),
            ),
          ),

          /// BUTTON (fixed)
          Positioned(
            bottom: 40,
            left: 25,
            right: 25,
            child: ButtonWidget(
              text: "next".tr(),
              onTap: () {
                if (_controller.page!.toInt() == 2) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => AuthPage()),
                        (route) => false,
                  );
                } else {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent({
    required String image,
    required String redTitle,
    required String blackTitle,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(50.h),
          Container(
            width: 355,
            height: 335,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          Gap(30.h),
          Text.rich(
            TextSpan(
              text: redTitle,
              style: TextStyle(
                color: Colors.red,
                fontSize: 25.sp,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: blackTitle,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          Gap(10.h),
          Text(subtitle, style: TextStyle(fontSize: 15.sp,color: Colors.grey)),
        ],
      ),
    );
  }
}
