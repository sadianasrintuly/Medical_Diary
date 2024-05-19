import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:medicalservice/api.dart';

import 'model_loin.dart';


class MedicalHistory extends StatefulWidget {
  MedicalHistory({required this.loginScreen});

  LoginScreen loginScreen;


  @override
  State<MedicalHistory> createState() => _MedicalHistoryState();
}

class _MedicalHistoryState extends State<MedicalHistory> {


  File? _image;
  String profileimage_Name = '';
  Future cameraImage() async {
    final pickedFile =
    await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {

        _image = File(pickedFile.path);
        profileimage_Name = pickedFile.path.split('/').last;
      } else {
        Text("data");
      }
    });

    print("image_name"+ profileimage_Name);
    getUploadImg(_image!);

  }

  Future galleryImage() async {
    final pickedFile =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        profileimage_Name = pickedFile.path.split('/').last;
      } else {
        Text("data");
      }
    });
    print("image_name"+ profileimage_Name);
    getUploadImg(_image!);
  }

  Future getUploadImg(File imageFile) async {

    // var url = Uri.parse(MyApi.updateProfileData);
    // Map<String, String> headers = {HttpHeaders.authorizationHeader: 'Bearer ${controller.token}',};


    final request =
    http.MultipartRequest('POST', Uri.parse("https://${API_Class().api}/Medical_Service/image_upload.php"))
    //..fields['profile_id']=controller.myId.toString()..headers.addAll(headers)
      ..files.add(await http.MultipartFile.fromPath('photo', imageFile.path));

    //for test
    try{
      var response = await request.send();

      if (response.statusCode == 200) {
        final snackBar = SnackBar(
          content: Text('Image Uploaded'),
          duration: Duration(seconds: 3), // Adjust the duration
        );

        prescription_data();

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        print("image uploaded");
      }else{
        //Get.snackbar('Failed', 'Please check in web');
        print("Image Uploaded Failed");
      }
    }catch(e){
      //Get.snackbar('Exception', e.toString());
      print('my exception: $e');
    }

  }


  prescription_data()async {
    final response = await http.post(
      Uri.parse("https://${API_Class().api}/Medical_Service/registration.php"),
      body: jsonEncode(<String, dynamic>{
        "user_id" : widget.loginScreen.phoneOrGmail,
        "img" : profileimage_Name,
        "img_of" : "Prescription"
      }),
    );

    print(response.body);
  }


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
                GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Choose an option"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                leading: Icon(Icons.photo_library),
                                title: Text(
                                  "Pick from Gallery",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                onTap: () {
                                  galleryImage();
                                  Navigator.pop(context); // Close the dialog
                                },
                              ),
                              Center(
                                child: Text(
                                  "--------------OR---------------",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.photo_camera),
                                title: Text(
                                  "Take a Photo",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                onTap: () {
                                  cameraImage();
                                  Navigator.pop(context); // Close the dialog
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );

                  },
                    child: _buildImageOption(
                        'assets/Upload Prescription.png',
                        "Upload \n Prescription"
                    )
                ),
                _buildImageOption('assets/View Medical Record.png', "View Medical Record"),
              ],
            ),
            const SizedBox(height: 25), // Adjusted the height
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
      height: 180,
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
