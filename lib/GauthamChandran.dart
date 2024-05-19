import 'package:flutter/material.dart';

import 'Appointmentbooking.dart';

class GauthamChandran extends StatefulWidget {
  const GauthamChandran({super.key});

  @override
  State<GauthamChandran> createState() => _GauthamChandranState();
}

class _GauthamChandranState extends State<GauthamChandran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff7E9680),
        title: Text(
          "Doctor's Profile",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 5,),
          Icon(Icons.more_vert_sharp, color: Colors.white),
          SizedBox(width: 8),
        ],
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
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/Doctor1.jpeg'),
                    height: 180,
                    width: 180,
                  ),
                  Text(
                    '   \n Dr. Gautham Chandran \n '
                        'Cardiologists \n MBBS, MD (Anaesthesia)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('\n About',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            SizedBox(height: 2),
            SizedBox(width: 6),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20), // Adjust the horizontal padding as needed
                child: Text(
                  'Dr. Gautham Chandran is a cardiologist in Nashville & affiliated with multiple hospitals in the area. He received his medical degree from Duke University School of Medicine and has been in practice for more than 20 years.',
                  textAlign: TextAlign.justify, // Set text alignment to justify
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, color: Colors.white),
                  Text('Address',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              SizedBox(width: 6),
              Text(
                'House # 2, Road # 5, Green Road, Dhanmondi, \n '
                    '                        Dhaka, Bangladesh',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),


              SizedBox(height: 25),
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 6)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AppointmentBooking()),
                      );
                    },
                    child:  Container(
                    width: 350,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), // Set border radius
                      color: Colors.white,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/Appointment Booking.png', // Replace 'your_image.png' with your asset image path
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Text(
                              '    Book For Appointment',
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
          ),
        ],
      ),
    );
  }
}
