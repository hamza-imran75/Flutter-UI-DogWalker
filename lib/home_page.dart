import 'package:dog_walker/sign_up_page.dart';
import 'package:flutter/material.dart';

import './widgets/text_field_with_label.dart';
import './widgets/build_material_button.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildRichText(),
              _buildDogWalkerImage(),
              _buildTextFields(),
              BuildMaterialButton(
                title: 'Login',
                method: () {},
              ),
              BuildMaterialButton(
                title: 'Sign Up',
                btnColor: Colors.yellow,
                method: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text('Forgot password')
            ],
          ),
        ),
      ),
    );
  }



  Padding _buildTextFields() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextFieldWithLabel('E-mail'),
          TextFieldWithLabel('Password'),
        ],
      ),
    );
  }

  Container _buildDogWalkerImage() {
    return Container(
      child: Image.asset('assets/images/dogwalker_img.png'),
      height: 200,
      width: 200,
    );
  }

  RichText _buildRichText() {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: 'dog',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: 'walker',
            style: TextStyle(color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}


