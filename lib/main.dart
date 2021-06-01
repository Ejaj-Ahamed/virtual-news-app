import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_news_app/Screens/Home/Bindings/HomeBinding.dart';
import 'package:virtual_news_app/Screens/Home/View/HomeView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [GetPage(name: "/home", page: () => HomeView())],
      initialRoute: "/home",
      initialBinding: HomeBinding(),
    );
  }
}
