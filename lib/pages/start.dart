import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'homepage.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
        padding: EdgeInsets.only(top: 30),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Booking.jfif'),
              fit: BoxFit.cover),
        ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                Text("WELCOME !",style: TextStyle(color: Colors.white,fontSize: 33,fontWeight: FontWeight.w600,letterSpacing: 10),),
                SizedBox(height: 450,),
                ElevatedButton(onPressed: (){Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              homepage()));
                                }, child: Text("Start The Journey",style: TextStyle(fontSize: 18),),style: ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(Color.fromARGB(255, 57, 10, 228)),))
              ],
            ),
          ),
        ],
      ),
    );
  }
}