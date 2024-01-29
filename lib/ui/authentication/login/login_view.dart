import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon/assets/colors.dart';
import 'package:hackathon/ui/authentication/login/login_controller.dart';
import 'package:hackathon/ui/authentication/signUp/signup_view.dart';
import 'package:hackathon/ui/navbar/custom_navbar_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});


  @override
  Widget build(BuildContext context) {
     SignInController signInController = Get.put(SignInController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                    height: 50,
                    child: Image.asset(
                      "images/Ellipse.png",
                    )),
              ),

              const Text(
                "Welcome Back",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                  width: 250,
                  child: Text(
                    "Please Inter your email address and password for Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: MyColors.black38,
                    ),
                  )),
              const SizedBox(
                height: 40,
              ),
              // ----------------------------------TEXT FORM FIELD---------

              // ----------------------------------------------email-------------------------
              TextFormField(
                controller: signInController.passwordController,
                
                decoration: InputDecoration(
                  hintText: 'abc@gmail.com',
                  contentPadding: const EdgeInsets.all(16.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: MyColors.primaryLight, width: 2.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: MyColors.black12, width: 2.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              // ----------------------------------------------email-------------------------
              const SizedBox(
                height: 30,
              ),
              // ----------------------------------------------PASSWORD-------------------------
              TextFormField(
                controller: signInController.emailController,
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  contentPadding: const EdgeInsets.all(16.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: MyColors.primaryLight, width: 2.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: MyColors.black12, width: 2.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      //  Get.to(SignUpView());
                    },
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              // -----------------------------------------Button---------------------
              InkWell(
                onTap: () {
                  // signInController.signIn();
                  Get.to(CustomNavbar());
                },
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.black12.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: const Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Source-San-3",
                        color: MyColors.white100,
                      ),
                    ),
                  ),
                ),
              ),
              // -----------------------------------------Button---------------------

              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  "SignIn with",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: MyColors.black38,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //--------------------------------GooGLE AND APPLE LOGO-------------
              Center(
                child: SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 60,
                        width: 60,
                        child: Image.asset("images/google.png"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 60,
                        width: 60,
                        child: Image.asset("images/apple.png"),
                      ),
                    ],
                  ),
                ),
              ),
              // ----------------------NOT REGISTERED------------
              const SizedBox(
                height: 30,
              ),
              Center(
                  child: TextButton(
                onPressed: () {
                  Get.to(SignUpView());
                },
                child: const Text(
                  "Not Registered Yet? Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
