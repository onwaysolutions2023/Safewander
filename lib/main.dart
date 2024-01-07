import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:safewander_app/Login/sign-in-screen.dart';
import 'package:safewander_app/Login/sign-up-screen.dart';
import 'package:safewander_app/home.dart';
import 'package:safewander_app/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

const String signInRoute = '/signinscreen';
const String signUpRoute = '/signupscreen';
const String HomeRoute = '/Home';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('================= User is currently signed out!');
      } else {
        print('================== User is signed in!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safewander',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Signin(),
        ),
      ),
      routes: {
        signInRoute: (context) => Signin(),
        signUpRoute: (context) => Signup(),
        HomeRoute: (context) => Home(),
      },
    );
  }
}
