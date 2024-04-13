import 'package:flutter/material.dart';
class WorkingScreen extends StatefulWidget {
  const WorkingScreen({super.key});

  @override
  State<WorkingScreen> createState() => _WorkingScreenState();
}

class _WorkingScreenState extends State<WorkingScreen> {
static const String chauFont = 'ChauPhilomeneOne';
static const String poppinsFont = 'Poppins';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff9E616A),
          ),
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),

        child: Center(
          child: Text("Sorry for the inconvinience, we are working on this module. It will be available shortly🙄",
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