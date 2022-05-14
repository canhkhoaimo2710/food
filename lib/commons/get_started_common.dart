import 'package:flutter/material.dart';




Padding getStartedCommon({required final String image, required final String title, required final String description}) {
  return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children:<Widget> [
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Image.asset(image,fit: BoxFit.contain,height: 300,width: 350),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 25),
            child: Text(title,style: const TextStyle(
              fontSize: 25,fontWeight: FontWeight.bold
            ),),
          ),
          Text(description,style: const TextStyle(
              fontSize: 15,color: Colors.black26
          ),)
        ],
      ),
    );
  }

