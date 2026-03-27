import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/appStyles/app_styles.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';
import 'package:sehat_clinic/src/app_theme/app_icons/app_icons.dart';
import 'package:sehat_clinic/src/app_theme/app_images/app_images.dart';
import 'package:sehat_clinic/src/widget/buton_widget.dart';

class EventsDetailScreen extends StatelessWidget {
  const EventsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          // TOP IMAGE
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.asset(
              AppImages.image,
              fit: BoxFit.cover,
            ),
          ),

          // BACK BUTTON
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(12.h),
              child: IconButton(
                icon: Icon(Icons.chevron_left, color: Colors.black,size: 30.sp,),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),

          // CONTENT
          DraggableScrollableSheet(
            initialChildSize: 0.7,
            minChildSize: 0.7,
            maxChildSize: 0.95,
            builder: (context, controller) {
              return Container(
                padding: EdgeInsets.all(16.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25.r),
                  ),
                ),
                child: SingleChildScrollView  (
                  controller: controller,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        "advanced_cardiovascular".tr(),
                        style: AppStyles.medium24(AppColors.black)
                      ),
                      Gap(16.h),

                      // DATE
                      Row(
                        children: [
                          Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.grey.shade100
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.h),
                              child: SvgPicture.asset(AppIcons.calendar,),
                            ),
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: "tuesday".tr(),
                                  style: AppStyles.medium14(AppColors.black),
                                  children: [
                                    TextSpan(
                                      text: ", Oct 24, 2026",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "09:00 AM - 04:30 PM",
                                style: AppStyles.regular12(AppColors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Gap(16.h),
                      // LOCATION
                      Row(
                        children: [
                          Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.grey.shade100
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.h),
                              child: SvgPicture.asset(AppIcons.location),
                            ),
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("sehat_medical_center".tr(),
                                style: AppStyles.medium14(AppColors.black),),
                              Text(
                                "Sehat Clinic, 4th Floor",
                                style: AppStyles.regular12(AppColors.grey),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text("view_map".tr(),style: AppStyles.semiBold12(Colors.blue),),
                          Gap(20.w)
                        ],
                      ),

                       SizedBox(height: 20),
                       Text(
                        "KEYNOTE_SPEAKER",
                        style: AppStyles.medium14(AppColors.black)
                      ),
                      SizedBox(height: 10),

                      Container(
                        padding: EdgeInsets.all(10.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(AppImages.dentist),
                            ),
                             SizedBox(width: 10),
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Dr. Noah Thomson",
                                    style: AppStyles.medium14(AppColors.black)),
                                Text("Dentist",
                                    style: AppStyles.regular12(AppColors.grey)),
                              ],
                            ),
                            Spacer(),
                            Container(
                              width: 52.w,
                              height: 28.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                border: Border.all(width: 1,color: Colors.grey.shade300)
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 9.w,),
                                child: Row(
                                  children:[
                                    Text("4.6",style: AppStyles.regular12(AppColors.black),),
                                    Icon(Icons.star,
                                        color: Colors.orange, size: 18)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Gap(20.h),
                       Text(
                        "ABOUT THIS EVENT",
                        style: AppStyles.medium14(AppColors.black)
                      ),
                      Gap(10.h),

                      Text(
                        "This full-day intensive workshop focuses on the latest advancements in non-invasive cardiovascular imaging and diagnostic techniques. Designed for clinical practitioners, we will cover 3D echocardiography, coronary CT angiography, and MRI clinical correlations.",
                        style: AppStyles.regular14(AppColors.grey),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 30),
          child: InkWell(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Color(0xFF001E62),
              ),
              child: Center(
                child: Text(
                  "book_now".tr(),
                  style: AppStyles.medium14(AppColors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
