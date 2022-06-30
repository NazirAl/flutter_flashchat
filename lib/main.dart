import 'package:flutter/material.dart';

import 'package:flutter_flashchat/screens/login_screen.dart';
import 'package:flutter_flashchat/screens/registration_screen.dart';
import 'package:flutter_flashchat/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var registrationScreen = RegistrationScreen;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: ChatScreen(),
        initialRoute: WelcomeScreen.route,
        routes: {
          WelcomeScreen.route: (context) => WelcomeScreen(),
          RegistrationScreen.route: (context) => RegistrationScreen(),
          LoginScreen.route: (context) => LoginScreen(),
        });
  }
}
