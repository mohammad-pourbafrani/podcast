import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:podcast/consts/app_colors.dart';

import 'package:podcast/controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorLightScaffold,
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (homeScreenController
                  .scrollController.position.userScrollDirection ==
              ScrollDirection.reverse) {
            homeScreenController.isScroll.value = true;
          } else if (homeScreenController
                  .scrollController.position.userScrollDirection ==
              ScrollDirection.forward) {
            homeScreenController.isScroll.value = false;
          }
          return true;
        },
        child: NestedScrollView(
          controller: homeScreenController.scrollController,
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                title: TextField(
                  decoration: InputDecoration(
                      hintText: 'search'.tr,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.search),
                      )),
                ),
                toolbarHeight: 100,
                floating: true,
                expandedHeight: 100.0,
                forceElevated: innerBoxIsScrolled,
              ),
            ];
          },
          body: Obx((() {
            return Container(
              width: homeScreenController.size.value.width,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: homeScreenController.isScroll.value
                    ? BorderRadius.zero
                    : const BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                color: AppColors.colorLightHomeScreen,
              ),
            );
          })),
        ),
      ),
    );
  }
}
