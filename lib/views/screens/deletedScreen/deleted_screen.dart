import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/custom_text.dart';

class DeletedScreen extends StatelessWidget {
  const DeletedScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 48.h,left: 24.w,right: 24.w),
      child: Wrap(
        runSpacing: BorderSide.strokeAlignCenter,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: GestureDetector(
              onTap: (){},
              child: Container(
                width: double.infinity,
                height: 48.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: Colors.white),
                child: Center(
                  child: CustomText(
                    textAlign: TextAlign.center,
                    color: const Color(0xffF76C6A),
                    text: 'Delete TODO',
                    fontsize: 14.h,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: GestureDetector(
              onTap: (){
                Get.back();
              },
              child: Container(
                width: double.infinity,
                height: 48.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: Colors.white),
                child: Center(
                  child: CustomText(
                    textAlign: TextAlign.center,
                    color: const Color(0xff00FF19),
                    text: 'Cancel',
                    fontsize: 14.h,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}