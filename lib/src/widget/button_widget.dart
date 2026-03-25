import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButonWidget extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  const ButonWidget({super.key, required this.name, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFF001E62)
          ),
          child: Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700, fontSize: 15.sp),),
        ),
      );
  }
}