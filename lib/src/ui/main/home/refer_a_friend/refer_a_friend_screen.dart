import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/appStyles/app_styles.dart';
import 'package:sehat_clinic/src/app_theme/app_colors/app_colors.dart';
import 'package:sehat_clinic/src/app_theme/app_icons/app_icons.dart';
import 'package:sehat_clinic/src/app_theme/app_images/app_images.dart';

class ReferAFriendScreen extends StatefulWidget {
  const ReferAFriendScreen({super.key});

  @override
  State<ReferAFriendScreen> createState() => _ReferAFriendScreenState();
}

class _ReferAFriendScreenState extends State<ReferAFriendScreen> {
  List<dynamic> a = [
    {
      "name": "John S.",
      "date": "2026.02.25",
      "pic": "J",
      "color": Color(0xFFFBBF24),
    },
    {
      "name": "Sarah J.",
      "date": "2026.02.03",
      "pic": "S",
      "color": Color(0xFF34D399),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left_sharp),
        ),
        title: Text(
          "refer_a_friend".tr(),
          style: AppStyles.medium16(AppColors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "together_to_health".tr(),
              style: AppStyles.medium24(AppColors.black),
            ),
            Gap(10.h),
            Text("invite".tr(), style: AppStyles.regular16(AppColors.grey)),
            Gap(20.h),

            /// copy link
            Text(
              "copy_and_share".tr(),
              style: AppStyles.medium14(AppColors.black),
            ),
            Gap(10.h),
            Container(
              width: 343.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.r),
                color: AppColors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.w,
                  right: 10.w,
                  top: 15.h,
                  bottom: 15.h,
                ),
                child: Row(
                  children: [
                    Text(
                      "https://referallinktofriend1234567",
                      style: AppStyles.regular14(AppColors.black),
                    ),
                    Spacer(),
                    Container(
                      height: 24.h,
                      width: 24.w,
                      child: SvgPicture.asset(AppIcons.copy),
                    ),
                  ],
                ),
              ),
            ),
            Gap(24.h),

            /// or invite
            Row(
              children: [
                Expanded(
                  child: Divider(color: Colors.grey.shade300, thickness: 1),
                ),
                Gap(5.w),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "or_invite".tr(),
                    style: AppStyles.regular14(AppColors.grey),
                  ),
                ),
                Gap(5.w),
                Expanded(
                  child: Divider(color: Colors.grey.shade300, thickness: 1),
                ),
              ],
            ),
            Gap(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.asset(AppImages.telegram),
                  ),
                ),
                Gap(11.w),
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.asset(AppImages.instagram),
                  ),
                ),
                Gap(11.w),
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.asset(AppImages.x),
                  ),
                ),
                Gap(11.w),
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.asset(AppImages.whatsup),
                  ),
                ),
                Gap(11.w),
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.asset(AppImages.face_book),
                  ),
                ),
              ],
            ),
            Gap(20.h),
            /// invited friends
            Container(
              width: double.infinity, // 343.w o'rniga double.infinity qulayroq
              padding: EdgeInsets.all(16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("invite_friend".tr() + " ${a.length}", style: AppStyles.medium16(AppColors.black)),
                  Gap(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("nickname".tr(), style: AppStyles.semiBold12(AppColors.grey)),
                      Text("joined".tr(), style: AppStyles.semiBold12(AppColors.grey)),
                    ],
                  ),
                  Divider(color: Colors.grey.shade300),

                  // 2. ListView.builder ni o'zgartirdik:
                  ListView.builder(
                    shrinkWrap: true, // BU JUDA MUHIM: ListView ichidagi elementlar bo'yicha o'zini moslaydi
                    physics: NeverScrollableScrollPhysics(), // Ichki scrollni o'chiramiz, chunki tashqarida SingleChildScrollView bor
                    itemCount: a.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Row(
                          children: [
                            Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle, // BorderRadius o'rniga qulayroq
                                color: a[index]["color"],
                              ),
                              child: Center(
                                child: Text(
                                  a[index]["pic"],
                                  style: AppStyles.bold14(AppColors.white),
                                ),
                              ),
                            ),
                            Gap(12.w),
                            Text(
                              a[index]["name"],
                              style: AppStyles.regular14(AppColors.black),
                            ),
                            Spacer(), // Sanani o'ng tomonga surish uchun
                            Text(
                              a[index]["date"],
                              style: AppStyles.regular12(AppColors.grey),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
