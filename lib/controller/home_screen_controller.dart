import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:http/http.dart' as http;

class HomeScreenController extends GetxController{
  RxList<dynamic> projectList = [].obs;
  RxBool isloading = true.obs;

  @override
  void onInit() async {
    print("call onInit");  // this line not printing
   getProjectList();
    super.onInit();
  }

  Future<void> getProjectList()async{
    isloading.value = true;
    String url = "https://e07c2a17-7f14-415f-b55d-86164928bd39.mock.pstmn.io/all_todo_list";

    var response = await http.get(Uri.parse(url));


    if(response.statusCode == 200){
      var toDoList = jsonDecode(response.body);
      projectList.value = toDoList;
      print("----------------------------this is to do list ${projectList.value}");
      isloading.value = false;
    }
  }
}
