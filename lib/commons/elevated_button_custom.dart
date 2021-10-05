import 'package:flutter/material.dart';


class ElevatedButtonCustom extends StatelessWidget {
 final String title;
 final Function() onPressed;
 final double sizeWidth;
 // final Function() onTap;


  const ElevatedButtonCustom(this.title,this.onPressed, this.sizeWidth, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
      width:sizeWidth,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              primary: const Color(0xFF009933)),
          onPressed: (){
            onPressed.call();
          },
          child: Text(
            title,
            style: const  TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          )),
    );
  }
}
