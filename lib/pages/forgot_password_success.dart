import 'package:flutter/material.dart';
import 'package:food/commons/common.dart';
import 'package:food/provider/forgot_password_provider.dart';
import 'package:provider/provider.dart';

class ForgotPasswordSuccess extends StatelessWidget {
  const ForgotPasswordSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarSignCustom(
        "Forgot Password",
        AppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: ChangeNotifierProvider<ForgotPasswordProvider>(
                create: (context) => ForgotPasswordProvider(),
                child: Consumer<ForgotPasswordProvider>(
                  builder: (context, forgotPasswordProvider, child) =>
                      titleAndDescriptionPage(
                    title: "Reset Email Sent",
                    description: "We have sent a instructions email to " +
                        forgotPasswordProvider.myText,
                  ),
                ),
              ),
            ),
            elevatedButtonCustom(
                title: "SEND AGAIN",
                onPressed: () {},
                sizeWidth: double.infinity)
          ],
        ),
      ),
    );
  }
}
