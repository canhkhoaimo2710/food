import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/commons/appbar_main_page.dart';
import 'package:food/models/main_page_model.dart';

class MatchesPage extends StatefulWidget {
  const MatchesPage({Key? key}) : super(key: key);

  @override
  _MatchesPageState createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMainPage("Primer League", AppBar()),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,borderRadius:BorderRadius.circular(10) ,
              ),
              height: 90,
              child: Row(
                children: [
                  Container(child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text("Man Ct"),Container(width: 50,height:50,child: Image.asset("assets/Illustrations_2.png",),decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),)],
                  ),),
                  Container(),
                  Container(),
                ],
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
