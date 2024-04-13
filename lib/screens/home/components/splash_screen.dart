import 'dart:async';

import 'package:flutter/material.dart';
import 'package:furniture_app/screens/home/components/LoginScreen.dart';
// import 'package:furniture_app/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
// const String SplashLogo = 'furniture_project_x\\assets\\icons\\splash_logo.jpeg';
const String chauFont = 'ChauPhilomeneOne';
const String poppinsFont = 'Poppins';
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Duration of the splash screen
    Timer(const Duration (seconds: 2),
     () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> LoginScreen()))
     );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(
            child: Column(
              children: [
                Text("Furniture Project X",
                style:TextStyle(
                  fontFamily: chauFont,
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                  color: Color(0xff9E616A)
                ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text("Your One stop Furniture Buying Platform",
                style:TextStyle(
                  fontFamily: chauFont,
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Color(0xff9E616A)
                ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}