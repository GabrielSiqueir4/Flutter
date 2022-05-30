import 'controller/buttons_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gabriel_s_application1/core/app_export.dart';

class ButtonsScreen extends GetWidget<ButtonsController> {
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
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
                                  56.00,
                                ),
                                width: getHorizontalSize(
                                  275.00,
                                ),
                                decoration:
                                    AppDecoration.textstylerubikmedium16,
                                child: Text(
                                  "lbl_get_started".tr,
                                  textAlign: TextAlign.center,
                                  style:
                                      AppStyle.textstylerubikmedium16.copyWith(
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    height: 1.13,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  16.00,
                                ),
                                top: getVerticalSize(
                                  24.00,
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
                                  275.00,
                                ),
                                decoration:
                                    AppDecoration.textstylerubikmedium162,
                                child: Text(
                                  "lbl_get_started".tr,
                                  textAlign: TextAlign.center,
                                  style:
                                      AppStyle.textstylerubikmedium162.copyWith(
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    height: 1.13,
                                  ),
                                ),
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
                                  34.00,
                                ),
                                top: getVerticalSize(
                                  21.00,
                                ),
                                bottom: getVerticalSize(
                                  21.00,
                                ),
                              ),
                              child: Text(
                                "lbl_skip".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.right,
                                style: AppStyle.textstylerubikmedium14.copyWith(
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  height: 1.14,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  36.00,
                                ),
                                top: getVerticalSize(
                                  21.00,
                                ),
                                bottom: getVerticalSize(
                                  21.00,
                                ),
                              ),
                              child: Text(
                                "lbl_skip".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.textstylerubikmedium14.copyWith(
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  height: 1.14,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  36.00,
                                ),
                                top: getVerticalSize(
                                  21.00,
                                ),
                                right: getHorizontalSize(
                                  34.00,
                                ),
                                bottom: getVerticalSize(
                                  21.00,
                                ),
                              ),
                              child: Text(
                                "lbl_skip".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.textstylerubikmedium14.copyWith(
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  height: 1.14,
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
                          height: getVerticalSize(
                            80.00,
                          ),
                          width: getHorizontalSize(
                            208.00,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgSocialbuttons,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          76.00,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    24.00,
                                  ),
                                  top: getVerticalSize(
                                    30.00,
                                  ),
                                  right: getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                                child: Switch(
                                  value: true,
                                  inactiveTrackColor: ColorConstant.gray400,
                                  activeTrackColor: ColorConstant.bluegray400,
                                  inactiveThumbColor: ColorConstant.gray400,
                                  activeColor: ColorConstant.bluegray400,
                                  onChanged: (rating) {},
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    24.00,
                                  ),
                                  top: getVerticalSize(
                                    47.00,
                                  ),
                                  right: getHorizontalSize(
                                    20.00,
                                  ),
                                  bottom: getVerticalSize(
                                    11.00,
                                  ),
                                ),
                                child: Switch(
                                  value: false,
                                  inactiveTrackColor: ColorConstant.bluegray400,
                                  activeTrackColor: ColorConstant.gray400,
                                  inactiveThumbColor: ColorConstant.bluegray400,
                                  activeColor: ColorConstant.gray400,
                                  onChanged: (rating) {},
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
                          height: getSize(
                            48.00,
                          ),
                          width: getSize(
                            48.00,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgPreviosbutton,
                            fit: BoxFit.fill,
                          ),
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
                          height: getSize(
                            48.00,
                          ),
                          width: getSize(
                            48.00,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgNotificationbu,
                            fit: BoxFit.fill,
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
