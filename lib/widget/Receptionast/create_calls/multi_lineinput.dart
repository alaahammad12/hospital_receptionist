import 'package:flutter/material.dart';

class MultilineInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        textInputAction: TextInputAction.newline,
        keyboardType: TextInputType.multiline,
        maxLines: 6,
        decoration: InputDecoration(
          // border: InputBorde,
          hintText: 'Case Description ',
        ),
      ),
    );
  }
}
