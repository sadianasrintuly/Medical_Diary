import 'package:flutter/material.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({super.key});

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff7E9680),
        title: Text(
          "Doctor's Profile",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff671F43),
              Color(0xff671F43),
              Color(0xff671F43),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    child: Image(image: AssetImage('assets/Doctor.jpg')),
                  ),

                  Text('\n \n \n Doctor\'s \n '
                        '      Profile...',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Container(
                    width: 350,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), // Set border radius
                      color: Colors.white,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 14, top: 8),
                        child: Row(
                          children: [
                             Image.asset(
                                'assets/Doctors information.png', // Replace 'your_image.png' with your asset image path
                               width: 50,
                               height: 55,
                                fit: BoxFit.cover,
                              ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Text(
                              'Doctor\'s Details',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 6)),
                  Container(
                    width: 350,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), // Set border radius
                      color: Colors.white,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, top: 8),
                        child: Row(
                          children: [

                              Image.asset(
                                'assets/Doctor Catagory.jpg', // Replace 'your_image.png' with your asset image path
                                width: 50,
                                height: 52,
                                fit: BoxFit.cover,
                              ),

                            Padding(padding: EdgeInsets.only(left: 10)),
                            Text(
                              'Search By Doctor\'s Category',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
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
      height: 120,
      width: 350,
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
                width: 200, // Specify the width of the image
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
