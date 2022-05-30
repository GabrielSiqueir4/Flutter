import 'controller/tab_bars_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gabriel_s_application1/core/app_export.dart';

class TabBarsScreen extends GetWidget<TabBarsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              20.00,
                            ),
                            bottom: getVerticalSize(
                              20.00,
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
                                    18.00,
                                  ),
                                  right: getHorizontalSize(
                                    18.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    36.00,
                                  ),
                                  width: getHorizontalSize(
                                    28.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgIcon,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2.00,
                                  ),
                                  right: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl_courses".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textstylerubikregular146
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
                              36.00,
                            ),
                            top: getVerticalSize(
                              20.00,
                            ),
                            bottom: getVerticalSize(
                              20.00,
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
                                    18.00,
                                  ),
                                  right: getHorizontalSize(
                                    18.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    36.00,
                                  ),
                                  width: getHorizontalSize(
                                    28.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgProfileicon,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2.00,
                                  ),
                                  right: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl_profile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textstylerubikregular146
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
                              38.00,
                            ),
                            top: getVerticalSize(
                              19.00,
                            ),
                            right: getHorizontalSize(
                              14.00,
                            ),
                            bottom: getVerticalSize(
                              19.00,
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
                                    17.00,
                                  ),
                                  right: getHorizontalSize(
                                    17.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    38.00,
                                  ),
                                  width: getHorizontalSize(
                                    30.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgFrame4,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2.00,
                                  ),
                                  right: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl_settings".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textstylerubikregular146
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
                  Container(
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        64.00,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                        topRight: Radius.circular(
                          getHorizontalSize(
                            16.00,
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
                        color: ColorConstant.gray400,
                        width: getHorizontalSize(
                          1.00,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              25.50,
                            ),
                            top: getVerticalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              34.00,
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
                                    18.00,
                                  ),
                                  right: getHorizontalSize(
                                    18.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    36.00,
                                  ),
                                  width: getHorizontalSize(
                                    28.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgIcon2,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2.00,
                                  ),
                                  right: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl_courses".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textstylerubikregular146
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
                            top: getVerticalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              34.00,
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
                                    18.00,
                                  ),
                                  right: getHorizontalSize(
                                    18.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    36.00,
                                  ),
                                  width: getHorizontalSize(
                                    28.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgProfileicon2,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2.00,
                                  ),
                                  right: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl_profile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textstylerubikregular146
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
                            top: getVerticalSize(
                              10.00,
                            ),
                            right: getHorizontalSize(
                              25.50,
                            ),
                            bottom: getVerticalSize(
                              32.00,
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
                                    17.00,
                                  ),
                                  right: getHorizontalSize(
                                    17.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    38.00,
                                  ),
                                  width: getHorizontalSize(
                                    30.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgFrame42,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2.00,
                                  ),
                                  right: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl_settings".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textstylerubikregular147
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
                  Container(
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        64.00,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                        topRight: Radius.circular(
                          getHorizontalSize(
                            16.00,
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
                        color: ColorConstant.gray400,
                        width: getHorizontalSize(
                          1.00,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              25.50,
                            ),
                            top: getVerticalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              34.00,
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
                                    18.00,
                                  ),
                                  right: getHorizontalSize(
                                    18.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    36.00,
                                  ),
                                  width: getHorizontalSize(
                                    28.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgIcon3,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2.00,
                                  ),
                                  right: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl_courses".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textstylerubikregular146
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
                            top: getVerticalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              34.00,
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
                                    18.00,
                                  ),
                                  right: getHorizontalSize(
                                    18.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    36.00,
                                  ),
                                  width: getHorizontalSize(
                                    28.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgProfileicon3,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2.00,
                                  ),
                                  right: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl_profile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textstylerubikregular146
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
                            top: getVerticalSize(
                              10.00,
                            ),
                            right: getHorizontalSize(
                              25.50,
                            ),
                            bottom: getVerticalSize(
                              32.00,
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
                                    17.00,
                                  ),
                                  right: getHorizontalSize(
                                    17.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    38.00,
                                  ),
                                  width: getHorizontalSize(
                                    30.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgFrame43,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2.00,
                                  ),
                                  right: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl_settings".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textstylerubikregular146
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
                  Container(
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        64.00,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                        topRight: Radius.circular(
                          getHorizontalSize(
                            16.00,
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
                        color: ColorConstant.gray400,
                        width: getHorizontalSize(
                          1.00,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              25.50,
                            ),
                            top: getVerticalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              34.00,
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
                                    18.00,
                                  ),
                                  right: getHorizontalSize(
                                    18.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    36.00,
                                  ),
                                  width: getHorizontalSize(
                                    28.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgIcon4,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2.00,
                                  ),
                                  right: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl_courses".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textstylerubikregular146
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
                            top: getVerticalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              34.00,
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
                                    18.00,
                                  ),
                                  right: getHorizontalSize(
                                    18.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    36.00,
                                  ),
                                  width: getHorizontalSize(
                                    28.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgProfileicon4,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2.00,
                                  ),
                                  right: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl_profile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textstylerubikregular147
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
                            top: getVerticalSize(
                              10.00,
                            ),
                            right: getHorizontalSize(
                              25.50,
                            ),
                            bottom: getVerticalSize(
                              32.00,
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
                                    17.00,
                                  ),
                                  right: getHorizontalSize(
                                    17.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    38.00,
                                  ),
                                  width: getHorizontalSize(
                                    30.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgFrame44,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2.00,
                                  ),
                                  right: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "lbl_settings".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.textstylerubikregular146
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
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      16.00,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      16.00,
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
                  color: ColorConstant.gray400,
                  width: getHorizontalSize(
                    1.00,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        10.00,
                      ),
                      bottom: getVerticalSize(
                        34.00,
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
                              16.00,
                            ),
                            right: getHorizontalSize(
                              16.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              36.00,
                            ),
                            width: getHorizontalSize(
                              28.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgIcon1,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_courses".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.textstylerubikregular147.copyWith(
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
                      top: getVerticalSize(
                        10.00,
                      ),
                      bottom: getVerticalSize(
                        34.00,
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
                              16.00,
                            ),
                            right: getHorizontalSize(
                              16.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              36.00,
                            ),
                            width: getHorizontalSize(
                              28.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgProfileicon1,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_profile".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.textstylerubikregular146.copyWith(
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
                      top: getVerticalSize(
                        10.00,
                      ),
                      bottom: getVerticalSize(
                        32.00,
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
                              15.00,
                            ),
                            right: getHorizontalSize(
                              15.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              38.00,
                            ),
                            width: getHorizontalSize(
                              30.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgFrame41,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_settings".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.textstylerubikregular146.copyWith(
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
          ],
        ),
      ),
    );
  }
}
