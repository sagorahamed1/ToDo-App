import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/utils/app_images.dart';
import 'package:to_do_app/views/widgets/custom_text.dart';

import '../../../utils/app_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
          Icon(Icons.settings_outlined, size: 25.w),
          SizedBox(
            width: 24.w,
          )
        ],
      ),



      ///---------------------------------------body part------------------------------------>
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 20.h),
        child: Column(
          children: [

            SizedBox(height: 114.h,),

            Image.asset(AppImages.profile_screen_image,height: 243.h,width: 326.w,),

            SizedBox(height: 109.h,),


            ///--------------------full name------------------------>
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Full Name", color: Colors.black54,fontsize: 16.h,fontWeight: FontWeight.w400,),
                CustomText(text: "Devin L. Waller", color: Color(0xFFF79E89),fontsize: 16.h,fontWeight: FontWeight.w400,)
              ],
            ),


            SizedBox(height: 12.h,),

            ///--------------------email------------------------>
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Email", color: Colors.black54,fontsize: 16.h,fontWeight: FontWeight.w400,),
                CustomText(text: "DevinWaller17@gmail.com", color: Color(0xFFF79E89),fontsize: 16.h,fontWeight: FontWeight.w400,)
              ],
            ),


            SizedBox(height: 12.h,),
            ///-----------------------password------------------------->
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Password", color: Colors.black54,fontsize: 16.h,fontWeight: FontWeight.w400,),
                CustomText(text: "Change Password", color: Color(0xFFF79E89),fontsize: 16.h,fontWeight: FontWeight.w400,)
              ],
            ),


            SizedBox(height: 40.h,),

            ///----------------------log out button----------------------->
            ElevatedButton(onPressed: (){}, child: Text("LOG OUT"))

          ],
        ),
      ),
    );
  }
}
