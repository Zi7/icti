import 'package:flutter/material.dart';
import 'package:icti/modules/home/home.dart';
import 'package:get/get.dart';

class SettingTab extends GetView<HomeController> {
  const SettingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('SettingTab'));
  }
}
