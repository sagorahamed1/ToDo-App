import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ResgisterController extends GetxController{
  RxString message = ''.obs;





  Future<void> resgisterWithUserInfo(String userName, email, password)async{
    try{
      String url = "https://e07c2a17-7f14-415f-b55d-86164928bd39.mock.pstmn.io/sign_up";
      Map<String, dynamic> body = {
        "user_Name" : "${userName}",
        "email" : "${email}",
        "password" : "${password}",
      };

      var response = await http.post(Uri.parse(url), body: jsonEncode(body), headers: {"content_type": "Aplication/json"});


      print("================response $response");
      if(response.statusCode == 201){
        message = jsonDecode(response.body)["message"];
        Fluttertoast.showToast(
            msg: "${message}",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
        print("----------------------------------this is status message $message");

      }

    }catch(e){
      print("----------------------------------$e");
    }
  }
}