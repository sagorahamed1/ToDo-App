import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:to_do_app/utils/app_images.dart';
import 'package:to_do_app/views/screens/profile_screen/profile_screen.dart';
import 'package:to_do_app/views/widgets/custom_text.dart';

import '../../../utils/app_colors.dart';
import '../register_screen/registaition_screen.dart';

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
                  height: 160.h,
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

                ///-------------------------Email------------------------>
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


                ///--------------------------forgot password--------------------------->
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
                    // ProfileScreen();
                    ///------------------------sign-up method----------------------------->
                    signIn();
                  },
                  child: const Text("SIGN IN"),
                ),


                SizedBox(height: 16.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "Don't have an account? ",
                      color: AppColors.textColor,
                      fontsize: 12.h,
                      fontWeight: FontWeight.w400,
                    ),
                    TextButton(
                      onPressed: (){
                         Get.to(()=> RegistrationScreen());
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegistaitionScreen()));
                      },
                      child: CustomText(
                        text: " Sign up",
                        color: Colors.red,
                        fontsize: 12.h,
                        fontWeight: FontWeight.w400,
                      ),
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
    }
  }
}
