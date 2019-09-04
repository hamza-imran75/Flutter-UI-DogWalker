import 'package:flutter/material.dart';

class BuildMaterialButton extends StatelessWidget {
  final String title;
  final Function method;
  final Color btnColor;

  BuildMaterialButton(
      {this.title, this.method, this.btnColor = Colors.black12});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: method,
      child: Text(title, style: TextStyle(fontSize: 20)),
      color: btnColor,
      elevation: 0,
      minWidth: 250,
      height: 40,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    );
  }
}
