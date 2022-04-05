import 'dart:io' show Platform, exit;
import 'package:icti/api/api.dart';
import 'package:icti/modules/home/home.dart';
import 'package:icti/shared/shared.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  final ApiRepository apiRepository;
  HomeController({required this.apiRepository});

  var currentTab = Tabs.home.obs;

  late HomeTab homeTab;
  late RedeemTab redeemTab;
  late WalletTab walletTab;
  late RestaurantTab restaurantTab;
  late SettingTab settingTab;
  var bottomNavIndex = Rxn(0); //default index of a first screen

  @override
  void onInit() async {
    super.onInit();
    homeTab = HomeTab();
    redeemTab = const RedeemTab();
    walletTab = const WalletTab();
    restaurantTab = const RestaurantTab();
    settingTab = const SettingTab();
  }

  void signout() {
    var prefs = Get.find<SharedPreferences>();
    prefs.clear();

    // Get.back();
    NavigatorHelper.popLastScreens(popCount: 2);
  }

  void switchTab(index) {
    var tab = _getCurrentTab(index);
    currentTab.value = tab;
  }

  int getCurrentIndex(Tabs tab) {
    switch (tab) {
      case Tabs.home:
        return 0;
      case Tabs.redeem:
        return 1;
      case Tabs.restaurant:
        return 2;
      case Tabs.setting:
        return 3;
      default:
        return 4;
    }
  }

  Tabs _getCurrentTab(int index) {
    switch (index) {
      case 0:
        return Tabs.home;
      case 1:
        return Tabs.redeem;
      case 2:
        return Tabs.restaurant;
      case 3:
        return Tabs.setting;
      default:
        return Tabs.wallet;
    }
  }

  Future<bool> exitApp() {
    if (Platform.isAndroid) {
      exit(0);
    }
    return Future.value(false);
  }
}
