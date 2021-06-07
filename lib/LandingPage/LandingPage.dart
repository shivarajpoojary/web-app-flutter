import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Delivery of Packages \nto the Destination as \nFast as Flash",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 40.0,
                  color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: Text(
                "Merebagong is a freight forwarder company located in Jakarta which is well know as a pioneer in courier delivery.",
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
            ),
            Container(
              width: 400,
              child: TextFormField(
                decoration: new InputDecoration(
                  hintText: "Enter Your Number Track Order",
                  fillColor: Colors.white,
                  hoverColor: Color.fromRGBO(43, 27, 227, 89),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    borderSide: new BorderSide(
                      color: Color.fromRGBO(43, 27, 227, 89),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Color.fromRGBO(43, 27, 227, 89),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Tracking",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 550,
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Lottie.asset(
          "assets/images/delivery-boy.json",
          alignment: Alignment.center,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
