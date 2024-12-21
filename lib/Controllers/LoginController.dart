import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:registrationpage/Core/Network/DioClient.dart';
import 'package:registrationpage/Core/showSuccessDialog.dart';

import '../Models/User.dart';

class LoginController extends GetxController{
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();




    void login() async
    {
        User user = User(email: email.value.text, password: password.value.text);
        String request_body = user.toJson();

        var post = await DioClient().getInstance().post("/login",data: request_body);
        if(post.statusCode == 200){
            showSuccessDialog(Get.context!, "Success", "User Loged in Successfully", (){
                print(post.data);
            });

        }

    }
}