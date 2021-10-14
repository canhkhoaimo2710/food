import 'package:flutter/material.dart';

Padding textFieldCustom({required String label, required bool obscureText}) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 0, right: 0, bottom: 30),
    child: TextField(
      obscureText: obscureText,
      style: const TextStyle(fontSize: 18),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black54, fontSize: 18),
        // hintText: hintText,
      ),
    ),
  );
}
