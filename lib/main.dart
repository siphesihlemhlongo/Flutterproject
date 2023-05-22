import 'package:flutter/material.dart';
import 'package:practiceproject/home.dart';
import 'package:practiceproject/login2.dart';
//import 'package:practiceproject/videoplayer.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState  extends State<MyApp>{
  bool loggedIn= false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        secondaryHeaderColor: Colors.cyanAccent,

       ),
      home: loggedIn ? const MyHomePage(title: 'login')
          : const MyLogin2(),

    );





  }












































}



