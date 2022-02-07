import 'package:flutter/material.dart';
import 'package:login_ui_task/app.dart';
import 'package:login_ui_task/reusables/button.dart';
import 'package:login_ui_task/reusables/textField.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: const Text(
                      "The best app for your plant",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 65,
                      ),
                    ),
                  ),
                  const SizedBox(height: 120,),
                  Button(
                    color: Colors.white,
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 37, 97, 39)),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Button(
                    color:const Color.fromARGB(255, 74, 170, 79),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 238, 240, 238)),
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          )),
    );
  }
}
