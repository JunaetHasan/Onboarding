import 'package:flutter/material.dart';

class ElevatedButtonE extends StatelessWidget {
  const ElevatedButtonE({
    super.key,  required this.child, required this.onPressed,
  });
final VoidCallback onPressed;
final Widget child;
  @override
  Widget build(BuildContext context) {

    //SizedBox(
     // width: double.infinity,)
    return ElevatedButton(onPressed: onPressed, child: child);
  }
}