import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(60.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.45,
      color: Color.fromRGBO(43, 27, 227, 89),
      child: Column(
        children: [
          Text(
            "Subscribe to Our NewsLetter",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 40.0,
                color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
            ),
            child: Text(
              "Don't miss any interesting news from us, by subscribing to your mail with us and getting attractive promosthat we will provide via email.",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 700,
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Enter Your Email address",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: new BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: () {
                    print("hello");
                  },
                  icon: Icon(
                    Icons.search,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
