import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pavillion_rewards/presentation/resources/color_manager.dart';
import 'package:pavillion_rewards/presentation/resources/font_manager.dart';
import 'package:pavillion_rewards/presentation/resources/values_manager.dart';

class BottomNavIcon extends StatelessWidget {
  String image;
  String title;
  Color? color;
  BottomNavIcon(
      {super.key, required this.image, required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeManager.s50,
      height: SizeManager.s50,
      child: Column(
        children: [
          Image.asset(
            image,
            height: SizeManager.s18,
          ),
          const SizedBox(
            height: SizeManager.s4,
          ),
          FittedBox(
            child: Text(
              title,
              style: FontManager.manrope(
                  weight: FontWeight.w900,
                  size: SizeManager.s14,
                  color: color ?? ColorManager.iconColor),
            ),
          )
        ],
      ),
    );
  }
}
