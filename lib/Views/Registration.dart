import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registrationpage/Controllers/RegistrationController.dart';



class Registration extends GetView<RegistrationController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Registration Page")),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Name"),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your Name here",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w300, // Use a lighter font weight
                          color: Colors.grey,          // Optional: Change color to a lighter shade
                        ),
                        border: OutlineInputBorder()
                    ),
                    controller:controller.name,
                  ),

                  // _buildInputLabel('Name'),



                  SizedBox(height: 10,),

                  Text("Email"),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your Email",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w300, // Use a lighter font weight
                          color: Colors.grey,          // Optional: Change color to a lighter shade
                        ),
                        border: OutlineInputBorder()
                    ),
                    controller: controller.email,
                  ),


                  SizedBox(height: 10,),

                  Text("Mobile"),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your Mobile here",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w300, // Use a lighter font weight
                          color: Colors.grey,          // Optional: Change color to a lighter shade
                        ),
                        border: OutlineInputBorder()
                    ),
                    controller: controller.mobile,
                  ),

                  SizedBox(height: 10,),

                  Text("Country"),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your Country here",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w300, // Use a lighter font weight
                          color: Colors.grey,          // Optional: Change color to a lighter shade
                        ),
                        border: OutlineInputBorder()
                    ),
                    controller: controller.country,
                  ),

                  SizedBox(height: 10,),

                  Text("Password"),
                  SizedBox(height: 8),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter your password here",
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
                        onPressed:(){
                          controller.register();
                        },
                        child: Text("Register")
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed:(){
                            Get.back();
                        },
                        child: Text("Already have an account? Login")
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
