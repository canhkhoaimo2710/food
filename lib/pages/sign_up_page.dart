import 'package:flutter/material.dart';
import 'package:food/commons/common.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBarSignCustom(
            "Forgot Password",
            AppBar(),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                titleAndDescriptionPage(
                    title: "Create Account",
                    description:
                    "Enter your Name, Email and Password for sign up."),
                textFieldCustom(label: "FULL NAME", obscureText:false ),
                textFieldCustom(label: "FULL NAME", obscureText: false),
                textFieldCustom(label: "FULL NAME", obscureText: true),
                elevatedButtonCustom(
                    title: "SIGN UP",
                    onPressed: () {},
                    sizeWidth: double.infinity),
              ],
            ),
          ),
        ),
    );
  }
}
