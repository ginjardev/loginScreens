import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget child;
  //final Function onPressed;
  final String routeName;
  Color color = Colors.greenAccent;

  Button({
    required this.child,
    //required this.onPressed,
    required this.color,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: (MaterialButton(
        onPressed: () {
          Navigator.of(context).pushNamed(routeName);
        },
        child: child,
        color: color,
        minWidth: MediaQuery.of(context).size.width * 0.90,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(20),
        )),
      )),
    );
  }
}
