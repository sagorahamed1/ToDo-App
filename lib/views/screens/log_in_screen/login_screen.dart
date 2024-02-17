import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:to_do_app/utils/app_images.dart';
import 'package:to_do_app/views/widgets/custom_text.dart';

import '../../../utils/app_colors.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  final GlobalKey<FormState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    RxBool _isObscured = true.obs;
    IsObscured(){
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
                  height: 180.h,
                ),

                ///----------------------------logo image--------------------------------->
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

                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: "Email",
                    labelStyle: TextStyle(color: AppColors.textColor),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    }
                  },
                ),

                SizedBox(
                  height: 16.h,
                ),

                Obx(()=> TextFormField(
                    controller: passwordController,
                    obscureText: _isObscured.value,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscured.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppColors.textColor,
                        ),
                        onPressed: () {
                          // Toggle the password visibility
                          IsObscured();
                        },
                      ),
                      labelStyle: TextStyle(color: AppColors.textColor),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      }
                    },
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: CustomText(
                    textAlign: TextAlign.end,
                    text: "Forgot Password?",
                    top: 16.h,
                    bottom: 16.h,
                    color: AppColors.textColor,
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    ///------------------------sign-in method----------------------------->
                    signIn();
                  },
                  child: const Text("SIGN IN"),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "Don't have an account? ",
                      color: AppColors.textColor,
                      fontsize: 12.h,
                      fontWeight: FontWeight.w400,
                      top: 16.h,
                    ),
                    CustomText(
                      text: "Sign up",
                      color: Colors.red,
                      fontsize: 12.h,
                      fontWeight: FontWeight.w400,
                      top: 16.h,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signIn() {
    if (_globalKey.currentState!.validate()) {
      // Implement your sign-in logic here
    }
  }
}
