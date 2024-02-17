import 'package:flutter/material.dart';
import 'package:to_do_app/utils/app_images.dart';

import '../../../utils/app_colors.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  final GlobalKey<FormState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passWordControllder = TextEditingController();
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 26),
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
          
          
              const SizedBox(height: 180,),
              ///----------------------------logo image--------------------------------->
              Align(
                  alignment: Alignment.center,
                  child: Image.asset(AppImages.todo_logo)),
              const SizedBox(height: 170,),
          

              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: AppColors.textColor)
                ),
              ),

              SizedBox(height: 16,),


              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: AppColors.textColor)
                ),
              ),
              
              
              
              Text("Forgot Password?",style: TextStyle(color: AppColors.textColor),)

            ],
          ),
        ),
      ),
    );
  }
}
