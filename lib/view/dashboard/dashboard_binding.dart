import 'package:flutter_eco_dev/controller/dashboard_controller.dart';
import 'package:flutter_eco_dev/controller/home_controller.dart';
import 'package:get/get.dart';

class DashboardBiding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
    Get.put(HomeController());
  }
}
