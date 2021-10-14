import 'package:flutter/material.dart';
import 'package:food/commons/common.dart';
import 'package:food/pages/forgot_password_success.dart';
import 'package:food/provider/forgot_password_provider.dart';
import 'package:provider/provider.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

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
                title: "Forgot password",
                description:
                    "Enter your email address and we will send you a reset instructions."),
             Padding(
              padding: const EdgeInsets.only(top: 20, left: 0, right: 0, bottom: 30),
              child: ChangeNotifierProvider<ForgotPasswordProvider>(
                create: (context) => ForgotPasswordProvider(),
                child: Consumer<ForgotPasswordProvider>(
                  builder: (context, forgotPasswordProvider, child) =>TextField(

                    onChanged:  (newText)=>forgotPasswordProvider.myText = newText,
                    style: const TextStyle(fontSize: 18),
                    decoration: const InputDecoration(
                      labelText: "Email Address",
                      labelStyle: TextStyle(color: Colors.black54, fontSize: 18),
                      hintText: 'Your email',
                    ),
                  ),
                ),
              ),
            ),
            elevatedButtonCustom(
                title: "Reset Password",
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const ForgotPasswordSuccess(),));
                },
                sizeWidth: double.infinity),
          ],
        ),
      ),
    ));
  }
}
