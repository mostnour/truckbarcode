import 'package:flutter/material.dart';
import 'package:truckbarcode/auth/login.dart';
import 'package:truckbarcode/auth/signup.dart';
import 'package:truckbarcode/home/homepage.dart';

// 84 - Design App Note Login Page:  Login()
// 85 - Theme
// 86 - Design App Note SignUp Page
// 87 - Design App Note Homepage Page
// 88 - Design App Note - Add Note Page -
// 89 - Directionality
// 90 - finish Design
// 91 - AwesomeDialog

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // to hide Debug bar
      home: const Login(),
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        //buttonColor: Colors.amber,
        textTheme: TextTheme(
          titleLarge: const TextStyle(
            color: Colors.blue,
            fontSize: 15,
          ),
          bodyLarge: TextStyle(
            color: Colors.blue[900], //.amber,
            fontSize: 14,
          ),
        ),
        //headline6: TextStyle
      ),
      routes: {
        "login": (context) => const Login(),
        "signup": (context) => const Signup(),
        "homepage": (context) => const HomePage(),
        //"addnotes": (context) => AddNotes(),
      },
    );
  }
}

// pageview + loop = PageViewBuilder
// Listview + loop = ListViewBuilder
// Gridview + loop = GridViewBuilder
