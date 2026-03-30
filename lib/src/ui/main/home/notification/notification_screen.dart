import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/appStyles/app_styles.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';
import 'package:sehat_clinic/src/app_theme/app_icons/app_icons.dart';
import 'package:sehat_clinic/src/app_theme/app_images/app_images.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left),
        ),
        title: Text(
          "notification".tr(),
          style: AppStyles.medium16(AppColors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: EdgeInsets.all(15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("14.02.2026",style: AppStyles.medium16(AppColors.black),),
              _widget("12:30", true),
              Gap(8.h),
              _widget2("11:30", true),
              Gap(24.h),
              Text("31.12.2025",style: AppStyles.medium16(AppColors.black),),
              Gap(12.h),
              _widget("12:03", false),
              Gap(8.h),
              _widget2("11:03", false),
            ]
        ),
      ),
    );
  }

  Widget _widget(String time, bool a) {
    return Container(
      width: 343.w,
      height: 72.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: AppColors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, top: 10.h,right: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.r),
              ),
              child: Image.asset(AppImages.dentist),
            ),
            Expanded(
              child: Text(
                "You have been assigned a new rating for your appearance on 14/02/2026.",
                style: AppStyles.regular14(AppColors.grey),
              ),
            ),
            Column(
              children: [
                Text(time,style: AppStyles.regular12(AppColors.grey),),
                Gap(21.h),
                a ? Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColors.error
                    ),
                  ),
                ) : Container()
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _widget2(String time, bool a) {
    return Container(
      width: 343.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: AppColors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.r),
                color: AppColors.primary.withOpacity(0.3)
              ),
              child: Padding(
                padding: EdgeInsets.all(13.h),
                child: SvgPicture.asset(AppIcons.notification2,),
              ),
            ),
            Gap(5.w),
            Expanded(
              child: Text(
                "The results of the laboratory analysis have been updated. View through the app.",
                style: AppStyles.regular14(AppColors.grey),
              ),
            ),
            Column(
              children: [
                Text(time,style: AppStyles.regular12(AppColors.grey),),
                Gap(33.h),
                a ? Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.error
                    ),
                  ),
                ) : Text("")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
