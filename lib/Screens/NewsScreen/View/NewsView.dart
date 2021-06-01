import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:virtual_news_app/Screens/NewsScreen/View/NewsCard.dart';
import 'package:virtual_news_app/Screens/NewsScreen/Controller/NewsController.dart';
import 'package:virtual_news_app/Screens/NewsScreen/Model/NewsModel.dart';
import 'package:virtual_news_app/Screens/NewsScreen/View/ShimmerNewsCard.dart';

class NewsView extends StatefulWidget {
  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  String message = "";
  NewsController newsController = Get.find();
  bool _fabIsVisible = true;
  var _scrollController = ScrollController();
  List<NewsModel> newsList = [];
  List<NewsModel> recyclerNewsList = [];
  int displaiedNewsCounter = 0;
  int displayingThreshold = 5;
  bool isLoadingMore = true;

  @override
  void initState() {
    loadNews();
    _fabIsVisible = true;
    _scrollController.addListener(() {
      // print("_scrollController addListener called");
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (displaiedNewsCounter < newsList.length) {
          setState(() {
            isLoadingMore = true;
          });
          loadMore();
        }
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_fabIsVisible == true) {
          setState(() {
            _fabIsVisible = false;
          });
        }
      } else {
        if (_scrollController.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (_fabIsVisible == false) {
            setState(() {
              _fabIsVisible = true;
            });
          }
        }
      }
    });
    super.initState();
  }

  loadNews() async {
    newsList = await newsController.getAllNews();
    if (newsList.first.responseMessge == "") {
      loadMore();
    } else {
      setState(() {
        message = newsList.first.responseMessge;
      });
    }
  }

  loadMore() {
    int limit = displaiedNewsCounter + displayingThreshold;
    print(limit);
    for (int i = displaiedNewsCounter; i < limit; i++) {
      if (i < newsList.length) recyclerNewsList.add(newsList.elementAt(i));
    }
    displaiedNewsCounter = limit;
    setState(() {
      isLoadingMore = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
                minWidth: MediaQuery.of(context).size.width),
            child: Column(
              children: [
                for (var i = 0; i < recyclerNewsList.length; i++)
                  NewsCard(recyclerNewsList[i]),
                Visibility(
                    visible: isLoadingMore,
                    child: Column(
                      children: [
                        for (var i = 0; i < 2; i++)
                          ShimmerNewsCard(1000 + 5 * i)
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Visibility(
        visible: _fabIsVisible,
        child: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.refresh_outlined),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
