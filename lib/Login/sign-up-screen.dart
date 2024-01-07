import 'package:flutter/material.dart';
import 'package:safewander_app/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void handleContainerTap(String containerName) {
    print('$containerName Container Clicked');
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: Container(
        width: double.infinity,
        child: Container(
          // signupscreenDJh (49:2)
          padding: EdgeInsets.fromLTRB(9 * fem, 55 * fem, 14 * fem, 84 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/page-1/images/sign-up-screen-bg.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // logohDs (49:12)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 6.35 * fem),
                width: 347 * fem,
                height: 102.15 * fem,
                child: Image.asset(
                  'assets/page-1/images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                // signupcLq (49:11)
                child: Container(
                  margin:
                      EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 27 * fem),
                  child: Text(
                    'Sign up',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * ffem / fem,
                      letterSpacing: 1.12 * fem,
                      decoration: TextDecoration.underline,
                      color: Color(0xff000000),
                      decorationColor: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => handleContainerTap('Fullname'),
                child: Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 6.5 * fem),
                  width: 347 * fem,
                  height: 88.5 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0 * fem,
                        top: 23.5 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 347 * fem,
                            height: 65 * fem,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15 * fem),
                                  borderSide:
                                      BorderSide(color: Color(0xff004aad)),
                                ),
                                fillColor: Color(0x358a8a8a),
                                filled: true,
                                hintText: 'Fullname',
                                hintStyle: TextStyle(
                                  fontSize: 16 * ffem,
                                  height: 1.5 * ffem / fem,
                                  letterSpacing: 1.12 * fem,
                                  color: Color.fromARGB(255, 138, 138, 138),
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 16 * ffem,
                                height: 1.5 * ffem / fem,
                                letterSpacing: 1.12 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 160 * fem,
                            height: 24 * fem,
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5 * ffem / fem,
                                  letterSpacing: 1.12 * fem,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Full Name :',
                                    style: TextStyle(
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      letterSpacing: 1.12 * fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => handleContainerTap('Email'),
                child: Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 6.5 * fem),
                  width: 347 * fem,
                  height: 88.5 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0 * fem,
                        top: 23.5 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 347 * fem,
                            height: 65 * fem,
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15 * fem),
                                  borderSide:
                                      BorderSide(color: Color(0xff004aad)),
                                ),
                                fillColor: Color(0x358a8a8a),
                                filled: true,
                                hintText: 'ex. email@gmail.com',
                                hintStyle: TextStyle(
                                  fontSize: 16 * ffem,
                                  height: 1.5 * ffem / fem,
                                  letterSpacing: 1.12 * fem,
                                  color: Color.fromARGB(255, 138, 138, 138),
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 16 * ffem,
                                height: 1.5 * ffem / fem,
                                letterSpacing: 1.12 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 160 * fem,
                            height: 24 * fem,
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5 * ffem / fem,
                                  letterSpacing: 1.12 * fem,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Email :',
                                    style: TextStyle(
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      letterSpacing: 1.12 * fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => handleContainerTap('Password'),
                child: Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 6.5 * fem),
                  width: 347 * fem,
                  height: 88.5 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0 * fem,
                        top: 23.5 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 347 * fem,
                            height: 65 * fem,
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15 * fem),
                                  borderSide:
                                      BorderSide(color: Color(0xff004aad)),
                                ),
                                fillColor: Color(0x358a8a8a),
                                filled: true,
                                hintText: '********',
                                hintStyle: TextStyle(
                                  fontSize: 16 * ffem,
                                  height: 1.5 * ffem / fem,
                                  letterSpacing: 1.12 * fem,
                                  color: Color.fromARGB(255, 138, 138, 138),
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 16 * ffem,
                                height: 1.5 * ffem / fem,
                                letterSpacing: 1.12 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 160 * fem,
                            height: 24 * fem,
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5 * ffem / fem,
                                  letterSpacing: 1.12 * fem,
                                  color: Color(0xff000000),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Password :',
                                    style: TextStyle(
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      letterSpacing: 1.12 * fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 21 * fem),
                width: 347 * fem,
                height: 65 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff004aad),
                  borderRadius: BorderRadius.circular(15 * fem),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () async {
                    try {
                      // ignore: unused_local_variable
                      final credential = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      Navigator.of(context).pushReplacementNamed("/Home");
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.4 * fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signinscreen');
                },
                child: Center(
                  // alreadyhaveanaccountYoT (50:29)
                  child: Container(
                    margin:
                        EdgeInsets.fromLTRB(6 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Already have an account? Login',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        letterSpacing: 1.12 * fem,
                        color: Color(0xff5e5e5e),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
