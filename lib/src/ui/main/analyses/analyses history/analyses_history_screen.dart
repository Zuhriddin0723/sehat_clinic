import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/appStyles/app_styles.dart';
import 'package:sehat_clinic/src/app_theme/app_images/app_images.dart';

import '../../../../app_theme/app_colors/app_colors.dart';

class AnalysesHistoryScreen extends StatefulWidget {
  const AnalysesHistoryScreen({super.key});

  @override
  State<AnalysesHistoryScreen> createState() => _AnalysesHistoryScreenState();
}

class _AnalysesHistoryScreenState extends State<AnalysesHistoryScreen> {
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
        title: Text(
          "cardiology_analyses".tr(),
          style: AppStyles.medium16(AppColors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          children: [
            _widget(AppImages.xRay, "X-Ray", "540 000 UZS", false),
            Gap(10.h),
            _widget(AppImages.mrt, "MRT", "540 000 UZS",false),
            Gap(10.h),
            _widget(AppImages.mskt, "MSKT", "540 000 UZS", true),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 120.h,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("540 000 UZS",style: AppStyles.regular14(AppColors.grey),),
              Gap(10.h),
              Container(
                width: 335.w,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.grey.shade300,
                ),
                child: Center(
                  child: Text(
                    "booking".tr(),
                    style: AppStyles.medium14(AppColors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _widget (String img, String name, String price ,bool a){
    return Container(
      width: 343.w,
      height: 74.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: AppColors.white
      ),
      child: Padding(
        padding: EdgeInsets.all(12.h),
        child: Row(
          children: [
            Container(
                width: 71.w,
                height: 50.h,
                child: Image.asset(img,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: AppStyles.medium16(AppColors.black),),
                Gap(5.h),
                Text(price, style: AppStyles.regular14(AppColors.grey),)
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(2.5.h),
              height: 16.h,
              width: 16.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: a ? Colors.grey : AppColors.primary,width: 1.w)
              ),
              child: a ? Container(
                height: 10.h,
                width: 10.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.primary
                ),
              ) : Container()
            )
          ],
        ),
      ),
    );
  }
}
