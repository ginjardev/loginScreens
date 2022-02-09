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
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30)
                          )
                          ),
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
