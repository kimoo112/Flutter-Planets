import 'package:flutter/material.dart';
import 'package:flutter_planets/pages/homepage.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => homepage()));
            },
            icon: const Icon(
              Icons.home_filled,
              color: Colors.white,
            )),
      ),
      backgroundColor: const Color(0xFF022638),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Confirm.jpg"), fit: BoxFit.cover),
            ),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(0, 2, 2, 11),
                      Color.fromARGB(255, 15, 16, 19),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                )),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/check.png",
                  width: 100,
                ),
                const SizedBox(
                  height: 102,
                ),
                const Text(
                  "Your booking Has Been Confirmed",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  "Have a nice journey ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
