import 'package:flutter/material.dart';
import 'package:flutter_eco_dev/component/main_header.dart';
import 'package:flutter_eco_dev/controller/controllers.dart';
import 'package:flutter_eco_dev/view/home/component/carousel_slider/carousel_loading.dart';
import 'package:flutter_eco_dev/view/home/component/carousel_slider/carousel_slider_view.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const MainHeader(),
          Obx(() {
            if (homeController.bannerList.isNotEmpty) {
              return CarouselSliderView(
                bannerList: homeController.bannerList,
              );
            } else {
              return const CarouselLoading();
            }
          })
        ],
      ),
    );
  }
}
