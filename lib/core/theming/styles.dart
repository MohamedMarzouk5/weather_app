import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font20WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    letterSpacing: 2.5,
  );

  static TextStyle font25WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 25.sp,
    fontWeight: FontWeightHelper.bold,
    letterSpacing: 2.5,
  );
  static TextStyle font25blackBold = TextStyle(
    color: Colors.black,
    fontSize: 25.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font35WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 35.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font15blackbold = TextStyle(
    color: Colors.white,
    fontSize: 35.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font15regularblack = TextStyle(
    color: Colors.black,
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font20blackbold = TextStyle(
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );
}
