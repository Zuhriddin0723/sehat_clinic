import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../app_theme/appStyles/app_styles.dart';
import '../../../../app_theme/app_colors/app_colors.dart';
import '../../../../app_theme/app_icons/app_icons.dart';
import '../../../../app_theme/app_images/app_images.dart';

class ViewDetailsComplete extends StatefulWidget {
  const ViewDetailsComplete({super.key});

  @override
  State<ViewDetailsComplete> createState() => _ViewDetailsCompleteState();
}

class _ViewDetailsCompleteState extends State<ViewDetailsComplete> {
  int rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left_sharp),
        ),
        title: Text("view".tr(), style: AppStyles.medium16(AppColors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(AppImages.dentist),
                            Gap(10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                              Text("Feb.15", style: AppStyles.medium12(AppColors.black)),
                              Gap(13.w),
                              Image.asset(AppIcons.clock),
                              Gap(5.w),
                              Text("15:30",style: AppStyles.medium12(AppColors.black),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(15.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "patient_information".tr(),
                        style: AppStyles.medium16(AppColors.black),
                      ),
                      Gap(10.h),
                      _doctorInformation(
                        AppIcons.user,
                        "patient_ID".tr(),
                        "1233455".tr(),
                      ),
                      _doctorInformation(
                        AppIcons.call,
                        "call_center".tr(),
                        "+998 91 234 56 78".tr(),
                      ),
                      _doctorInformation(
                        AppIcons.cardmoon,
                        "name_of_the_hospital".tr(),
                        "sehat_clinic".tr(),
                      ),
                      Gap(10.h),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.h),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 13),
                                child: SvgPicture.asset(AppIcons.location),
                              ),
                              Gap(10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "location".tr(),
                                      style: AppStyles.regular14(AppColors.grey)
                                  ),
                                  Text(
                                    "amir_temur_square".tr(),
                                    style: AppStyles.medium14(AppColors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(10.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(10.h),
                          Center(
                            child: Container(
                              height: 167.h,
                              width: 331.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Image.asset(
                                AppImages.gallery5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Gap(10.h),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 331.w,
                                    height: 125.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.r),
                                        topRight: Radius.circular(10.r),
                                      ),
                                    ),
                                    clipBehavior: Clip.hardEdge,
                                    child: Image.asset(
                                      AppImages.map,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Gap(10.h),
                                  Text(
                                      "mirzo_ulugbek_street".tr(),
                                      style: AppStyles.regular12(AppColors.grey)
                                  ),
                                  Gap(10.h),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 30),
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return StatefulBuilder(
                    builder: (context, setStateModal) {
                      return DraggableScrollableSheet(
                        initialChildSize: 0.5, // boshlanish
                        minChildSize: 0.4,
                        maxChildSize: 0.9, // maksimal
                        expand: false,
                        builder: (context, scrollController) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 20,
                                bottom: MediaQuery.of(context).viewInsets.bottom,
                              ),
                              child: ListView( // 🔥 MUHIM
                                controller: scrollController,
                                children: [
                                  Center(
                                    child: Container(
                                      width: 40,
                                      height: 4,
                                      margin: EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "evaluation_for_doctor".tr(),
                                    style: AppStyles.medium24(AppColors.black),
                                  ),
                                  Gap(10.h),

                                  Text(
                                    "your_rating_the_doctor".tr(),
                                    style: AppStyles.regular14(AppColors.black),
                                  ),
                                  Gap(10.h),
                                  /// ⭐ STARS
                                  Row(
                                    children: List.generate(5, (index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setStateModal(() {
                                            rating = index + 1;
                                          });
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 5.w),
                                          child: SvgPicture.asset(
                                            AppIcons.stars,
                                            color: index < rating
                                                ? Colors.orange
                                                : Colors.grey,
                                            height: 26,
                                          ),
                                        ),
                                      );
                                    }),
                                  ),

                                  Gap(15.h),

                                  Text(
                                    "your_opinion_about_the_doctor".tr(),
                                    style: AppStyles.regular14(AppColors.black),
                                  ),
                                  Gap(15.h),
                                  TextField(
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                      hintText: "comment".tr(),
                                      hintStyle: AppStyles.regular14(AppColors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  Gap(20.h),
                                ],
                              ),
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Color(0xFF001E62),
              ),
              child: Center(
                child: Text(
                  "rate_the_doctor".tr(),
                  style: AppStyles.medium14(AppColors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _doctorInformation(String icon, String title, String subtitle) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.grey[200],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 5.h, top: 5.h),
        child: Row(
          children: [
            SvgPicture.asset(icon, height: 20.h),
            Gap(10.w),
            Text(
              title,
              style: AppStyles.regular14(AppColors.grey),
            ),
            Spacer(),
            Text(subtitle, style: AppStyles.medium14(AppColors.black)),
          ],
        ),
      ),
    );
  }
}
