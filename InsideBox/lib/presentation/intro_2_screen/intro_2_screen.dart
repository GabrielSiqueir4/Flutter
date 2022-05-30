import 'controller/intro_2_controller.dart';
import 'package:flutter/material.dart';
import 'package:gabriel_s_application1/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro2Screen extends GetWidget<Intro2Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
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
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          112.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            ImageConstant.imgCoolkidsstayi,
                            height: getVerticalSize(
                              264.00,
                            ),
                            width: getHorizontalSize(
                              375.00,
                            ),
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                16.00,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    341.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      17.00,
                                    ),
                                    right: getHorizontalSize(
                                      17.00,
                                    ),
                                  ),
                                  child: Text(
                                    "msg_find_a_course_f".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.center,
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
                                    341.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      17.00,
                                    ),
                                    top: getVerticalSize(
                                      8.00,
                                    ),
                                    right: getHorizontalSize(
                                      17.00,
                                    ),
                                  ),
                                  child: Text(
                                    "msg_quarantine_is_t2".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.textstylerubikregular14
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
                            child: Container(
                              height: getVerticalSize(
                                6.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  161.50,
                                ),
                                top: getVerticalSize(
                                  16.00,
                                ),
                                right: getHorizontalSize(
                                  161.50,
                                ),
                              ),
                              child: SmoothIndicator(
                                offset: 0,
                                count: 3,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                  spacing: 12,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          16.00,
                        ),
                        top: getVerticalSize(
                          72.00,
                        ),
                        right: getHorizontalSize(
                          16.00,
                        ),
                        bottom: getVerticalSize(
                          20.00,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: getVerticalSize(
                          56.00,
                        ),
                        width: getHorizontalSize(
                          311.00,
                        ),
                        decoration: AppDecoration.textstylerubikmedium16,
                        child: Text(
                          "lbl_next".tr,
                          textAlign: TextAlign.center,
                          style: AppStyle.textstylerubikmedium16.copyWith(
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
          ),
        ),
      ),
    );
  }
}
