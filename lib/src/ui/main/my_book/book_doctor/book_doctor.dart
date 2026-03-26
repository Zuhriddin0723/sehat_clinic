import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sehat_clinic/src/app_theme/app_icons/app_icons.dart';
import 'package:sehat_clinic/src/app_theme/app_images/app_images.dart';

import '../../../../app_theme/app_colors/app_colors.dart';

class BookDoctor extends StatefulWidget {
  const BookDoctor({super.key});

  @override
  State<BookDoctor> createState() => _BookDoctorState();
}
List<dynamic> week = [
  {
    "day" : "Wed",
    "date" : "13"
  },
  {
    "day" : "The",
    "date" : "14"
  },
  {
    "day" : "Fri",
    "date" : "14"
  },
  {
    "day" : "Sat",
    "date" : "16"
  },
  {
    "day" : "Sun",
    "date" : "17"
  },
  {
    "day" : "Mon",
    "date" : "18"
  },
  {
    "day" : "Thu",
    "date" : "19"
  },
  {
    "day" : "Wed",
    "date" : "20"
  },
];
int selectedIndex = -1;

List<String> times = [
  "09:30 AM","11:30 AM","12:30 AM",
  "09:30 AM","11:30 AM","03:30 AM",
  "01:30 PM","03:30 AM","04:30 AM",
];
int selectedTimeIndex = -1;

Set<int> disabledIndexes = {1};

class _BookDoctorState extends State<BookDoctor> {
  @override
  Widget build(BuildContext context) {
    bool isActive = selectedIndex != -1 && selectedTimeIndex != -1;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left_sharp),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 35),
          child: Center(
            child: Text("Boking doctor", style: TextStyle(fontSize: 13.sp)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            /// dentist
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Image.asset(AppImages.dentist2),
                    ),
                    Gap(10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. Karim Nasrov",
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        Gap(10.h),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.grey[300]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 7,right: 7,top: 5,bottom: 5),
                            child: Text(
                              "dentist".tr(),
                              style: TextStyle(color: Color(0xFF001E62,),fontSize: 10.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Gap(7.h),
            /// location
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("location".tr(),style: TextStyle(fontSize: 12.sp),),
                    Gap(10.h),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.grey[300]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.location),
                            Gap(5.w),
                            Text("Amir Temur Square, Toshkent, Uzbekistan",style: TextStyle(fontSize: 8.sp),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Gap(7.h),
            /// date
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10
                  ),
                ],
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Select date",style: TextStyle(fontSize: 16.sp),),
                        Spacer(),
                        Text("Feb 2026",style: TextStyle(fontSize: 16.sp),),
                        Gap(2.w),
                        SvgPicture.asset(AppIcons.chevron_down)
                      ],
                    ),
                    Gap(10.h),
                    SizedBox(
                      height: 70,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: week.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 60,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: selectedIndex == index
                                    ? Color(0xFF001E62) // tanlangan
                                    : Colors.white,     // oddiy
                                border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    week[index]["day"],
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      color: selectedIndex == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Gap(5.h),
                                  Text(
                                    week[index]["date"],
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      color: selectedIndex == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Gap(7.h),
            /// time
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 10),
                ],
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Queues", style: TextStyle(fontSize: 12.sp)),
                    Gap(8.h),

                    /// 🔥 GRID o‘rniga Wrap
                    Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: List.generate(times.length, (index) {
                        bool isDisabled = disabledIndexes.contains(index);

                        return InkWell(
                          onTap: isDisabled
                              ? null // ❌ bosilmaydi
                              : () {
                            setState(() {
                              selectedTimeIndex = index;
                            });
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 100,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: isDisabled
                                      ? Colors.grey.shade300
                                      : selectedTimeIndex == index
                                      ? Color(0xFF001E62)
                                      : Colors.white,
                                  border: Border.all(color: Colors.grey.shade200),
                                ),
                                child: Center(
                                  child: Text(
                                    times[index],
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: isDisabled
                                          ? Colors.grey
                                          : selectedTimeIndex == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),

                              /// 🔥 ustidan chiziq
                              if (isDisabled)
                                Container(
                                  width: 80,
                                  height: 2,
                                  color: Colors.red,
                                ),
                            ],
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: SafeArea(
        child: SizedBox(
          height: 50.h,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: isActive ? () {} : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: isActive
                  ? Color(0xFF001E62)
                  : Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Text(
              "schedule_checkup".tr(),
              style: TextStyle(fontSize: 12.sp, color: Colors.white),
            ),
          ),
        ),
      ),
    ),
    );
  }
}
