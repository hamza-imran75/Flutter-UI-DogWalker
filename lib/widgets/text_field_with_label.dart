import 'package:flutter/material.dart';

class TextFieldWithLabel extends StatelessWidget {
  final String label;

  TextFieldWithLabel(this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
              fillColor: Colors.black12,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                borderSide: BorderSide(
                  style: BorderStyle.none,
                  width: 0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
