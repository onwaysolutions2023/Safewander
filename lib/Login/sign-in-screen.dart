import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:safewander_app/components/textField.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool rememberMe = false;

  void handleContainerTap(String containerName) {
    print('$containerName Container Clicked');
  }

  Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await GoogleSignIn().signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        await FirebaseAuth.instance.signInWithCredential(credential);
        Navigator.of(context).pushReplacementNamed("/Home");
      }
    } catch (e) {
      print('Error signing in with Google: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 404;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: Container(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.fromLTRB(11 * fem, 145 * fem, 14 * fem, 77 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/page-1/images/sign-in-screen-bg.png'),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 7.35 * fem),
                width: 347 * fem,
                height: 102.15 * fem,
                child: Image.asset(
                  'assets/page-1/images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 14 * fem),
                  child: Text(
                    'Sign in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
                            child: CustomTextField(
                              hinttext: " Enter your email ",
                              mycontroller: email,
                              isPassword: false,
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
                            child: CustomTextField(
                              hinttext: " ******** ",
                              mycontroller: password,
                              isPassword: true,
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
                    EdgeInsets.fromLTRB(28 * fem, 0 * fem, 9 * fem, 19.5 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 50 * fem, 0 * fem),
                      child: Row(
                        children: [
                          Checkbox(
                            value: rememberMe,
                            onChanged: (value) {
                              setState(() {
                                rememberMe = value!;
                              });
                            },
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              letterSpacing: 0.98 * fem,
                              color: Color(0xff5e5e5e),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'I forgot my password',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        letterSpacing: 0.98 * fem,
                        color: Color(0xff5e5e5e),
                      ),
                    ),
                  ],
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
                          .signInWithEmailAndPassword(
                        email: email.text,
                        password: password.text,
                      );
                      Navigator.of(context).pushReplacementNamed("/Home");
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                    }
                  },
                  child: Text(
                    'Login',
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
                  _signInWithGoogle();
                },
                child: Container(
                  margin:
                      EdgeInsets.fromLTRB(5 * fem, 20 * fem, 0 * fem, 20 * fem),
                  width: 347 * fem,
                  height: 65 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff4285f4),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/page-1/images/google-png-1.png',
                        fit: BoxFit.cover,
                        width: 30 * fem,
                        height: 30 * fem,
                      ),
                      SizedBox(width: 10 * fem),
                      Text(
                        'Sign in with Google',
                        style: TextStyle(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.4 * fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signupscreen');
                },
                child: Center(
                  child: Container(
                    margin:
                        EdgeInsets.fromLTRB(8 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
