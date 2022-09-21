import 'package:flutter/material.dart';
import 'package:pavillion_rewards/presentation/resources/color_manager.dart';
import 'package:pavillion_rewards/presentation/resources/values_manager.dart';

class FontManager{
  static TextStyle manrope({Color?color, double? size, FontWeight? weight}){
    return TextStyle(
      fontFamily: 'Manrope',
      color: color??ColorManager.black,
      fontSize: size??SizeManager.s14,
      fontWeight: weight??FontWeight.w400
    );
  }
}