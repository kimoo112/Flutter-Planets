// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, duplicate_ignore, sort_child_properties_last

import 'package:flutter/material.dart';

import '../model/datas.dart';
import 'booking.dart';
import 'details.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        centerTitle: true,
        title: Text("Solar System",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BookingScreen()));
              },
              icon: Icon(Icons.account_circle))
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        padding: EdgeInsets.only(top: 30),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Homepage_SatellitesSpaceDebris-scaled.jpg'),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              ...planet
                  .map(
                    (planets) => Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Hero(
                          tag: planets.name,
                          child: Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: GestureDetector(
                              child: Card(
                                margin: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                elevation: 30,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10),
                                  height: 150,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color.fromARGB(255, 2, 107, 194),
                                      Color.fromARGB(255, 2, 51, 121),
                                      Color.fromARGB(255, 3, 10, 56)
                                    ]),
                                  ),
                                  child: Center(
                                    child: ListTile(
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => date(
                                              name: planets.name,
                                              detalis: planets.detalis,
                                              photo: planets.photo,
                                            ),
                                          )),
                                      leading: Padding(
                                          padding: EdgeInsets.only(right: 10)),
                                      title: Text(planets.name,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      subtitle: Text(
                                        planets.detalis,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: Colors.transparent,
                          ),
                          child: Hero(
                            tag: 1,
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: DecoratedBox(
                                decoration: ShapeDecoration(
                                  shape: CircleBorder(),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(planets.photo)),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}
