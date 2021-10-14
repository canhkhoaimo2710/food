import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/commons/common.dart';
import 'package:food/resources/resource.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscure = true;

  void _showPass() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarSignCustom(Strings.titleSignIn,AppBar(),),
        body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(Strings.welcome,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30)),
              const Padding(
                padding: EdgeInsets.only(right: 30, top: 15, bottom: 20),
                child: Text(Strings.descriptionSignIn,
                    style: TextStyle(color: Colors.black54, fontSize: 18)),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(top: 30, left: 0, right: 0, bottom: 10),
                child: TextField(
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    labelStyle: TextStyle(color: Colors.black54, fontSize: 18),
                    hintText: 'Your email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 0, right: 0, bottom: 60),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                     TextField(
                      obscureText: _obscure,
                      style: const TextStyle(fontSize: 20),
                      decoration: const InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black54, fontSize: 18),
                        hintText: 'Your password',
                      ),
                    ),
                    IconButton(
                      icon: _obscure
                          ? const FaIcon(
                              FontAwesomeIcons.eye,
                              size: 20,
                            )
                          : const FaIcon(
                              FontAwesomeIcons.eyeSlash,
                              size: 20,
                            ),
                      onPressed: () {
                        _showPass();
                      },
                    ),
                  ],
                ),
              ),
              elevatedButtonCustom(
                title: "SIGN IN",
                onPressed: () {},
                sizeWidth: double.infinity,
              ),


              Padding(
                padding: const EdgeInsets.only(bottom: 15,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget> [
                    Text(
                      "Do you have a account ? ",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                  ],
                ),
              ),

              const SocialButton(),

            ],
          ),
        ),
      ),
    );
  }
}
