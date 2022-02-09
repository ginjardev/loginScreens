import 'package:flutter/material.dart';
import 'package:login_ui_task/app.dart';
import 'package:login_ui_task/reusables/button.dart';
import 'package:login_ui_task/reusables/textField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

enum Status { Remember }

class _LoginPageState extends State<LoginPage> {
  Status? _character = Status.Remember;
  int id = 1;
  String radioButtonItem = 'ONE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "images/green.jpg",
          ),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: [
            Positioned(
              left: MediaQuery.of(context).size.width * 0.39,
              top: 120,
              child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/butter.png",
                      ),
                      )
                      ),
            ),
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // SizedBox(height: 40,),
                Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30))),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: Text(
                          "Welcome back",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 33,
                            color: Color.fromARGB(255, 18, 80, 50),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "Login to your account",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: MyTextField(text: "Email / Username"),
                      ),
                      // SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: MyTextField(
                          text: "Password",
                          child: Icon(Icons.visibility_off),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Radio(
                                value: 1,
                                activeColor: Color.fromARGB(255, 46, 112, 80),
                                groupValue: id,
                                onChanged: (index) {
                                  setState(() {
                                    radioButtonItem = 'ONE';
                                    id = 1;
                                  });
                                }),
                            Expanded(child: Text('Remember me')),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Forgot password?",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 48, 139, 45),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Button(
                          child: Text("Login",
                          style: TextStyle(color: Colors.white),),
                          onPressed: () {},
                          color: Color.fromARGB(255, 0, 106, 66)),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                color: Color.fromARGB(255, 48, 139, 45),
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
