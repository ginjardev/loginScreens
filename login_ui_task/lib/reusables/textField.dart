import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  Widget? child;
  final String text;

  MyTextField({required this.text, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amberAccent.shade100,
      height: 45,
      child: TextField(
        style: TextStyle(fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(50)
          ),
          borderSide: BorderSide.none,
          ),
          suffixIcon: child,
          suffixIconColor: Color.fromARGB(255, 34, 180, 29),
          hintText: text,
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 48, 139, 45),
          ),
          fillColor: Color.fromARGB(255, 236,242,240),
          filled: true,
        ),
      ),
    );
  }
}
