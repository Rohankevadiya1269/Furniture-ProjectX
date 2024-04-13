import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/screens/home/components/ForgotPass.dart';
import 'package:furniture_app/screens/home/components/LoginScreen.dart';
import 'package:furniture_app/screens/home/components/Working.dart';
import 'package:furniture_app/screens/home/components/splash_screen.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
            )),
        centerTitle: true,
        title: const Text(
          'MY ACCOUNT',

          style: TextStyle(fontFamily:chauFont,color:  Color(0xff9E616A)),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 135,
            color: Color(0xff9E616A),
            child: Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/background/pofile.jpg'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "JOHN DOE",
                        style: TextStyle(
                          fontFamily: chauFont,
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Text(
                          'john@email.com',
                          style: TextStyle(color: Colors.white,fontFamily: chauFont),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
           Padding(
            padding: EdgeInsets.fromLTRB(25, 6.5, 25, 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Account Setting',
                  style: TextStyle(
                      color: Color(0xff9E616A),
                      fontFamily: chauFont,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkingScreen(),
                  ),
                );
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff9E616A),
                  ),
                )
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.fromLTRB(25, 6.5, 25, 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Download Options',
                  style: TextStyle(
                      color: Color(0xff9E616A),
                      fontFamily: chauFont,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkingScreen(),
                  ),
                );
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff9E616A),
                  ),
                )
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.fromLTRB(25, 6.5, 25, 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notifications Setting',
                  style: TextStyle(
                      color: Color(0xff9E616A),
                      fontFamily: chauFont,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkingScreen(),
                  ),
                );
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff9E616A),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
           Padding(
            padding: EdgeInsets.fromLTRB(25, 6.5, 25, 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Privacy & Policy',
                  style: TextStyle(
                      color: Color(0xff9E616A),
                      fontFamily: chauFont,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkingScreen(),
                  ),
                );
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff9E616A),
                  ),
                )
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.fromLTRB(25, 6.5, 25, 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Help Center',
                  style: TextStyle(
                      color: Color(0xff9E616A),
                      fontFamily: chauFont,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkingScreen(),
                  ),
                );
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff9E616A),
                  ),
                )
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.fromLTRB(25, 6.5, 25, 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'About Us',
                  style: TextStyle(
                      color: Color(0xff9E616A),
                      fontFamily: chauFont,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkingScreen(),
                  ),
                );
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff9E616A),
                  ),
                )
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.fromLTRB(25, 6.5, 0, 6.5),
            child: GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Delete Account',
                    style: TextStyle(
                        color: Colors.red,
                        fontFamily: chauFont,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 60),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff9E616A),
              minimumSize: const Size(265, 52),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            child: const Text(
              'Log Out',
              style: TextStyle(fontSize: 19,fontFamily: chauFont,color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}