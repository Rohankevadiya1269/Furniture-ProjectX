
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/home/components/UserProfile.dart';
import 'package:furniture_app/screens/home/components/body.dart';
import 'package:furniture_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  static const String chauFont = 'ChauPhilomeneOne';
  static const String poppinsFont = 'Poppins';
  @override
  Widget build(BuildContext context) {
    // It help us to  make our UI responsive
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 10/0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
          child: const Icon(
            Icons.account_circle,
            // color: Color(0xff9E616A),
          ),
        ),
        
        title: const Text(
          'Furniture Project X',
          style: TextStyle(fontFamily: chauFont,fontWeight: FontWeight.w400
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
  