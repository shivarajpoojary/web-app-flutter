import 'package:flutter/material.dart';
import 'package:flutter_webpage/LandingPage/LandingPage.dart';
import 'package:flutter_webpage/LandingPage/advertise1.dart';
import 'package:flutter_webpage/LandingPage/advertise2.dart';
import 'package:flutter_webpage/LandingPage/contact.dart';
import 'package:flutter_webpage/LandingPage/service.dart';
import 'package:flutter_webpage/Navbar/Navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                ),
                child: LandingPage(),
              ),
              Text(
                "The Best Delivery For \nOur Customers",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 40.0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                ),
                child: ServicePage(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: AdvertiseOne(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: AdvertiseTwo(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Contact(),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
