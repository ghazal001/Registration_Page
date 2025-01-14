import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registrationpage/Routes/AppRoute.dart';
import '../Controllers/LoginController.dart';



class Login extends GetView<LoginController> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Center(child: Text("Login Page")),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[


                Text("Email"),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter your Email here",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w300, // Use a lighter font weight
                        color: Colors.grey,          // Optional: Change color to a lighter shade
                      ),
                      border: OutlineInputBorder()
                  ),
                  controller: controller.email,
                ),


                SizedBox(height: 10,),


                Text("Password"),
                SizedBox(height: 8),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter your Password here",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w300, // Use a lighter font weight
                        color: Colors.grey,          // Optional: Change color to a lighter shade
                      ),
                      border: OutlineInputBorder()
                  ),
                  controller: controller.password,
                ),

                SizedBox(height: 10,),

                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple, // Set the button color to purple
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // Rounded corners
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Optional: Adjust padding
                      ),
                      onPressed:(){
                        controller.login();
                        },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white, // Ensure text is readable on a purple background
                          fontSize: 14,        // Optional: Adjust font size
                          fontWeight: FontWeight.bold, // Optional: Make text bold
                        ),
                      )
                  ),
                ),

                SizedBox(height: 10,),

                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      ),
                      onPressed:(){
                        //hon aamalna hek laan hiye b gher controller
                        Get.toNamed(AppRoute.register);

                        },

                      child: Text(
                          "Doesn't have an account? Register here ",
                          style: TextStyle(
                            color: Colors.black, // Ensure text is readable on a purple background
                            fontSize: 14,        // Optional: Adjust font size
                            fontWeight: FontWeight.bold, // Optional: Make text bold
                      )
                  ),
                )
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}
