import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  Color color = Colors.greenAccent;


  Button({
    required this.child,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: (
        MaterialButton(
        onPressed: () {},
        child: child,
        color: color,
        minWidth: MediaQuery.of(context).size.width * 0.90,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
            )
        ),
        
      )),
    );
  }
}
