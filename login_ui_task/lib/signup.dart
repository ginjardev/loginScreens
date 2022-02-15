import 'package:flutter/material.dart';
import 'package:login_ui_task/app.dart';
import 'package:login_ui_task/reusables/button.dart';
import 'package:login_ui_task/reusables/textField.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/green.jpg",),
            fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Text(
                      "Create your new account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              Column(
              children: [
                SizedBox(height: 40,),
                Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: MyTextField(text: "First Name"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: MyTextField(text: "Last Name"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: MyTextField(text: "Email"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: MyTextField(text: "Password"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: MyTextField(text: "Confirm Password"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 60, right: 60),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: "By signing you agree to our",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 106, 66),
                            ),
                            children: [
                              TextSpan(
                                text: " Terms of use",
                                style: TextStyle(color: Colors.grey) ),
                                TextSpan(
                                  text:" and",
                                  style: TextStyle(color: Color.fromARGB(255, 0, 106, 66))
                                ),
                                TextSpan(
                                  text: " privacy policy.",
                                  style: TextStyle(color: Colors.grey)
                                )
                            ]
                          ),
                          ),
                      ),
                      SizedBox(height: 50,),
                      Button(
                        child: Text("Sign Up",
                        style: TextStyle(color: Colors.white),),
                        color: Color.fromARGB(255, 0, 106, 66),
                        routeName: '/home',
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(color: Colors.grey),
                          children: [
                            TextSpan(
                              text: "Login",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 106, 66,),
                                fontWeight: FontWeight.bold,
                            ),)
                          ]
                        ),
                        
                      ),
                      SizedBox(height: 20,)
                    ],
                  ),
                ),
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}
