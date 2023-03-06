import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hospital_receptionist/screens/caseDetails_proccess.dart';

import '../widget/Receptionast/create_calls/buildTextFormFieldUser.dart';
import '../widget/Receptionast/create_calls/buildTextFormFieldWithSuffix.dart';
import '../widget/Receptionast/create_calls/multi_lineinput.dart';

class createCalls extends StatefulWidget {
  const createCalls({Key? key}) : super(key: key);

  @override
  State<createCalls> createState() => _createCallsState();
}

class _createCallsState extends State<createCalls> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "create call",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background1.png"))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  buildTextFormFieldUser("Last Name"),
                  const SizedBox(height: 8),
                  buildTextFormFieldUser("Phone Number"),
                  const SizedBox(height: 8),
                  buildTextFormFieldUser("E-mail"),
                  const SizedBox(height: 8),
                  buildTextFormFieldWithSuffix(
                      "Status", Icon(Icons.arrow_drop_down)),

                  const SizedBox(height: 8),
                  MultilineInput(),
                  const SizedBox(height: 200),
                  MaterialButton(
                    onPressed: () {
                      Get.to(caseDetails());
                    },
                    textColor: Colors.white,
                    color: const Color.fromRGBO(34, 199, 184, 1),
                    minWidth: double.infinity,
                    height: 45,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.white)),
                    child: const Text(
                      "Send Calls",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  // const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
