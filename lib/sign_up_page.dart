import 'package:dog_walker/widgets/text_field_with_label.dart';
import 'package:flutter/material.dart';

import './widgets/build_material_button.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int _radioValue1 = -1;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Container(
          margin:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * .15),
          child: Text(
            'Get Started',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 22),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          _buildTextFields(),
          _buildRadioButtons(),
          SizedBox(
            height: 20,
          ),
          BuildMaterialButton(
            title: 'Sign Up',
            btnColor: Colors.yellow,
            method: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  Column _buildRadioButtons() {
    return Column(
      children: <Widget>[
        _buildRadioWithLabel("I'm looking for a dog walker", 1),
        _buildRadioWithLabel("I want to be a dog walker", -1)
      ],
    );
  }

  Widget _buildRadioWithLabel(String label, int radVal) {
    return RadioListTile(
      title: Text(label),
      groupValue: _radioValue1,
      value: radVal,
      onChanged: _handleRadioValueChange1,
      activeColor: Colors.yellow,
    );
  }

  Padding _buildTextFields() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: <Widget>[
          TextFieldWithLabel('Name'),
          TextFieldWithLabel('Email'),
          TextFieldWithLabel('Password'),
          TextFieldWithLabel('Confirm Password'),
        ],
      ),
    );
  }
}
