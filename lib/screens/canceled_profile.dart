import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hospital_receptionist/config/colors.dart';

import 'caseDetails_proccess.dart';

class canceled extends StatefulWidget {
  const canceled({super.key});

  @override
  State<canceled> createState() => _canceledState();
}

class _canceledState extends State<canceled> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 250.0),
        child: Column(
          children: [
            Image(image: AssetImage("lib/images/Group 4460.png")),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Column(
                children: [
                  Text(
                    "The request has been canceled ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 54, 243, 142), fontSize: 20),
                  ),
                  Text(
                    "successfully ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 54, 243, 142), fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 120, vertical: 16)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 34, 199, 184)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                onPressed: () {
                  Get.to(caseDetails());
                },
                child: Text(
                  "Back to home ",
                  style: TextStyle(fontSize: 20, color: Dcolors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
