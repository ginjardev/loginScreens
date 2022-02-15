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
                decoration: const BoxDecoration(
                    image: const DecorationImage(
                  image: AssetImage(
                    "images/butter.png",
                  ),
                )),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // SizedBox(height: 40,),
                Container(
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(60))),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 70.0),
                        child: const Text(
                          "Welcome back",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 33,
                            color: Color.fromARGB(255, 18, 80, 50),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30.0),
                        child: const Text(
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
                          child: const Icon(Icons.visibility_off),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Radio(
                                value: 1,
                                activeColor: const Color.fromARGB(255, 46, 112, 80),
                                groupValue: id,
                                onChanged: (index) {
                                  setState(() {
                                    radioButtonItem = 'ONE';
                                    id = 1;
                                  });
                                }),
                            const Expanded(child: const Text('Remember me')),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: const Text(
                                "Forgot password?",
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 48, 139, 45),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Button(
                        child: const Text(
                          "Login",
                          style: const TextStyle(color: Colors.white),
                        ),
                        routeName: '/home',
                        color: const Color.fromARGB(255, 0, 106, 66),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            const Text(
                              "Sign up",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 48, 139, 45),
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ]),
                      const SizedBox(
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
