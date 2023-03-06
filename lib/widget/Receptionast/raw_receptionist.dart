import 'package:flutter/material.dart';

import '../../config/colors.dart';

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Info(
          title: 'Patient Name',
          value: 'Ebrahem Khaled',
        ),
        Info(
          title: 'Age ',
          value: '24 Years',
        ),
        Info(
          title: 'Phone Number',
          value: '254110241423',
        ),
        Info(
          title: 'Date ',
          value: '24 . 04 . 2021',
        ),
        Row(
          children: [
            Expanded(
              child: Info(
                title: ' Status',
                value: ' Process',
              ),
            ),
            Icon(
              Icons.timelapse,
              color: Colors.orange,
            ),
          ],
        ),
      ],
    );
  }
}

class Info extends StatelessWidget {
  Info({required this.title, required this.value});

  final String? title, value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title!,
          style: TextStyle(color: Dcolors.grey, fontSize: 18),
        ),
        Text(
          value!,
          style: TextStyle(color: Dcolors.black, fontSize: 18),
        ),
      ]),
    );
  }
}
