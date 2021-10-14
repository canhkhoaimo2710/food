import 'package:flutter/material.dart';

Column titleAndDescriptionPage(
    {required String title, required String description}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(title, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 30)),
       Padding(
        padding: const EdgeInsets.only(right: 30, top: 15, bottom: 10),
        child: Text(description,
            style: const TextStyle(color: Colors.black54, fontSize: 18)),
      ),
    ],
  );
}
