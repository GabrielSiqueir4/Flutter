import 'controller/fields_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gabriel_s_application1/core/app_export.dart';

class FieldsScreen extends GetWidget<FieldsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: size.width,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          12.00,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              17.50,
                            ),
                            bottom: getVerticalSize(
                              17.50,
                            ),
                          ),
                          child: Text(
                            "lbl_search_course".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.textstylerubikregular14.copyWith(
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
                              16.00,
                            ),
                            bottom: getVerticalSize(
                              16.00,
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
                              ImageConstant.imgSearchicon,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
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
                    height: getVerticalSize(
                      53.00,
                    ),
                    width: getHorizontalSize(
                      296.00,
                    ),
                    child: TextFormField(
                      controller: controller.loginController,
                      decoration: InputDecoration(
                        hintText: "lbl_login".tr,
                        hintStyle: AppStyle.textstylerubikregular14.copyWith(
                          fontSize: getFontSize(
                            14.0,
                          ),
                          color: ColorConstant.gray600,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              12.00,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: ColorConstant.gray400,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              12.00,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: ColorConstant.gray400,
                            width: 1,
                          ),
                        ),
                        filled: true,
                        fillColor: ColorConstant.whiteA700,
                        isDense: true,
                        contentPadding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16.00,
                          ),
                          top: getVerticalSize(
                            19.50,
                          ),
                          bottom: getVerticalSize(
                            19.50,
                          ),
                        ),
                      ),
                      style: TextStyle(
                        color: ColorConstant.gray600,
                        fontSize: getFontSize(
                          14.0,
                        ),
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400,
                      ),
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
                    height: getVerticalSize(
                      53.00,
                    ),
                    width: getHorizontalSize(
                      296.00,
                    ),
                    child: TextFormField(
                      controller: controller.passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "lbl_password".tr,
                        hintStyle: AppStyle.textstylerubikregular14.copyWith(
                          fontSize: getFontSize(
                            14.0,
                          ),
                          color: ColorConstant.gray600,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              12.00,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: ColorConstant.gray400,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              12.00,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: ColorConstant.gray400,
                            width: 1,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              10.00,
                            ),
                            right: getHorizontalSize(
                              16.00,
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
                              ImageConstant.imgPasswordIcons,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        suffixIconConstraints: BoxConstraints(
                          minWidth: getSize(
                            24.00,
                          ),
                          minHeight: getSize(
                            24.00,
                          ),
                        ),
                        filled: true,
                        fillColor: ColorConstant.whiteA700,
                        isDense: true,
                        contentPadding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16.00,
                          ),
                          top: getVerticalSize(
                            19.50,
                          ),
                          bottom: getVerticalSize(
                            19.50,
                          ),
                        ),
                      ),
                      style: TextStyle(
                        color: ColorConstant.gray600,
                        fontSize: getFontSize(
                          14.0,
                        ),
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
