import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';

class RestaurantTab extends GetView<HomeController> {
  const RestaurantTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('RestaurantTab'));
  }
}
