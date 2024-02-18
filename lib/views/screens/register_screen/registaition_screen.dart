


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:to_do_app/views/screens/log_in_screen/login_screen.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../widgets/custom_text.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> _globalKey = GlobalKey();

  RxBool _isObscured = true.obs;
  var errorMessage;

  void _toggleObscured() {
    _isObscured.toggle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 26.w),
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
                  height: 60.h,
                ),

                ///----------------------email form---------------------->
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

                SizedBox(height: 16,),

                ///-------------------------Full Name------------------------>
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    hintText: "Full Name",
                    labelStyle: TextStyle(color: AppColors.textColor),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your Full Name";
                    }
                  },
                ),

                SizedBox(
                  height: 16.h,
                ),

                ///----------------------------password------------------------------->
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
                        onPressed: _toggleObscured,
                      ),
                      labelStyle:
                      const TextStyle(color: AppColors.textColor),
                    ),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          value.length < 5) {
                        return "Please enter 5 Digit password";
                      }
                    },
                  ),
                ),

                SizedBox(
                  height: 16.h,
                ),

                ///----------------------------conform password------------------------------->
                Obx(
                      () => TextFormField(
                    controller: confirmPasswordController,
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
                        onPressed: _toggleObscured,
                      ),
                      labelStyle:
                      const TextStyle(color: AppColors.textColor),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 5) {
                        return "Please enter 5 Digit password";
                      }
                    },
                  ),
                ),


                SizedBox(height: 16.h,),

                ElevatedButton(
                  onPressed: () {
                    ///------------------------sign-Up method----------------------------->
                    _signUp();
                  },
                  child: const Text("SIGN UP"),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "Have an account? ",
                      color: AppColors.textColor,
                      fontsize: 12.h,
                      fontWeight: FontWeight.w400,
                      top: 16.h,
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigate to the login screen
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LogInScreen(),
                          ),
                        );
                      },
                      child: CustomText(
                        text: "SIGN IN",
                        color: Colors.red,
                        fontsize: 12.h,
                        fontWeight: FontWeight.w400,
                        top: 16.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _signUp() {
    if (_validateFields()) {
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          emailController.clear();
          passwordController.clear();
          confirmPasswordController.clear();
          errorMessage = '';
        });

        // Navigate to the login screen after signup
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LogInScreen(),
          ),
        );

        // Show a success message
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Signup successful!'),
            duration: Duration(seconds: 2),
          ),
        );
      });
    }
  }

  bool _validateFields() {
    if (emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      setState(() {
        errorMessage = 'Please fill in all fields.';
      });
      return false;
    } else if (passwordController.text != confirmPasswordController.text) {
      setState(() {
        errorMessage = 'Passwords do not match.';
      });
      return false;
    } else if (passwordController.text.length < 5 ||
        confirmPasswordController.text.length < 5) {
      setState(() {
        errorMessage = "Passwords must be at least 5 characters long.";
      });
      return false;
    }

    setState(() {
      errorMessage = '';
    });

    return true;
  }
}
