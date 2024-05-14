import 'package:flutter/material.dart';

class AppointmentBooking extends StatefulWidget {
  const AppointmentBooking({Key? key}) : super(key: key);

  @override
  State<AppointmentBooking> createState() => _AppointmentBookingState();
}

class _AppointmentBookingState extends State<AppointmentBooking> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  String? selectedGender;
  String? selectedSpecialist;


  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    locationController.dispose();
    dateController.dispose();
    timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xff7E9680),
        title: Text(
          "Booking",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
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
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      labelText: 'Your Name',
                      labelStyle: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: ageController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      labelText: 'Your Age',
                      labelStyle: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          '\n Select Gender',
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      RadioListTile<String>(
                        title: Text('Male'),
                        value: 'Male',
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: Text('Female'),
                        value: 'Female',
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: Text('Others'),
                        value: 'Others',
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: locationController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.location_on, color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      labelText: 'Your Location',
                      labelStyle: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: 'Select Specialist',
                        labelStyle: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                      ),
                      value: selectedSpecialist,
                      onChanged: (value) {
                        setState(() {
                          selectedSpecialist = value!;
                        });
                      },
                      items: <String>['A', 'B', 'C', 'D', 'E'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),

                SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: dateController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.date_range, color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      labelText: 'Date Selection',
                      labelStyle: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: timeController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.access_time_filled, color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      labelText: 'Time Selection',
                      labelStyle: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 60, height: 50),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                       },
                    child: Text(
                      "Confirm Booking",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
