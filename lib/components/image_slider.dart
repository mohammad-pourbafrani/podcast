import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:podcast/controller/home_screen_controller.dart';

class HorizontalImageSlider extends StatelessWidget {
  HorizontalImageSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
      autoRemove: true,
      init: HomeScreenController(),
      builder: (HomeScreenController homeScreenController) {
        return Column(
          children: [
            SizedBox(
              width: homeScreenController.size.value.width,
              height: 200,
              child: PageView.builder(
                  itemCount: homeScreenController.imagesSlider.length,
                  pageSnapping: true,
                  controller: homeScreenController.topSliderPageController,
                  onPageChanged: (page) {
                    homeScreenController.activePageTopSlider.value = page;
                  },
                  itemBuilder: (context, pagePosition) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Stack(
                        children: [
                          Container(
                            width: homeScreenController.size.value.width,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(
                                  homeScreenController
                                      .imagesSlider[pagePosition].urlImage,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 8,
                            child: Column(),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          
          ],
        );
      },
    );
  }
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}
