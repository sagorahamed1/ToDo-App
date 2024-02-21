import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:to_do_app/routes/app_routes.dart';
import 'package:to_do_app/views/screens/profile_screen/profile_screen.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_icons.dart';
import '../addBottomSheet/add_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//================================>  AppBar Section <=================================
      appBar: AppBar(
        title: const Text(
          AppConstants.toDoList,
          style: TextStyle(
            color: Color(0xffF79E89),
            fontFamily: 'Montserrat',
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){
            Get.to(()=>ProfileScreen());
          }, icon: Icon(Icons.settings_outlined, size: 25.w),),
          SizedBox(
            width: 24.w,
          )
        ],
      ),
      //================================>  FloatingActionButton Section <=================================

      floatingActionButton: FloatingActionButton(
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
                    child: AddBottomSheet(),
                  ),
                );
              });
        },
        shape: const OvalBorder(),
        backgroundColor: const Color(0xffF76C6A),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),

      //================================>  Body Section <=================================

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(AppIcons.union),
                SizedBox(width: 9.w),
                Text(
                  AppConstants.listOfTodo,
                  style: TextStyle(
                      color: const Color(0xffF79E89),
                      fontFamily: 'Bebas Neue',
                      fontSize: 36.h,
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                SvgPicture.asset(AppIcons.filter),
              ],
            ),
            SizedBox(height: 17.h),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.detailScreen);
              },
              child: Container(
                width: 327.w,
                height: 120.h,
                decoration: BoxDecoration(
                    color: const Color(0xffF76C6A),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Design Logo',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontSize: 16.h,
                                  fontWeight: FontWeight.w600)),
                          const Spacer(),
                          const Icon(
                            Icons.access_time_sharp,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Text('Make logo for the mini project',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 14.h,
                              fontWeight: FontWeight.w400)),
                      const Spacer(),
                      Text('Created at 1 Sept 2021',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 11.h,
                              fontWeight: FontWeight.w400)),
                      SizedBox(height: 5.h),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
