import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "MereBagong",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 30),
            ),
            Row(
              children: <Widget>[
                Text(
                  "Express",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Product",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Career",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About Us",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Contact",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  height: 50,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color.fromRGBO(43, 27, 227, 89),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "  Login  ",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  height: 50,
                  color: Color.fromRGBO(43, 27, 227, 89),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "  Sign Up  ",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          Text(
            "MereBagong",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Express",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Product",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Career",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Abount Us",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Contact",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
