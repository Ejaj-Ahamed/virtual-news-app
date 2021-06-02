import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_news_app/Screens/NewsScreen/Model/NewsModel.dart';
import 'package:virtual_news_app/Services/Constants.dart';

Constants constants = Get.find();

class NewsCard extends StatefulWidget {
  final NewsModel newsModel;
  const NewsCard(this.newsModel);
  @override
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: constants.getColorFromHex("#FFFFFF"),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(5.0),
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(widget.newsModel.newsImage),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  widget.newsModel.newsTitle,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  widget.newsModel.newsDescription,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Text("Author : " + widget.newsModel.newsAuthor),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Text("Source : " + widget.newsModel.newsSource),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
