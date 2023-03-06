import 'package:flutter/material.dart';

TextFormField buildTextFormFieldUser(String hintText) {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      hintText: hintText,
      focusColor: const Color.fromRGBO(34, 199, 184, 1),
    ),
  );
}
