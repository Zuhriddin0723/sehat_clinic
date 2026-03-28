import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/appStyles/app_styles.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';
import 'package:sehat_clinic/src/app_theme/app_icons/app_icons.dart';
import 'package:sehat_clinic/src/app_theme/app_images/app_images.dart';

class PointsHistoryScreen extends StatefulWidget {
  const PointsHistoryScreen({super.key});

  @override
  State<PointsHistoryScreen> createState() => _PointsHistoryScreenState();
}

class _PointsHistoryScreenState extends State<PointsHistoryScreen> {
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
          child: Icon(Icons.chevron_left),
        ),
        title: Text(
          "points_history".tr(),
          style: AppStyles.regular14(AppColors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("24 FEBRUARY", style: AppStyles.regular14(AppColors.black)),
            Gap(10.h),
            _spend(
              AppIcons.heart,
              "cardiology".tr(),
              "Dr. Emily Carter",
              "-45,000 UZS",
              "+450 UZS",
            ),
            Gap(10.h),
            Text("10 FEBRUARY", style: AppStyles.regular14(AppColors.black)),
            Gap(10.h),
            _spend(
              AppIcons.teeth,
              "stamatology".tr(),
              "Dr. Lucas Bennett",
              "-100,000 UZS",
              "+1.000 UZS",
            ),
            Text("1 FEBRUARY", style: AppStyles.regular14(AppColors.black)),
            Gap(10.h),
            _refer_friend(),
            Gap(10.h),
            _refer_friend(),
            Gap(10.h),
            Text("10 JANUARY", style: AppStyles.regular14(AppColors.black)),
            Gap(10.h),
            _spend(
              AppIcons.eye,
              "stamatology".tr(),
              "Dr. Lucas Bennett",
              "-100,000 UZS",
              "+1.000 UZS",
            ),
          ],
        ),
      ),
    );
  }

  Widget _spend(String img, String title, String name, String spend, String cashback,) {
    return Container(
      width: 343.w,
      height: 64.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Row(
          children: [
            Container(height: 40.h, width: 40.w, child: Image.asset(img)),
            Gap(10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppStyles.medium16(AppColors.black)),
                Text(name, style: AppStyles.regular14(AppColors.black)),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(spend, style: AppStyles.medium16(AppColors.black)),
                Text(cashback, style: AppStyles.bold14(AppColors.error)),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _refer_friend() {
    return Container(
      width: 343.w,
      height: 64.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Row(
          children: [
            Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.red.shade100
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.h),
                  child: SvgPicture.asset(AppIcons.user_add),
                )),
            Gap(10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("friend_referral", style: AppStyles.medium16(AppColors.black)),
                Text("${"for_inviting".tr()} Sarah J.",style: AppStyles.regular14(AppColors.black),)
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("+1.000 UZS", style: AppStyles.bold14(AppColors.error)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
