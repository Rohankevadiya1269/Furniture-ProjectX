import 'package:flutter/material.dart';
import 'package:furniture_app/screens/home/components/LoginScreen.dart';
import 'package:furniture_app/screens/home/components/splash_screen.dart';
class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff9E616A),
          ),
        ),
        title: const Text(
          'Go Back To Login Screen',
          style: TextStyle(color: Color(0xff9E616A),fontFamily: chauFont,fontWeight: FontWeight.w400
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),

        child: Center(
          child: Text("OOPS !!! There seems an error, we will fix it ASAP :) 🙄",
          style: TextStyle(
            fontFamily: chauFont,
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Color(0xff9E616A)
          ),
          ),
        ),
      ),
    );
  }
}