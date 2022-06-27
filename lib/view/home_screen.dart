import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:podcast/colors.dart';
import 'package:podcast/controller/main_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  MainScreenController mainScreenController = Get.put(MainScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: SolidColors.colorLightAppBar,
              title: Row(
                children: const [
                  Text("search"),
                  Icon(
                    CupertinoIcons.search,
                  ),
                ],
              ),
              floating: true,
              expandedHeight: 100.0,
              forceElevated: innerBoxIsScrolled,
            ),
          ];
        },
        body: Container(
          width: mainScreenController.size.width,
          height: 400,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
