import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        customButton("CONNECT WITH FACEBOOK","assets/logo_facebook.jpg",0xFF0000BB),
        SizedBox(height: 20,),
        customButton("CONNECT WITH GOOGLE","assets/logo_google.jpg",0xFF0066FF)
      ],
    );
  }
}
InkWell customButton(String title, String image,int color){
  return InkWell(
     onTap: () {},
     child: Ink(
       decoration: BoxDecoration(
         color: Color(color),
           borderRadius: BorderRadius.circular(5)
       ),
       // color: Color(0xFF397AF3),
       child: Padding(
         padding: const EdgeInsets.only(left: 25,right: 20),
         child: SizedBox(
           height: 45,
           width: double.infinity,
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Image.asset(image,fit:  BoxFit.cover,width: 25,height: 25,),
               const SizedBox(width: 12),
               Expanded(child: Center(child: Text(title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))),
             ],
           ),
         ),
       ),
     ),
   );


}
