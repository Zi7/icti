import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icti/modules/home/home.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../shared/shared.dart';

class HomeTab extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    int sizeIcon = 50;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                _top(sizeIcon),
                Positioned.fill(
                  child: Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: _horizontalScrollItem(),
                  ),
                ),
              ],
            ),
            _reward(),
            const Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
              child: Divider(color: ColorConstants.color676767Alpha),
            ),
            _discount(),
            const SizedBox(height: 20),
            _discount()
          ],
        ),
      ),
    );
  }

  _top(int sizeIcon) {
    return Padding(
      padding: EdgeInsets.only(bottom: sizeIcon / 2 + 50),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(35.0),
            bottomRight: Radius.circular(35.0),
          ),
          border: Border.all(color: ColorConstants.color4D4D4DAlpha),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _rowBar(),
            const SizedBox(height: 20),
            const Text(
              'Chan Tai Man 的總積分：',
              style: TextStyle(color: ColorConstants.color505050, fontSize: 12),
            ),
            _rowReward(),
            const SizedBox(height: 7),
            const Text(
              '積分到期日為 31-3-2022',
              style: TextStyle(color: ColorConstants.color505050, fontSize: 12),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  _rowBar() {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/logo.svg',
          width: 72,
          height: 28,
        ),
        const Spacer(),
        Container(
          padding:
              const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
          decoration: const BoxDecoration(
            color: ColorConstants.color315B46,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: const Center(
            child: Text(
              "Gaia Premier Member",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Badge(
            badgeContent: const Text(
              '1',
              style: TextStyle(color: Colors.white),
            ),
            badgeColor: ColorConstants.colorFE640A,
            child: SvgPicture.asset(
              'assets/svgs/icon_notification.svg',
              width: 28,
              height: 28,
            ),
            position: BadgePosition.topEnd(top: -10, end: -5),
          ),
        )
      ],
    );
  }

  _rowReward() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: SvgPicture.asset(
            'assets/svgs/icon_reward.svg',
            width: 24,
            height: 24,
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          "5150",
          style: TextStyle(color: Colors.black, fontSize: 36),
        ),
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SvgPicture.asset(
            'assets/svgs/icon_question.svg',
            width: 11,
            height: 11,
          ),
        ),
        const Spacer(),
        Container(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/svgs/icon_add_point.svg',
                width: 21,
                height: 21,
              ),
              const SizedBox(width: 10),
              const Text(
                "賺取積分",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      ],
    );
  }

  _horizontalScrollItem() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            const SizedBox(width: 25),
            _childHS('assets/svgs/icon_qrcode.svg', '掃描二維碼'),
            const SizedBox(width: 25),
            _childHSWithBadge('assets/svgs/icon_redeem_gift.svg', '使用優惠'),
            const SizedBox(width: 25),
            _childHS('assets/svgs/icon_refresh.svg', '記錄'),
            const SizedBox(width: 25),
            _childHS('assets/svgs/icon_booking.svg', '預訂'),
            const SizedBox(width: 25),
            _childHS('assets/svgs/icon_eshop.svg', '網上商店'),
            const SizedBox(width: 25),
            _childHS('assets/svgs/icon_qrcode.svg', '掃描二維碼'),
            const SizedBox(width: 25),
            _childHSWithBadge('assets/svgs/icon_redeem_gift.svg', '使用優惠'),
            const SizedBox(width: 25),
          ],
        ),
      ),
    );
  }

  _childHS(String svg, String title) {
    return SizedBox(
      height: 90,
      width: 60,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(12.5),
              ),
              border: Border.all(color: ColorConstants.color4D4D4DAlpha),
            ),
            child: SvgPicture.asset(svg, width: 21, height: 21),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: ColorConstants.color505050,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }

  _childHSWithBadge(String svg, String title) {
    return Badge(
      badgeContent: const Text(
        '2',
        style: TextStyle(color: Colors.white),
      ),
      badgeColor: ColorConstants.colorFE640A,
      child: _childHS(svg, title),
      position: BadgePosition.topEnd(top: -10, end: -3),
    );
  }

  _reward() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
          border: Border.all(color: ColorConstants.color4D4D4DAlpha),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "在2021年3月31日前",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              const Text(
                '賺取4850積分以升級為Gold會員',
                style:
                    TextStyle(color: ColorConstants.color505050, fontSize: 12),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: 0.7,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                    backgroundColor: ColorConstants.colorE7E7E7,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/svgs/icon_reward.svg',
                    width: 15,
                    height: 15,
                  ),
                  const SizedBox(width: 2),
                  const Text(
                    "5150",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  const Spacer(),
                  const Text(
                    "4850",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ],
              ),
              Row(
                children: const [
                  SizedBox(width: 2),
                  Text(
                    "已賺取積分",
                    style: TextStyle(
                        color: ColorConstants.color989898, fontSize: 10),
                  ),
                  Spacer(),
                  Text(
                    "尚欠積分",
                    style: TextStyle(
                        color: ColorConstants.color989898, fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _discount() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    ),
                    child: Image.asset(
                      "assets/images/img_discount.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                      alignment: FractionalOffset.bottomLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 10, right: 10),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3, right: 3),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: SvgPicture.asset(
                                        'assets/svgs/icon_restaurant.svg',
                                        width: 15,
                                        height: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: " 會員專享優惠",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))),
                )
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      SizedBox(height: 6),
                      Text(
                        "兩星期內消費滿1,000元3次",
                        style: TextStyle(
                            color: ColorConstants.color262626, fontSize: 18),
                      ),
                      SizedBox(height: 2),
                      Text(
                        '完成任務後送出餐飲禮頓乙張',
                        style: TextStyle(
                            color: ColorConstants.color6E6E6E, fontSize: 14),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '限時活動至2021年6月1日',
                        style: TextStyle(
                            color: ColorConstants.colorFF2D55, fontSize: 12),
                      ),
                      SizedBox(height: 35),
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: FractionalOffset.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, right: 15),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 13),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: _getRadialGauge(),
                            ),
                          ),
                          const Positioned.fill(
                            child: Align(
                              alignment: FractionalOffset.bottomCenter,
                              child: Text(
                                "2/3",
                                style: TextStyle(
                                    color: ColorConstants.color262626,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _getRadialGauge() {
    var width = 0.5;
    return SfRadialGauge(axes: <RadialAxis>[
      RadialAxis(
        minimum: 0,
        maximum: 100,
        showLabels: false,
        showTicks: false,
        axisLineStyle: AxisLineStyle(
          thickness: width,
          // cornerStyle: CornerStyle.bothCurve,
          color: ColorConstants.colorE7E7E7,
          thicknessUnit: GaugeSizeUnit.factor,
        ),
        pointers: <GaugePointer>[
          RangePointer(
            value: 66,
            color: Colors.black,
            // cornerStyle: CornerStyle.bothCurve,
            width: width,
            sizeUnit: GaugeSizeUnit.factor,
          )
        ],
      )
    ]);
  }
}
