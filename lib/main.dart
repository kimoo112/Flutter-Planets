// ignore_for_file: unnecessary_const, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_planets/pages/confirm.dart';

import 'package:flutter_planets/pages/homepage.dart';
import 'package:flutter_planets/pages/start.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
   
          initialRoute: '/',
          routes: {
            // When navigating to the "/" route, build the FirstScreen widget.
            '/': (context) =>  StartScreen(),

            // When navigating to the "/second" route, build the SecondScreen widget.
            // '/2': (context) =>  DetailsView(),
          },
        
    );
  }
}
