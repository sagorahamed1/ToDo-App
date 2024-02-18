import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/views/widgets/custom_text.dart';

import '../../../utils/app_constants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //================================>  AppBar Section <=================================
      appBar: AppBar(
        actions: [
          Icon(Icons.access_time_sharp, size: 25.w),
          SizedBox(width: 8.w),
          Icon(Icons.edit, size: 25.w),
          SizedBox(width: 8.w),
          Icon(Icons.delete_forever, size: 25.w),
          SizedBox(width: 24.w)
        ],
      ),
      //================================>  Body Section <=================================
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Design Logo",
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontsize: 26.h,
              fontName: 'Bebas Neue',
            ),
            SizedBox(height: 24.h),
            CustomText(
              text: "Make logo for the mini project",
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontsize: 16.h,
              fontName: 'Montserrat',
            ),
            const Spacer(),
            Center(
              child: CustomText(
                text: "Created at 1 Sept 2021",
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontsize: 14.h,
                fontName: 'Montserrat',
              ),
            ),
            SizedBox(height: 17.h),
          ],
        ),
      ),
    );
  }
}
