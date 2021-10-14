import 'package:flutter/material.dart';


SizedBox elevatedButtonCustom ({required String title,required Function() onPressed,required double sizeWidth }){
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
