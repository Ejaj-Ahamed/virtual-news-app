import 'package:get/get.dart';
import 'package:virtual_news_app/Screens/NewsScreen/Controller/NewsController.dart';
import 'package:virtual_news_app/Services/Constants.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<NewsController>(NewsController());
    Get.put<Constants>(Constants());
  }
}
