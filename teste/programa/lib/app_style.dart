import 'package:flutter/material.dart';


class AppStyle {
  static TextStyle textstyleregular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstylerubikmedium12 = textstylerubikmedium241.copyWith(
    fontSize: getFontSize(
      12,
    ),
  );

  static TextStyle textstylerubikregular16 = textstylerubikregular141.copyWith(
    fontSize: getFontSize(
      16,
    ),
  );

  static TextStyle textstylerubikmedium14 = textstylerubikmedium163.copyWith(
    fontSize: getFontSize(
      14,
    ),
  );

  static TextStyle textstylerubikregular14 = textstylerubikregular141.copyWith(
    color: ColorConstant.gray800,
  );

  static TextStyle textstylerubikmedium16 = textstylerubikmedium161.copyWith(
    color: ColorConstant.whiteA700,
  );

  static TextStyle textstylerubikmedium18 = textstylerubikmedium241.copyWith(
    fontSize: getFontSize(
      18,
    ),
  );

  static TextStyle textstylerubikbold56 = TextStyle(
    color: ColorConstant.gray800,
    fontSize: getFontSize(
      56,
    ),
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w700,
  );

  static TextStyle textstylerubikmedium20 = textstylerubikmedium201.copyWith(
    color: ColorConstant.gray800,
  );

  static TextStyle textstylerubikmedium241 = textstylerubikmedium24.copyWith(
    color: ColorConstant.gray800,
  );

  static TextStyle textstylerubikmedium242 = textstylerubikmedium24.copyWith();

  static TextStyle textstylerubikmedium24 = textstylerubikmedium201.copyWith(
    fontSize: getFontSize(
      24,
    ),
  );

  static TextStyle textstylerubikmedium201 = TextStyle(
    color: ColorConstant.gray800,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
  );

  static TextStyle textstylerubikmedium141 = textstylerubikmedium241.copyWith(
    fontSize: getFontSize(
      14,
    ),
  );

  static TextStyle textstylerubikmedium122 = textstylerubikmedium142.copyWith(
    fontSize: getFontSize(
      12,
    ),
  );

  static TextStyle textstylerubikmedium121 = textstylerubikmedium12.copyWith(
    color: ColorConstant.bluegray401,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
  );

  static TextStyle textstylerubikmedium163 = textstylerubikmedium161.copyWith(
    color: ColorConstant.gray800,
  );

  static TextStyle textstylerubikmedium162 = textstylerubikmedium201.copyWith(
    fontSize: getFontSize(
      16,
    ),
  );

  static TextStyle textstylerubikbold40 = textstylerubikbold401.copyWith(
    color: ColorConstant.gray800,
  );

  static TextStyle textstylerubikmedium161 = textstylerubikmedium241.copyWith(
    fontSize: getFontSize(
      16,
    ),
  );

  static TextStyle textstylerubikmedium142 = textstylerubikmedium141.copyWith(
    color: ColorConstant.gray800,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
  );

  static TextStyle textstylerubikregular147 = textstylerubikregular141.copyWith(
    color: ColorConstant.deepOrange70090,
  );

  static TextStyle textstylerubikregular146 = textstylerubikregular141.copyWith(
    color: ColorConstant.gray800,
  );

  static TextStyle textstylerubikregular145 =
      textstylerubikregular142.copyWith();

  static TextStyle textstylerubikbold401 = textstylerubikbold56.copyWith(
    fontSize: getFontSize(
      40,
    ),
  );

  static TextStyle textstylerubikbold32 = textstylerubikbold56.copyWith(
    fontSize: getFontSize(
      32,
    ),
  );

  static TextStyle textstylerubikregular144 = textstylerubikregular141.copyWith(
    color: ColorConstant.gray600A2,
  );

  static TextStyle textstylerubikregular143 = textstylerubikregular141.copyWith(
    color: ColorConstant.deepOrange70090,
  );

  static TextStyle textstylerubikregular161 = textstylerubikregular16.copyWith(
    color: ColorConstant.gray600A2,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstylerubikregular142 = textstylerubikregular141.copyWith(
    color: ColorConstant.gray800,
  );

  static TextStyle textstylerubikregular141 = TextStyle(
    color: ColorConstant.gray800,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstyleregular16 = TextStyle(
    color: ColorConstant.bluegray401,
    fontSize: getFontSize(
      16,
    ),
    fontWeight: FontWeight.w400,
  );

  static getFontSize(int i) {}
}

class ColorConstant {
  static var deepOrange70090;

  static var gray600A2;

  static var gray800;

  static var bluegray401;

  static var whiteA700;

  static var black900;
}
