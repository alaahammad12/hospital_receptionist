import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextFormField buildTextFormFieldWithSuffix(String hintText, Icon suffixIcon) {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      hintText: hintText,
      focusColor: const Color.fromRGBO(34, 199, 184, 1),
      suffixIcon: suffixIcon,
      /*DropdownButton(items: items, onChanged: onChanged)*/

      suffixIconColor: const Color.fromRGBO(34, 199, 184, 1),
    ),
  );
}
