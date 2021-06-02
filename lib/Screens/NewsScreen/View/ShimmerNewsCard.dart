import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:virtual_news_app/Services/Constants.dart';

Constants constants = Get.find();

class ShimmerNewsCard extends StatelessWidget {
  final int duration;
  const ShimmerNewsCard(this.duration);
  @override
  Widget build(BuildContext context) {
    int shimmerDuration = duration;
    print(shimmerDuration);
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            baseColor: constants.getColorFromHex("#EEEEEE"),
            highlightColor: constants.getColorFromHex("#BDBDBD"),
            period: Duration(milliseconds: shimmerDuration),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Shimmer.fromColors(
              child: Container(
                height: 20,
                color: Colors.blue,
              ),
              baseColor: constants.getColorFromHex("#EEEEEE"),
              highlightColor: constants.getColorFromHex("#BDBDBD"),
              period: Duration(milliseconds: shimmerDuration),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Shimmer.fromColors(
              child: Container(
                height: 50,
                color: Colors.blue,
              ),
              baseColor: constants.getColorFromHex("#EEEEEE"),
              highlightColor: constants.getColorFromHex("#BDBDBD"),
              period: Duration(milliseconds: shimmerDuration),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Shimmer.fromColors(
              child: Container(
                height: 20,
                color: Colors.blue,
              ),
              baseColor: constants.getColorFromHex("#EEEEEE"),
              highlightColor: constants.getColorFromHex("#BDBDBD"),
              period: Duration(milliseconds: shimmerDuration),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Shimmer.fromColors(
              child: Container(
                height: 20,
                color: Colors.blue,
              ),
              baseColor: constants.getColorFromHex("#EEEEEE"),
              highlightColor: constants.getColorFromHex("#BDBDBD"),
              period: Duration(milliseconds: shimmerDuration),
            ),
          ),
        ],
      ),
    );
  }
}
