import 'package:flutter/material.dart';
import 'package:virtual_news_app/Components/NewsCard.dart';

class NewsView extends StatefulWidget {
  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            children: [
              NewsCard(),
              NewsCard(),
              NewsCard(),
              NewsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
