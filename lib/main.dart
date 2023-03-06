import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hospital_receptionist/config/colors.dart';
import 'package:hospital_receptionist/screens/canceled_profile.dart';
import 'package:hospital_receptionist/screens/caseDetails_finish.dart';
import 'package:hospital_receptionist/screens/caseDetails_proccess.dart';
import 'package:hospital_receptionist/screens/create_calls.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MaterialApp(home: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Dcolors.white,
      //   leading: Icon(
      //     Icons.arrow_back,
      //     color: Dcolors.black,
      //   ),
      //   title: Text(
      //     "case Details",
      //     style: TextStyle(color: Dcolors.black),
      //   ),
      //   centerTitle: true,
      // ),
      body: createCalls(),
    );
  }
}
