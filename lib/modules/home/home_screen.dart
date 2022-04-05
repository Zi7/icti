import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:icti/shared/constants/colors.dart';

import '../modules.dart';

class HomeScreen extends GetView<HomeController> {
  var iconSvgs = [
    'assets/svgs/icon_home.svg',
    'assets/svgs/icon_redeem.svg',
    'assets/svgs/icon_restaurant.svg',
    'assets/svgs/icon_setting.svg'
  ];
  var bottomBarTitles = ['主頁', '預訂', '餐廳', '設定'];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => controller.exitApp(),
      child: Obx((() => _buildWidget())),
    );
  }

  _buildWidget() {
    return Scaffold(
      extendBody: true,
      body: _buildContent(controller.currentTab.value),
      floatingActionButton: _floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  _buildContent(Tabs tab) {
    switch (tab) {
      case Tabs.home:
        return controller.homeTab;
      case Tabs.redeem:
        return controller.redeemTab;
      case Tabs.restaurant:
        return controller.restaurantTab;
      case Tabs.setting:
        return controller.settingTab;
      default:
        return controller.walletTab;
    }
  }

  _floatingActionButton() {
    return SizedBox(
      width: 56.0,
      height: 56.0,
      child: RawMaterialButton(
        shape: const CircleBorder(),
        fillColor: Colors.black,
        elevation: 0.0,
        child: SvgPicture.asset(
          'assets/svgs/icon_wallet.svg',
          width: 32,
          height: 32,
          color: Colors.white,
        ),
        onPressed: () {
          var _index = controller.getCurrentIndex(Tabs.wallet);
          controller.bottomNavIndex.value = _index;
          controller.switchTab(_index);
        },
      ),
    );
  }

  _bottomNavigationBar() {
    return SizedBox(
      height: 84,
      child: AnimatedBottomNavigationBar.builder(
        itemCount: iconSvgs.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Colors.black : ColorConstants.color9B9B9B;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconSvgs[index],
                width: 24,
                height: 24,
                color: color,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 5),
                child: AutoSizeText(
                  bottomBarTitles[index],
                  maxLines: 1,
                  style: TextStyle(color: color),
                  group: AutoSizeGroup(),
                ),
              )
            ],
          );
        },
        backgroundColor: Colors.white,
        activeIndex: controller.bottomNavIndex.value ?? 0,
        splashColor: Colors.black,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius: 21,
        rightCornerRadius: 21,
        splashRadius: 50,
        onTap: (index) {
          controller.bottomNavIndex.value = index;
          controller.switchTab(index);
        },
      ),
    );
  }
}
