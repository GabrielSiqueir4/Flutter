import 'controller/cards_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gabriel_s_application1/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CardsScreen extends GetWidget<CardsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    bottom: getVerticalSize(
                      20.00,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              8.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.gray400,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: ColorConstant.gray100,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    getHorizontalSize(
                                      8.00,
                                    ),
                                  ),
                                  topRight: Radius.circular(
                                    getHorizontalSize(
                                      8.00,
                                    ),
                                  ),
                                  bottomLeft: Radius.circular(
                                    getHorizontalSize(
                                      0.00,
                                    ),
                                  ),
                                  bottomRight: Radius.circular(
                                    getHorizontalSize(
                                      0.00,
                                    ),
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          16.00,
                                        ),
                                      ),
                                      child: Image.asset(
                                        ImageConstant.imgCoolkidsdiscu,
                                        height: getVerticalSize(
                                          138.00,
                                        ),
                                        width: getHorizontalSize(
                                          343.00,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          16.00,
                                        ),
                                        top: getVerticalSize(
                                          8.00,
                                        ),
                                        right: getHorizontalSize(
                                          16.00,
                                        ),
                                        bottom: getVerticalSize(
                                          8.00,
                                        ),
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: getVerticalSize(
                                          24.00,
                                        ),
                                        width: getHorizontalSize(
                                          63.00,
                                        ),
                                        decoration: AppDecoration
                                            .textstylerubikmedium142,
                                        child: Text(
                                          "lbl_50".tr,
                                          textAlign: TextAlign.right,
                                          style: AppStyle
                                              .textstylerubikmedium142
                                              .copyWith(
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            height: 1.14,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      16.00,
                                    ),
                                    top: getVerticalSize(
                                      16.00,
                                    ),
                                    right: getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                  child: Text(
                                    "lbl_3_h_30_min".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstylerubikmedium121
                                        .copyWith(
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      16.00,
                                    ),
                                    top: getVerticalSize(
                                      4.00,
                                    ),
                                    right: getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                  child: Text(
                                    "lbl_course".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstylerubikmedium24
                                        .copyWith(
                                      fontSize: getFontSize(
                                        24,
                                      ),
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      16.00,
                                    ),
                                    top: getVerticalSize(
                                      4.00,
                                    ),
                                    right: getHorizontalSize(
                                      16.00,
                                    ),
                                    bottom: getVerticalSize(
                                      8.00,
                                    ),
                                  ),
                                  child: Text(
                                    "msg_advanced_web_ap".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstylerubikregular142
                                        .copyWith(
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              8.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  16.00,
                                ),
                                top: getVerticalSize(
                                  16.00,
                                ),
                                right: getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(
                                  24.00,
                                ),
                                width: getHorizontalSize(
                                  63.00,
                                ),
                                decoration:
                                    AppDecoration.textstylerubikmedium142,
                                child: Text(
                                  "lbl_50".tr,
                                  textAlign: TextAlign.right,
                                  style:
                                      AppStyle.textstylerubikmedium142.copyWith(
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    height: 1.14,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    8.00,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          16.00,
                                        ),
                                        top: getVerticalSize(
                                          16.00,
                                        ),
                                        right: getHorizontalSize(
                                          16.00,
                                        ),
                                      ),
                                      child: Text(
                                        "msg_about_the_cours".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.textstylerubikmedium24
                                            .copyWith(
                                          fontSize: getFontSize(
                                            24,
                                          ),
                                          height: 1.33,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        311.00,
                                      ),
                                      margin: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          16.00,
                                        ),
                                        top: getVerticalSize(
                                          4.00,
                                        ),
                                        right: getHorizontalSize(
                                          16.00,
                                        ),
                                        bottom: getVerticalSize(
                                          8.00,
                                        ),
                                      ),
                                      child: Text(
                                        "msg_you_can_launch".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.textstylerubikregular142
                                            .copyWith(
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                      top: getVerticalSize(
                                        16.00,
                                      ),
                                      right: getHorizontalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_duration".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstylerubikmedium201
                                          .copyWith(
                                        fontSize: getFontSize(
                                          20,
                                        ),
                                        height: 1.30,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                      top: getVerticalSize(
                                        4.00,
                                      ),
                                      right: getHorizontalSize(
                                        16.00,
                                      ),
                                      bottom: getVerticalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_1_h_30_min".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstylerubikregular142
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                  bottom: getVerticalSize(
                                    16.00,
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: getVerticalSize(
                                    56.00,
                                  ),
                                  width: getHorizontalSize(
                                    309.00,
                                  ),
                                  decoration:
                                      AppDecoration.textstylerubikmedium16,
                                  child: Text(
                                    "lbl_add_to_cart".tr,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.textstylerubikmedium16
                                        .copyWith(
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      height: 1.13,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: getVerticalSize(
                            80.00,
                          ),
                          width: getHorizontalSize(
                            327.00,
                          ),
                          decoration: AppDecoration.textstylerubikmedium242,
                          child: Text(
                            "lbl_courses".tr,
                            textAlign: TextAlign.center,
                            style: AppStyle.textstylerubikmedium242.copyWith(
                              fontSize: getFontSize(
                                24,
                              ),
                              height: 1.33,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: getSize(
                          172.00,
                        ),
                        width: getSize(
                          172.00,
                        ),
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  138.99,
                                ),
                                width: getHorizontalSize(
                                  140.00,
                                ),
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    16.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                  bottom: getVerticalSize(
                                    17.01,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray100,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      69.50,
                                    ),
                                  ),
                                  border: Border.all(
                                    color: ColorConstant.blue300,
                                    width: getHorizontalSize(
                                      4.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    16.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                  bottom: getVerticalSize(
                                    16.00,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    getSize(
                                      65.47,
                                    ),
                                  ),
                                  child: Image.asset(
                                    ImageConstant.imgCoolkidsbust,
                                    height: getVerticalSize(
                                      130.94,
                                    ),
                                    width: getHorizontalSize(
                                      140.00,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              5.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.deepPurpleA200,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: getVerticalSize(
                                6.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  20.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
                                ),
                                bottom: getVerticalSize(
                                  20.00,
                                ),
                              ),
                              child: SmoothIndicator(
                                offset: 0,
                                count: 9,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                  activeDotColor: ColorConstant.blue300,
                                  dotColor: ColorConstant.bluegray100,
                                  dotHeight: getVerticalSize(
                                    6.00,
                                  ),
                                  dotWidth: getHorizontalSize(
                                    6.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              8.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.gray400,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: getVerticalSize(
                                194.00,
                              ),
                              width: getHorizontalSize(
                                343.00,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray100,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    getHorizontalSize(
                                      8.00,
                                    ),
                                  ),
                                  topRight: Radius.circular(
                                    getHorizontalSize(
                                      8.00,
                                    ),
                                  ),
                                  bottomLeft: Radius.circular(
                                    getHorizontalSize(
                                      0.00,
                                    ),
                                  ),
                                  bottomRight: Radius.circular(
                                    getHorizontalSize(
                                      0.00,
                                    ),
                                  ),
                                ),
                              ),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: ColorConstant.gray100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        8.00,
                                      ),
                                    ),
                                    topRight: Radius.circular(
                                      getHorizontalSize(
                                        8.00,
                                      ),
                                    ),
                                    bottomLeft: Radius.circular(
                                      getHorizontalSize(
                                        0.00,
                                      ),
                                    ),
                                    bottomRight: Radius.circular(
                                      getHorizontalSize(
                                        0.00,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            12.00,
                                          ),
                                          bottom: getVerticalSize(
                                            12.00,
                                          ),
                                        ),
                                        child: Image.asset(
                                          ImageConstant.imgCoolkidsdiscu1,
                                          height: getVerticalSize(
                                            166.00,
                                          ),
                                          width: getHorizontalSize(
                                            343.00,
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      16.00,
                                    ),
                                    top: getVerticalSize(
                                      16.00,
                                    ),
                                    right: getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                  child: Text(
                                    "lbl_left_1_h_20_min".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstylerubikmedium121
                                        .copyWith(
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      16.00,
                                    ),
                                    top: getVerticalSize(
                                      4.00,
                                    ),
                                    right: getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                  child: Text(
                                    "lbl_course".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstylerubikmedium24
                                        .copyWith(
                                      fontSize: getFontSize(
                                        24,
                                      ),
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      16.00,
                                    ),
                                    top: getVerticalSize(
                                      4.00,
                                    ),
                                    right: getHorizontalSize(
                                      16.00,
                                    ),
                                    bottom: getVerticalSize(
                                      8.00,
                                    ),
                                  ),
                                  child: Text(
                                    "msg_advanced_web_ap".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstylerubikregular142
                                        .copyWith(
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  1.50,
                                ),
                                bottom: getVerticalSize(
                                  1.50,
                                ),
                              ),
                              child: Text(
                                "lbl_category".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.textstylerubikregular142.copyWith(
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  height: 1.50,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(
                                  24.00,
                                ),
                                width: getHorizontalSize(
                                  43.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.blue300,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12.00,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "lbl_ui".tr,
                                  textAlign: TextAlign.right,
                                  style:
                                      AppStyle.textstylerubikmedium122.copyWith(
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(
                                  24.00,
                                ),
                                width: getHorizontalSize(
                                  43.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.blue300,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12.00,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "lbl_ui".tr,
                                  textAlign: TextAlign.right,
                                  style:
                                      AppStyle.textstylerubikmedium122.copyWith(
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(
                                  24.00,
                                ),
                                width: getHorizontalSize(
                                  43.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.blue300,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12.00,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "lbl_ui".tr,
                                  textAlign: TextAlign.right,
                                  style:
                                      AppStyle.textstylerubikmedium122.copyWith(
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  16.00,
                                ),
                                right: getHorizontalSize(
                                  41.00,
                                ),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(
                                  24.00,
                                ),
                                width: getHorizontalSize(
                                  43.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.blue300,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12.00,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "lbl_ui".tr,
                                  textAlign: TextAlign.right,
                                  style:
                                      AppStyle.textstylerubikmedium122.copyWith(
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: getVerticalSize(
                            26.00,
                          ),
                          width: getHorizontalSize(
                            58.00,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.blue300,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                12.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "lbl_50".tr,
                            textAlign: TextAlign.right,
                            style: AppStyle.textstylerubikmedium122.copyWith(
                              fontSize: getFontSize(
                                12,
                              ),
                              height: 1.50,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray100,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              8.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.bluegray101,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              ImageConstant.imgCoolkidslong1,
                              height: getVerticalSize(
                                138.00,
                              ),
                              width: getHorizontalSize(
                                343.00,
                              ),
                              fit: BoxFit.fill,
                            ),
                            Container(
                              height: getVerticalSize(
                                56.00,
                              ),
                              width: getHorizontalSize(
                                343.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgPlayvideo,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              8.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.bluegray101,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: ColorConstant.red50,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    getHorizontalSize(
                                      8.00,
                                    ),
                                  ),
                                  topRight: Radius.circular(
                                    getHorizontalSize(
                                      8.00,
                                    ),
                                  ),
                                  bottomLeft: Radius.circular(
                                    getHorizontalSize(
                                      0.00,
                                    ),
                                  ),
                                  bottomRight: Radius.circular(
                                    getHorizontalSize(
                                      0.00,
                                    ),
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.bluegray101,
                                  width: getHorizontalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    ImageConstant.imgCoolkidslong2,
                                    height: getVerticalSize(
                                      278.00,
                                    ),
                                    width: getHorizontalSize(
                                      343.00,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      56.00,
                                    ),
                                    width: getHorizontalSize(
                                      343.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgPlayvideo1,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  8.00,
                                ),
                                bottom: getVerticalSize(
                                  8.00,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                      top: getVerticalSize(
                                        16.00,
                                      ),
                                      right: getHorizontalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_course".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstylerubikmedium24
                                          .copyWith(
                                        fontSize: getFontSize(
                                          24,
                                        ),
                                        height: 1.33,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                      top: getVerticalSize(
                                        8.00,
                                      ),
                                      right: getHorizontalSize(
                                        16.00,
                                      ),
                                      bottom: getVerticalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Text(
                                      "msg_advanced_web_ap".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstylerubikmedium163
                                          .copyWith(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        height: 1.13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              8.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.bluegray101,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  16.00,
                                ),
                                top: getVerticalSize(
                                  8.00,
                                ),
                                bottom: getVerticalSize(
                                  8.00,
                                ),
                              ),
                              child: Image.asset(
                                ImageConstant.imgCoolkidsstudy,
                                height: getVerticalSize(
                                  72.00,
                                ),
                                width: getHorizontalSize(
                                  78.00,
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  8.00,
                                ),
                                top: getVerticalSize(
                                  17.50,
                                ),
                                right: getHorizontalSize(
                                  12.00,
                                ),
                                bottom: getVerticalSize(
                                  17.50,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_html_course".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textstylerubikmedium201
                                        .copyWith(
                                      fontSize: getFontSize(
                                        20,
                                      ),
                                      height: 1.30,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          16.00,
                                        ),
                                        right: getHorizontalSize(
                                          7.00,
                                        ),
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          11.00,
                                        ),
                                        width: getHorizontalSize(
                                          222.00,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.red50,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              16.00,
                                            ),
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              16.00,
                                            ),
                                          ),
                                          child: LinearProgressIndicator(
                                            value: 0.41,
                                            backgroundColor:
                                                ColorConstant.red50,
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              ColorConstant.blue200,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          262.00,
                        ),
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              5.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.deepPurpleA200,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  20.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
                                ),
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  11.00,
                                ),
                                width: getHorizontalSize(
                                  222.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.red50,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                  child: LinearProgressIndicator(
                                    value: 0.41,
                                    backgroundColor: ColorConstant.red50,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      ColorConstant.blue200,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  38.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
                                ),
                                bottom: getVerticalSize(
                                  20.00,
                                ),
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  11.00,
                                ),
                                width: getHorizontalSize(
                                  222.00,
                                ),
                                child: SvgPicture.asset(
                                  ImageConstant.imgProperty1prog,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: getVerticalSize(
                            24.00,
                          ),
                          width: getHorizontalSize(
                            43.00,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.blue300,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                12.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "lbl_ui".tr,
                            textAlign: TextAlign.right,
                            style: AppStyle.textstylerubikmedium122.copyWith(
                              fontSize: getFontSize(
                                12,
                              ),
                              height: 1.50,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              5.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.deepPurpleA200,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  16.00,
                                ),
                                top: getVerticalSize(
                                  16.00,
                                ),
                                right: getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.gray400,
                                  width: getHorizontalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                      top: getVerticalSize(
                                        8.00,
                                      ),
                                      bottom: getVerticalSize(
                                        8.00,
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: getVerticalSize(
                                              17.00,
                                            ),
                                            bottom: getVerticalSize(
                                              17.00,
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                48.00,
                                              ),
                                            ),
                                            child: Container(
                                              height: getSize(
                                                32.00,
                                              ),
                                              width: getSize(
                                                32.00,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgSettingsinform,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              12.00,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    9.16,
                                                  ),
                                                ),
                                                child: Text(
                                                  "lbl_name".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstylerubikmedium201
                                                      .copyWith(
                                                    fontSize: getFontSize(
                                                      20,
                                                    ),
                                                    height: 1.30,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: getVerticalSize(
                                                    9.16,
                                                  ),
                                                ),
                                                child: Text(
                                                  "lbl_john_smith".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstylerubikregular14
                                                      .copyWith(
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    height: 1.50,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        8.00,
                                      ),
                                      top: getVerticalSize(
                                        29.00,
                                      ),
                                      right: getHorizontalSize(
                                        16.00,
                                      ),
                                      bottom: getVerticalSize(
                                        29.00,
                                      ),
                                    ),
                                    child: Container(
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgNexticon,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  16.00,
                                ),
                                top: getVerticalSize(
                                  64.00,
                                ),
                                right: getHorizontalSize(
                                  16.00,
                                ),
                                bottom: getVerticalSize(
                                  16.00,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.gray400,
                                  width: getHorizontalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                      top: getVerticalSize(
                                        8.00,
                                      ),
                                      bottom: getVerticalSize(
                                        8.00,
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: getVerticalSize(
                                              17.00,
                                            ),
                                            bottom: getVerticalSize(
                                              17.00,
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                56.00,
                                              ),
                                            ),
                                            child: Container(
                                              height: getSize(
                                                32.00,
                                              ),
                                              width: getSize(
                                                32.00,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant
                                                    .imgSettingsinform1,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              12.00,
                                            ),
                                            top: getVerticalSize(
                                              20.00,
                                            ),
                                            bottom: getVerticalSize(
                                              20.00,
                                            ),
                                          ),
                                          child: Text(
                                            "lbl_notifications".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .textstylerubikmedium201
                                                .copyWith(
                                              fontSize: getFontSize(
                                                20,
                                              ),
                                              height: 1.30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        12.00,
                                      ),
                                      top: getVerticalSize(
                                        31.00,
                                      ),
                                      right: getHorizontalSize(
                                        20.00,
                                      ),
                                      bottom: getVerticalSize(
                                        31.00,
                                      ),
                                    ),
                                    child: Switch(
                                      value: true,
                                      activeTrackColor:
                                          ColorConstant.bluegray400,
                                      activeColor: ColorConstant.bluegray400,
                                      onChanged: (rating) {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              8.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.gray400,
                            width: getHorizontalSize(
                              2.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  24.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: Image.asset(
                                ImageConstant.imgCoolkidsonwh1,
                                height: getVerticalSize(
                                  197.00,
                                ),
                                width: getHorizontalSize(
                                  295.00,
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  16.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: getHorizontalSize(
                                            10.00,
                                          ),
                                        ),
                                        child: Text(
                                          "lbl_quiz_1".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstylerubikregular143
                                              .copyWith(
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            4.00,
                                          ),
                                          right: getHorizontalSize(
                                            10.00,
                                          ),
                                        ),
                                        child: Text(
                                          "msg_tags_for_header".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstylerubikmedium201
                                              .copyWith(
                                            fontSize: getFontSize(
                                              20,
                                            ),
                                            height: 1.30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      295.00,
                                    ),
                                    margin: EdgeInsets.only(
                                      top: getVerticalSize(
                                        8.00,
                                      ),
                                    ),
                                    child: Text(
                                      "msg_let_s_put_your".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstylerubikregular144
                                          .copyWith(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  16.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                                bottom: getVerticalSize(
                                  32.00,
                                ),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(
                                  56.00,
                                ),
                                width: getHorizontalSize(
                                  295.00,
                                ),
                                decoration:
                                    AppDecoration.textstylerubikregular145,
                                child: Text(
                                  "lbl_begin".tr,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textstylerubikregular145
                                      .copyWith(
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              5.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.deepPurpleA200,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  20.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    8.00,
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.gray400,
                                  width: getHorizontalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        24.00,
                                      ),
                                      top: getVerticalSize(
                                        16.00,
                                      ),
                                      bottom: getVerticalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_a".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstylerubikregular161
                                          .copyWith(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        height: 1.63,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                      top: getVerticalSize(
                                        16.00,
                                      ),
                                      right: getHorizontalSize(
                                        257.00,
                                      ),
                                      bottom: getVerticalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_h1".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstylerubikregular161
                                          .copyWith(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        height: 1.63,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  30.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
                                ),
                                bottom: getVerticalSize(
                                  20.00,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.red50,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    8.00,
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.deepOrange400,
                                  width: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        24.00,
                                      ),
                                      top: getVerticalSize(
                                        16.00,
                                      ),
                                      bottom: getVerticalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_a".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstylerubikregular161
                                          .copyWith(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        height: 1.63,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                      top: getVerticalSize(
                                        16.00,
                                      ),
                                      right: getHorizontalSize(
                                        257.00,
                                      ),
                                      bottom: getVerticalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_h1".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstylerubikregular161
                                          .copyWith(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        height: 1.63,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          194.00,
                        ),
                        width: getHorizontalSize(
                          343.00,
                        ),
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            64.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray100,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              8.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.gray400,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.gray100,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: ColorConstant.gray400,
                              width: getHorizontalSize(
                                1.00,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                8.00,
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      16.00,
                                    ),
                                    top: getVerticalSize(
                                      8.00,
                                    ),
                                    right: getHorizontalSize(
                                      16.00,
                                    ),
                                    bottom: getVerticalSize(
                                      8.00,
                                    ),
                                  ),
                                  child: Image.asset(
                                    ImageConstant.imgCoolkidsbrain,
                                    height: getVerticalSize(
                                      178.00,
                                    ),
                                    width: getHorizontalSize(
                                      311.00,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
