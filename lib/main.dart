
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicalservice/Welcomepage.dart';


import 'DoctorProfile.dart';
import 'Doctorlist.dart';
import 'Maindeshboard.dart';
import 'MedicalHistory.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: ('inter'),
        useMaterial3: true,
      ),
      home: Welcomepage(),
    );
  }
}
