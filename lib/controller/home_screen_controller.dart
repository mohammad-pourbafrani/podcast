import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  var size = Get.mediaQuery.size.obs;
  var darkMood = Get.isDarkMode;
  var isScroll = false.obs;
  final ScrollController scrollController = ScrollController();
}
