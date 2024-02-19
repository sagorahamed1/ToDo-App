import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:to_do_app/utils/app_images.dart';
import '../../../utils/app_colors.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final GlobalKey<FormState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    RxBool _isObscured = true.obs;
    IsObscured() {
      _isObscured.value = !_isObscured.value;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 26),
          child: Form(
            key: _globalKey,
            child: Column(
              children: [
                SizedBox(
                  height: 160.h,
                ),

                ///===============================> logo image <=================================
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppImages.todo_logo,
                    width: 180.w,
                    height: 170.h,
                  ),
                ),
                SizedBox(
                  height: 170.h,
                ),

                ///========================================> Email <==================================

                Obx(
                  () => TextFormField(
                    controller: passwordController,
                    obscureText: _isObscured.value,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscured.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: AppColors.textColor,
                        ),
                        onPressed: () {
                          IsObscured();
                        },
                      ),
                      labelStyle: const TextStyle(color: AppColors.textColor),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 5) {
                        return "Please enter 5 Digit password";
                      }
                    },
                  ),
                ),

                SizedBox(height: 16.h),

                Obx(
                  () => TextFormField(
                    controller: passwordController,
                    obscureText: _isObscured.value,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscured.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: AppColors.textColor,
                        ),
                        onPressed: () {
                          IsObscured();
                        },
                      ),
                      labelStyle: const TextStyle(color: AppColors.textColor),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 5) {
                        return "Please Re_enter 5 Digit password";
                      }
                    },
                  ),
                ),
                SizedBox(height: 24.h),

                ElevatedButton(
                  onPressed: () {
                    forgotPass();
                  },
                  child: const Text("CHANGE PASSWORD"),
                ),

                SizedBox(height: 76.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void forgotPass() {
    if (_globalKey.currentState!.validate()) {}
  }
}
