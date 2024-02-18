import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/custom_text.dart';

class EditBottomSheet extends StatelessWidget {
  const EditBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h),
        SizedBox(
            width: 80.w,
            height: 6.h,
            child: const Divider(
              color: Colors.white,
            )),
        SizedBox(height: 20.h),
        SizedBox(
          width: double.infinity,
          height: 48.h,
          child: const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              focusColor: Colors.white,
              hintText: "Title",
              hintStyle: TextStyle(color: Colors.white),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          width: double.infinity,
          height: 140.h,
          child: const TextField(
            maxLines: 10,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              focusColor: Colors.white,
              hintText: "Description",
              hintStyle: TextStyle(color: Colors.white),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          width: double.infinity,
          height: 48.h,
          child: const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              focusColor: Colors.white,
              hintText: "Deadline (Optional)",
              suffixIcon: Icon(
                Icons.calendar_today_outlined,
                color: Colors.white,
              ),
              hintStyle: TextStyle(color: Colors.white),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          width: double.infinity,
          height: 48.h,
          child: const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              focusColor: Colors.white,
              hintText: "Add Image (Optional)",
              suffixIcon: Icon(
                Icons.add_photo_alternate_outlined,
                color: Colors.white,
              ),
              hintStyle: TextStyle(color: Colors.white),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        const Spacer(),
        Container(
          width: double.infinity,
          height: 48.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
          child: Center(
            child: CustomText(
              textAlign: TextAlign.center,
              color: const Color(0xffF79E89),
              text: 'Edit TODO',
              fontsize: 14.h,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
