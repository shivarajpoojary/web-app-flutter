import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AdvertiseTwo extends StatelessWidget {
  const AdvertiseTwo({Key key}) : super(key: key);

  List<Widget> addTwo(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 40,
              ),
              child: Text(
                "Delivered to Your House On Time \nand Good Packing",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 30.0,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 40,
              ),
              child: Text(
                "The delivery application MereBagong focuses exclusively on the movement of goods and cargo with its various feures. By collecting thousands of truck delivery quotes, Deliveree's online courier app can perform a direct point-to-point model at the lowest possible price. After you order, the vehicle comes straight to your pick-up address and deliver your item immediately withour stopping.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 600,
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Lottie.asset(
          "assets/images/6.json",
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
            children: addTwo(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: addTwo(constraints.biggest.width),
          );
        }
      },
    );
  }
}
