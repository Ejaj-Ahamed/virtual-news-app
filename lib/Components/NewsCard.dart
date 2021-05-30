import 'package:flutter/material.dart';
import 'package:virtual_news_app/Services/Constants.dart';

class NewsCard extends StatefulWidget {
  @override
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          print("tapped");
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          margin: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Constants.getColorFromHex("#FFFFFF"),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
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
                    image: NetworkImage(
                        "https://static.seekingalpha.com/cdn/s3/uploads/getty_images/1217475247/large_image_1217475247.jpg"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Caterpillar - The Margin Of Safety Is Gone",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "The upcoming earnings boom from an economic opening is more than priced in. Projected dividend growth is too low to justify buying a historically-low dividend yield.",
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Text("Author : " + "Anthony Indelicato"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Text("Source : " + "Yahoo News"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
