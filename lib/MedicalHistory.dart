import 'package:flutter/material.dart';

class MedicalHistory extends StatefulWidget {
  const MedicalHistory({super.key});

  @override
  State<MedicalHistory> createState() => _MedicalHistoryState();
}

class _MedicalHistoryState extends State<MedicalHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff671F43),
              Color(0xffFEC6C3),
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Text(
                'Medical History',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 70,),
            const SizedBox(height: 50), // Adjusted the height
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImageOption('assets/Upload Prescription.png', "Upload \n Prescription"),
                _buildImageOption('assets/View Medical Record.png', "View Medical Record"),
              ],
            ),
            const SizedBox(height: 40), // Adjusted the height
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImageOption('assets/Add New Record.png', "Add New \n Record"),

              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageOption(String imagePath, String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 168,
      width: 185,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: SizedBox(
              height: 75, // Set the desired height for the image
              width: 90, // Set the desired width for the image
              child: Image.asset(
                imagePath,
                height: 100, // Specify the height of the image
                width: 100, // Specify the width of the image
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
