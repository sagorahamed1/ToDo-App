import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:to_do_app/views/screens/deletedScreen/deleted_screen.dart';
import 'package:to_do_app/views/widgets/custom_text.dart';
import '../editBottomSheet/edit_bottom_sheet.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //================================>  AppBar Section <=================================
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.access_time_sharp, size: 25.w)),
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 722.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xffF79E89),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              topRight: Radius.circular(20.r)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          child: EditBottomSheet(),
                        ),
                      );
                    });
              },
              icon: Icon(Icons.edit, size: 25.w)),
          IconButton(
              onPressed: () {
                Get.bottomSheet(DeletedScreen());
              },
              icon: Icon(Icons.delete_forever, size: 25.w)),
          //SizedBox(width: 24.w)
        ],
      ),
      //================================>  Body Section <==================================
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
