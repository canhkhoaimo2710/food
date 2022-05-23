import 'package:flutter/material.dart';
import 'package:food/pages/page.dart';

class AppBarMainPage extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;

  const AppBarMainPage(this.title, this.appBar, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var currentFocus;
   void unfocus() {
     FocusScope.of(context).unfocus();
      // currentFocus = FocusScope.of(context);
      // if (!currentFocus.hasPrimaryFocus) {
      //   currentFocus.unfocus();
      // }
     print("abc");
    }
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      shadowColor: Colors.white.withOpacity(0.01),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          color: Colors.black,
          onPressed: unfocus,
        ),

      ],
      leading: IconButton(
        icon: const Icon(Icons.account_circle_rounded),
        color: Colors.black,
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignIn(),
            )),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
//  appBarSignInCustom ({required String title}){
//     return AppBar(
//       backgroundColor: Colors.white,
//       title: Text(title,style: const TextStyle(color: Colors.black),),
//       shadowColor: Colors.white.withOpacity(0.01),
//       centerTitle: true,
//       leading:  IconButton(icon: const Icon(Icons.arrow_back_ios_outlined),color: Colors.black, onPressed: () => Navigator.pop(
//         context,
//       ),),
//     );
//
// }
