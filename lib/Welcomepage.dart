import 'package:flutter/material.dart';
import 'package:medicalservice/regScreen.dart';


import 'loginScreen.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({Key? key}) : super(key: key);

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
              ]
          ),
        ),
        child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 110.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(image: AssetImage('assets/logo.png')),
                  ),
                ),
              ),
              SizedBox(
                height: 55,
              ),
              const Text('Welcome',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),
              const SizedBox(height: 30,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const loginScreen()));
                },
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Center(child: Text('SIGN IN',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),),
                ),
              ),
              const SizedBox(height: 30,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  RegScreen()));
                },
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Center(child: Text('SIGN UP',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),),
                ),
              ),
              const Spacer(),
              const Text('OR Login',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              ),//
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35,
                    child: Image(image: AssetImage('assets/google.png')),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    height: 37,
                    child: Image(image: AssetImage('assets/facebook.png')),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    height: 35,
                    child: Image(image: AssetImage('assets/linkedin .png')),
                  ),
                ],
              ),
              const SizedBox(height: 30,),


            ]
        ),
      ),

    );
  }
}
