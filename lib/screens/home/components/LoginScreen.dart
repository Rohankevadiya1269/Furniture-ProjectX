import 'package:flutter/material.dart';
import 'package:furniture_app/screens/home/components/ForgotPass.dart';
import 'package:furniture_app/screens/home/components/splash_screen.dart';
import 'package:furniture_app/screens/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;
  static const String chauFont = 'ChauPhilomeneOne';
  static const String poppinsFont = 'Poppins';

  bool? _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SplashScreen()));
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff9E616A),
          ),
        ),
        title: const Text(
          'LOG IN',
          style: TextStyle(
              color: Color(0xff9E616A),
              fontFamily: chauFont,
              fontWeight: FontWeight.w400),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 35, 0, 20),
            child: Center(
              child: Text(
                'Furniture Project X',
                style: TextStyle(
                    color: Color(0xff9E616A),
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    fontFamily: chauFont),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 25, 10, 25),
            child: Text(
              textAlign: TextAlign.center,
              'Enter your log in details to access your account',
              style: TextStyle(
                  fontSize: 22,
                  color: Color(0xff9E616A),
                  fontFamily: chauFont,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 40,
                width: 150,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Facebook',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    backgroundColor: const Color.fromARGB(255, 15, 19, 235),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/background/gplus.png',
                    height: 30,
                    width: 30,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Google',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Form(
              key: _formfield,
              child: Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13.0),
                            borderSide: const BorderSide(
                              color: Color(0xff9E616A),
                              width: 1.5,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13.0)),
                        labelText: "Email",
                        labelStyle:
                            TextStyle(color: Colors.grey.withOpacity(0.95)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Email";
                        }
                        bool emailValid = RegExp(
                                r"^[a-z A-Z 0-9.!#$%&'*+-/=?^_`{|}~]+@[a-z A-Z 0-9]+\.[a-z A-Z]+")
                            .hasMatch(value);
                        if (!emailValid) {
                          return "Enter Valid email";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: passController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13.0),
                          borderSide: const BorderSide(
                            color: Color(0xff9E616A),
                            width: 1.5,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13.0)),
                        labelText: "Password",
                        labelStyle:
                            TextStyle(color: Colors.grey.withOpacity(0.95)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (passController.text.length < 6) {
                          return "Password length should not be less than 6 characters";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 16, 0),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: Color(0xff9E616A),
                          value: _rememberMe,
                          onChanged: (value) {
                            setState(() {
                              _rememberMe = value;
                            });
                          },
                        ),
                        const Text(
                          'Remember me?',
                          style: TextStyle(
                              color: Color(0xff9E616A),
                              fontFamily: chauFont,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotPass(),
                                ),
                              );
                            },
                            child: const Text(
                              "Forgot Password",
                              style: TextStyle(
                                fontFamily: chauFont,
                                fontSize: 17.5,
                                fontWeight: FontWeight.w400,
                                color: Colors.blue,
                              ),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )),
          ElevatedButton(
            onPressed: () {
              if (_formfield.currentState!.validate()) {
                // Email and password are valid, navigate to the next page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff9E616A),
              minimumSize: const Size(250, 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const Text(
              'Log in with your account',
              style: TextStyle(
                  fontSize: 19, color: Colors.white, fontFamily: chauFont),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an Account?",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: chauFont,
                  color: Color(0xff9E616A),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPass(),
                      ),
                    );
                  },
                  child: const Text(
                    "Create account",
                    style: TextStyle(
                      fontFamily: chauFont,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
