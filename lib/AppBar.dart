import 'package:flutter/material.dart';
import 'package:sw_app/Utils/ImagesE.dart';
AppBar appbar({Widget? leading, List<Widget>? actions, required bool automaticallyImplyLeading}) {
  return AppBar(
    backgroundColor: const Color(0xffD9D9D9),
    toolbarHeight: 60,
    title: Center(
        child:
        Container(
          width: 65,
          height:50,
          margin: const EdgeInsetsDirectional.only(top: 9,bottom: 9),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image: AssetImage(ImagesE.logoE),
                fit: BoxFit.cover,
              )
          ),
        )),
    automaticallyImplyLeading: automaticallyImplyLeading,
    leading: leading,
    actions: actions,
    iconTheme: const IconThemeData(color: Colors.black), // Set the color of the back arrow to black

  );
}