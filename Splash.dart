import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Onboarding_Screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>onboardingscreen(),));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("assets/images/pacers.PNG") 
              
            ),
            Container(
              child: Text(
                'PACERS LEARNING HUB',
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.blueGrey),
              ),
            )
          ],
          
        ),
        
      ),
    );
  } 
}