import 'controller/text_styles_controller.dart';
import 'package:flutter/material.dart';
import 'package:gabriel_s_application1/core/app_export.dart';

class TextStylesScreen extends GetWidget<TextStylesController> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        40.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        40.00,
                      ),
                    ),
                    child: Text(
                      "lbl_display_1".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerubikbold56.copyWith(
                        fontSize: getFontSize(
                          56,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        40.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        40.00,
                      ),
                    ),
                    child: Text(
                      "lbl_display_2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerubikbold401.copyWith(
                        fontSize: getFontSize(
                          40,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        40.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        40.00,
                      ),
                    ),
                    child: Text(
                      "lbl_display_3".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerubikbold32.copyWith(
                        fontSize: getFontSize(
                          32,
                        ),
                        height: 1.31,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        40.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        40.00,
                      ),
                    ),
                    child: Text(
                      "lbl_heading_1".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerubikmedium241.copyWith(
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
                        40.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        40.00,
                      ),
                    ),
                    child: Text(
                      "lbl_heading_2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerubikmedium20.copyWith(
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
                        40.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        40.00,
                      ),
                    ),
                    child: Text(
                      "lbl_paragraph_large".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerubikregular16.copyWith(
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
                        40.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        40.00,
                      ),
                    ),
                    child: Text(
                      "msg_paragraph_mediu".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerubikregular141.copyWith(
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
                        40.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        40.00,
                      ),
                    ),
                    child: Text(
                      "lbl_paragraph_small".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerubikmedium12.copyWith(
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
                        40.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        40.00,
                      ),
                    ),
                    child: Text(
                      "lbl_button_large".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerubikmedium18.copyWith(
                        fontSize: getFontSize(
                          18,
                        ),
                        height: 1.22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        40.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        40.00,
                      ),
                    ),
                    child: Text(
                      "lbl_button_medium".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerubikmedium161.copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                        height: 1.13,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        40.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        40.00,
                      ),
                      bottom: getVerticalSize(
                        20.00,
                      ),
                    ),
                    child: Text(
                      "lbl_button_small".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstylerubikmedium141.copyWith(
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
          ),
        ),
      ),
    );
  }
}
