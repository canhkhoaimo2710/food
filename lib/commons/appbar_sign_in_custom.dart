import 'package:flutter/material.dart';

class AppBarSignCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;

  const AppBarSignCustom(this.title, this.appBar, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      shadowColor: Colors.white.withOpacity(0.01),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_outlined),
        color: Colors.black,
        onPressed: () => Navigator.pop(
          context,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
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
