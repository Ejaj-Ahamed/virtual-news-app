import 'package:flutter/material.dart';
import 'package:virtual_news_app/Screens/Login/View/LoginView.dart';
import 'package:virtual_news_app/Screens/NewsScreen/View/NewsView.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.red,
          bottom: TabBar(
            tabs: [
              Tab(text: "HOME"),
              Tab(text: "LOGIN"),
              Tab(text: "FEATURED"),
            ],
          ),
          title: Text('Virtual News App'),
        ),
        body: TabBarView(
          children: [
            NewsView(),
            LoginVIew(),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
