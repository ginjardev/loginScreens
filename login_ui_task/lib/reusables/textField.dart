import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Widget child;
  final String text;

  MyTextField({required this.text, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(35),)),
          suffixIcon: child,
          suffixIconColor: Color.fromARGB(255, 15, 75, 13),
          hintText: text,
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 48, 139, 45),
            ),
          fillColor: Color.fromARGB(255, 218, 213, 207), 
          filled: true,
        ),
        ),
    );
  }
}
