import 'package:flutter/material.dart';

import 'homepage.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Booking.jfif'), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "WELCOME !",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 10),
                ),
                const SizedBox(height:10),
                 Text(
                  "to Interstellar".toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2),
                ),
                const SizedBox(
                  height: 450,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 23, 2, 95)),
                    ),
                    child: const Text(
                      "Start The Journey",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
