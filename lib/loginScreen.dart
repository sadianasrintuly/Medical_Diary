import 'dart:convert';

import 'package:flutter/material.dart';
import 'Maindeshboard.dart';
import 'package:http/http.dart' as http;

import 'model_loin.dart';

class loginScreen extends StatefulWidget {



  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController phoneOrGmailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
 late LoginScreen loginScreen;
   insertApi() async {

     print("call");
     final response = await http.post(
       Uri.parse("http://192.168.0.5/Medical_Service/login.php"),
       body: jsonEncode(<String, dynamic>{
         "phone_or_gmail": phoneOrGmailController.text,
       }),
     );

     loginScreen = loginScreenFromJson(response.body);

     print(loginScreen.password==passwordController.text);

     if (loginScreen.password==passwordController.text){
       Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => const MainDashboard())
       );

     }

     print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xff671F43),
                      Color(0xffFEC6C3),
                    ]
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Please\n'
                      '          Sign in ...',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                  ),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: phoneOrGmailController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.check, color: Colors.grey,),
                            prefixIcon: Icon(Icons.email_rounded, color: Colors.grey,),
                            label: Text(
                              'Gmail',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffB81736),
                              ),
                            )
                        ),
                      ),
                      TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.visibility_off, color: Colors.grey,),
                            prefixIcon: Icon(Icons.lock, color: Colors.grey,),
                            label: Text(
                              'Password',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffB81736),
                              ),
                            )
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xff281537),
                          ),
                        ),
                      ),
                      const SizedBox(height: 70,),
                      GestureDetector(
                        onTap: (){
                          insertApi();
                        },
                        child: Container(
                          height: 55,
                          width: 280,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xff671F43),
                                  Color(0xff671F43),
                                ]
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 100,),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Don't have account?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),
                            ),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
