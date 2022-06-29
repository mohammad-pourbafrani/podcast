import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:podcast/model/slider_model.dart';

class HomeScreenController extends GetxController {
  //lists
  List<ImageSlider> imagesSlider = [
    ImageSlider(
      id: 1,
      urlImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
      view: "423",
      publisher: "محمد پوربافرانی",
      title: "مرگ و زندگی",
      date: " یک روز پیش",
    ),
    ImageSlider(
      id: 2,
      urlImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
      view: "700",
      publisher: "محمد پوربافرانی",
      title: "مرگ و زندگی",
      date: " یک روز پیش",
    ),
    ImageSlider(
      id: 3,
      urlImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
      view: "584",
      publisher: "محمد پوربافرانی",
      title: "مرگ و زندگی",
      date: " یک روز پیش",
    ),
    ImageSlider(
      id: 4,
      urlImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
      view: "236",
      publisher: "محمد پوربافرانی",
      title: "مرگ و زندگی",
      date: " یک روز پیش",
    ),
    ImageSlider(
      id: 5,
      urlImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
      view: "104",
      publisher: "محمد پوربافرانی",
      title: "مرگ و زندگی",
      date: " یک روز پیش",
    ),
  ];
  //variables
  var size = Get.mediaQuery.size.obs;
  var darkMood = Get.isDarkMode;
  var isScroll = false.obs;
  var activePageTopSlider = 1.obs;
  //controllers
  final ScrollController scrollController = ScrollController();
  final PageController topSliderPageController =
      PageController(viewportFraction: 0.8, initialPage: 1);
}
