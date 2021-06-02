import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_news_app/Services/Constants.dart';

Constants constants = Get.find();

class LoginVIew extends StatefulWidget {
  const LoginVIew({Key? key}) : super(key: key);

  @override
  _LoginVIewState createState() => _LoginVIewState();
}

class _LoginVIewState extends State<LoginVIew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height * 0.9,
                minWidth: MediaQuery.of(context).size.width),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              color: constants.getColorFromHex("#f4f3f8"),
              child: Center(
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5.0),
                            border: InputBorder.none,
                            hintText: "Enter User Name",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 22),
                          ),
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5.0)),
                      Container(
                        color: Colors.white,
                        child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5.0),
                            border: InputBorder.none,
                            hintText: "Enter Password",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 22),
                          ),
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5.0)),
                      ElevatedButton(onPressed: () {}, child: Text("Login"))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
