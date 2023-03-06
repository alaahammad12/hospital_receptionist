import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hospital_receptionist/screens/canceled_profile.dart';
import '../config/colors.dart';
import '../widget/Receptionast/raw_receptionist.dart';
import 'caseDetails_proccess.dart';

class caseDetailsFinish extends StatelessWidget {
  const caseDetailsFinish({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Dcolors.white,
          leading: IconButton(
            color: Dcolors.black,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.to(caseDetails());
            },
          ),
          title: Text(
            "case Details",
            style: TextStyle(color: Dcolors.black),
          ),
          centerTitle: true,
        ),
        backgroundColor: Dcolors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
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
                          value: ' Finished',
                        ),
                      ),
                      Icon(
                        Icons.check,
                        color: Dcolors.green,
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                "Case Description",
                style: TextStyle(color: Dcolors.grey, fontSize: 18),
              ),
              Text(
                "Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
                style: TextStyle(color: Dcolors.Darkgrey, fontSize: 18),
              ),
              SizedBox(height: height * .4),
              TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 60)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Dcolors.logoutgrey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                onPressed: () {
                  Get.to(canceled());
                },
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "case has been logged out",
                    style:
                        TextStyle(color: Dcolors.textlogoutgrey, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
