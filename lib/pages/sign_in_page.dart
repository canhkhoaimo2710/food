import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/commons/common.dart';
import 'package:food/pages/page.dart';
import 'package:food/pages/sign_up_page.dart';
import 'package:food/provider/sign_in_provider.dart';
import 'package:food/resources/resource.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


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
              titleAndDescriptionPage(title: Strings.titleSignIn,description: Strings.descriptionSignIn),
              const Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 0, right: 0, bottom: 10),
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
                padding: const EdgeInsets.only(top: 30, left: 0, right: 0, bottom: 20),
                child: ChangeNotifierProvider<SignInProvider>(
                  create: (context) => SignInProvider(),
                  child: Consumer<SignInProvider>(builder: (context, signInProvider, child) {
                   return Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: [
                        TextField(
                          obscureText: signInProvider.obscure,
                          style: const TextStyle(fontSize: 20),
                          decoration: const InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.black54, fontSize: 18),
                            hintText: 'Your password',
                          ),
                        ),
                        IconButton(
                          icon: signInProvider.obscure
                              ? const FaIcon(
                            FontAwesomeIcons.eye,
                            size: 20,
                          )
                              : const FaIcon(
                            FontAwesomeIcons.eyeSlash,
                            size: 20,
                          ),
                          onPressed: () {
                            signInProvider.showPass();
                          },
                        ),
                      ],
                    );
                  },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ForgotPasswordPage();
                      }));
                    },
                    child: const Text(
                      "Forget Password ? ",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
              elevatedButtonCustom(
                title: "SIGN IN",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage(),));
                },
                sizeWidth: double.infinity,
              ),


              Padding(
                padding: const EdgeInsets.only(bottom: 15,top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  <Widget> [
                    const Text(
                      "Do you have a account ? ",
                      style: TextStyle(fontSize: 14),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text(
                    "Or",
                    style: TextStyle(fontSize: 20),
                  ),
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
