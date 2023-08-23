import 'package:flutter/material.dart';

import 'booking.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {super.key,
      required this.photo,
      required this.name,
      required this.detalis});

  final String photo;
  final String name;
  final String detalis;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            name,
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
          scrolledUnderElevation: .9,
          shadowColor: Colors.black45,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
         
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/wallpaperflare.jpg'),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Hero(
                  tag: photo,
                  child: Image.asset(photo)
                ),
                Card(
                  color: Colors.transparent,
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 30,
                  child: Container(
                    height: 400,
                    decoration:
                        const BoxDecoration(color: Colors.transparent),
                    child: Center(
                      child: ListTile(
                        leading: const Padding(
                            padding: EdgeInsets.only(right: 10)),
                        title: Text(name,
                            style: const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        subtitle: Text(
                          detalis,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookingScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      animationDuration: const Duration(seconds: 8)),
                  child: const Text(
                    "Go To Booking Ticket ",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
