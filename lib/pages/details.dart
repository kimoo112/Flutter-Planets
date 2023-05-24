import 'package:flutter/material.dart';

import 'booking.dart';

class date extends StatelessWidget {
  const date(
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
        appBar: AppBar(
          title: Text(name),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(
            top: 40,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      width: 300,
                      height: 300,
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: Colors.transparent,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: DecoratedBox(
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            image: DecorationImage(
                                fit: BoxFit.cover, image: AssetImage(photo)),
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 200, left: 40, right: 10),
                          child: Card(
                            color: Colors.transparent,
                            margin: EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 30,
                            child: Container(
                              height: 400, //Kosom Seyam
                              decoration:
                                  BoxDecoration(color: Colors.transparent),
                              child: Center(
                                child: ListTile(
                                  leading: Padding(
                                      padding: EdgeInsets.only(right: 10)),
                                  title: Text(name,
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  subtitle: Text(
                                    detalis,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 10,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BookingScreen()));
                                },
                                child: Text("Go To Booking Ticket "),style: ElevatedButton.styleFrom(primary: Colors.blue[900],animationDuration:Duration(seconds :8)),),
                                )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/wallpaperflare.jpg'),
                  fit: BoxFit.cover)),
        ));
  }
}
