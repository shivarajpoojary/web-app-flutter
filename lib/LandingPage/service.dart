import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> servicePageChildren(double width) {
      return <Widget>[
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 300,
                      width: width,
                      padding: const EdgeInsets.all(10.0),
                      child: Lottie.asset(
                        "assets/images/4.json",
                        alignment: Alignment.center,
                      ),
                    ),
                    Text(
                      "Regular",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "The Slowest Delivery of Packages\n will arrived at your home in 7 working days.",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18.0,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 300,
                      width: width,
                      padding: const EdgeInsets.all(10.0),
                      child: Lottie.asset(
                        "assets/images/2.json",
                        alignment: Alignment.center,
                      ),
                    ),
                    Text(
                      "Express",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Delivery Express like a rabbit is quite fast\n to your house in about 3-5 days.",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18.0,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 300,
                      width: width,
                      padding: const EdgeInsets.all(10.0),
                      child: Lottie.asset(
                        "assets/images/3.json",
                        alignment: Alignment.center,
                      ),
                    ),
                    Text(
                      "Lightning",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "As fast as cheetah, this delivery will arrive\n at your house in about 1-2 days.",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18.0,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ];
    }

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: servicePageChildren(constraints.biggest.width / 3),
        );
      } else {
        return Column(
          children: servicePageChildren(constraints.biggest.width),
        );
      }
    });
  }
}
