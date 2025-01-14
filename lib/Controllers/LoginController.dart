import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:registrationpage/Core/Network/DioClient.dart';
import 'package:registrationpage/Core/showSuccessDialog.dart';
import 'package:registrationpage/Routes/AppRoute.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import '../Models/User.dart';

class LoginController extends GetxController {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    //Mech aam temchi aam tred gradle error ask bob
    // late SharedPreferences prefs;

    @override
    // void onInit() async {
    //   // TODO: implement onInit
    //   super.onInit();
    //   prefs = await SharedPreferences.getInstance();
    //
    //   if(prefs.getString('token') != null)
    //   {
    //       Get.offNamed(AppRoute.home);
    //   }
    //
    // }


    void login() async
    {
        User user = User(
            email: email.value.text,
            password: password.value.text
        );
        String request_body = user.toJson();

        var post = await DioClient().getInstance().post(
            "/login", data: request_body);

        if (post.statusCode == 200) {
            if (post.data['success']) {
                showSuccessDialog(
                    Get.context!, "Success", "User Logged in Successfully", () {
                    print(post.data);
                    // prefs.setString("token",post.data['token']);
                    Get.offNamed(AppRoute.home);
                });
            } else {
                showSuccessDialog(
                    Get.context!, "Failed", "User Login Failed", () {});
            }
        }
        else{
            showSuccessDialog(Get.context!, "Failed", "User Login Failed", () {});
        }
    }
}