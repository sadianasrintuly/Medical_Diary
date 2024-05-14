import 'package:flutter/material.dart';

import 'Appointmentbooking.dart';
import 'DoctorProfile.dart';
import 'MedicalHistory.dart';
import 'regScreen.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
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
                'Dashboard ...',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 80),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MedicalHistory()),
                    );
                  },
                  child: _buildImageOption('assets/Medical history.png', "Medical History"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DoctorProfile()),
                    );
                  },
                  child: _buildImageOption('assets/Doctor Profile.png', "Doctor's Profile"),
                ),
              ],
            ),

            const SizedBox(height: 40), // Adjusted the height
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AppointmentBooking()),
                    );
                  },
                  child:
                _buildImageOption('assets/Appointment Booking.png', "Appointment\nBooking"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DoctorProfile()),
                    );
                  },
                  child:_buildImageOption('assets/Telemedicine.png', "Telemedicine"),
                ),
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
