// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_planets/pages/backgorund.dart';
import 'package:flutter_planets/pages/confirm.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          title: Text(
            "Booking Screen",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_outlined,
                  color: Colors.white)),
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: .5,
        ),
      body: Stack(
        children: [
          CircularParticleScreen2(),
         
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.mail_solid,color: Colors.white60),
                        hintText: "  Email",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.profile_circled,color: Colors.white60),
                        hintText: "  Name",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.phone_circle_fill,color: Colors.white60),
                        hintText: "  Phone Number",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        prefixIcon:
                            Icon(CupertinoIcons.money_dollar_circle_fill,color: Colors.white60),
                        hintText: "  Ticket Price",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.rocket_fill,color: Colors.white60),
                        hintText: "  Name Of Rocket",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.lock_fill,color: Colors.white60),
                        hintText: "  Password ",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.lock_rotation_open,color: Colors.white60),
                        hintText: " Confirm Password",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox( 
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfirmScreen()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 105, 99, 92)),
                    ),
                    child: Text("Confirm Booking",style:TextStyle(color:  Colors.white))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
