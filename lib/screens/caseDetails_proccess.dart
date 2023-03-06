import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_receptionist/screens/create_calls.dart';

import '../config/colors.dart';
import '../widget/Receptionast/raw_receptionist.dart';
import 'caseDetails_finish.dart';

class caseDetails extends StatefulWidget {
  const caseDetails({super.key});

  @override
  State<caseDetails> createState() => _caseDetailsState();
}

class _caseDetailsState extends State<caseDetails> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Dcolors.white,
        leading: IconButton(
          color: Dcolors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.to(createCalls());
          },
        ),
        title: Text(
          "case Details",
          style: TextStyle(color: Dcolors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stats(),
            Text(
              "Case Description",
              style: TextStyle(color: Dcolors.grey, fontSize: 18),
            ),
            Text(
              "Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
              style: TextStyle(color: Dcolors.Darkgrey, fontSize: 18),
            ),
            SizedBox(height: height * .4),
            MaterialButton(
              onPressed: () {
                Get.to(caseDetailsFinish());
              },
              color: Dcolors.DarkRed,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Logout",
                      style: TextStyle(color: Dcolors.white),
                    ),
                    SizedBox(
                      width: width * .03,
                    ),
                    Icon(
                      Icons.logout,
                      color: Dcolors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
