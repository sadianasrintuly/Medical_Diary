import 'package:flutter/material.dart';

import 'GauthamChandran.dart';

class Doctorlist extends StatefulWidget {
  const Doctorlist({super.key});

  @override
  State<Doctorlist> createState() => _DoctorlistState();
}

class _DoctorlistState extends State<Doctorlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff7E9680),
        title: Text(
          "Doctor's List",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 5,),
            Icon(Icons.more_vert_sharp, color: Colors.white),
            SizedBox(width: 8),
          ]
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
          padding: const EdgeInsets.only(top: 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GauthamChandran()),
                  );
                },
                child: Container(
                  width: 185,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Set border radius
                    color: Colors.white,
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, top: 12),
                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/Doctor1.jpeg'), height: 100, width: 180),
                          SizedBox(height: 2),
                          Text(
                            'Dr. Gautham Chandran \n '
                                '       Cardiologists',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
                Container(
                  width: 185,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Set border radius
                    color: Colors.white,
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, top: 12),
                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/Doctor2.jpeg'), height: 100, width: 200),
                          SizedBox(height: 2),
                          Text(
                            '  Dr. Puja Roy \n '
                                'Cardiologists',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 185,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // Set border radius
                      color: Colors.white,
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, top: 12),
                        child: Column(
                          children: [
                            Image(image: AssetImage('assets/Doctor3.jpeg'), height: 100, width: 200),
                            SizedBox(height: 2),
                            Text(
                              'Dr. Alia Chowduri \n '
                                  '        Dentist',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 185,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // Set border radius
                      color: Colors.white,
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, top: 12),
                        child: Column(
                          children: [
                            Image(image: AssetImage('assets/Doctor4.jpeg'), height: 100, width: 200),
                            SizedBox(height: 2),
                            Text(
                              'Dr. Kalam Hasan\n '
                                  '  Cardiologists',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 185,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // Set border radius
                      color: Colors.white,
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, top: 12),
                        child: Column(
                          children: [
                            Image(image: AssetImage('assets/Doctor5.jpeg'), height: 100, width: 200),
                            SizedBox(height: 2),
                            Text(
                              'Dr. Nasrin Sultana \n'
                                  '       Neurologist',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 185,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // Set border radius
                      color: Colors.white,
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, top: 12),
                        child: Column(
                          children: [
                            Image(image: AssetImage('assets/Doctor6.jpeg'), height: 100, width: 200),
                            SizedBox(height: 2),
                            Text(
                              '     Dr. Ren \n'
                                  'Psychiatrists',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
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
}
