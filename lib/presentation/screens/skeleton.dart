import 'package:flutter/material.dart';
import 'package:pavillion_rewards/presentation/common_widgets/bottom_nav_icon.dart';
import 'package:pavillion_rewards/presentation/resources/color_manager.dart';
import 'package:pavillion_rewards/presentation/resources/image_path.dart';
import 'package:pavillion_rewards/presentation/resources/text_manager.dart';
import 'package:pavillion_rewards/presentation/resources/values_manager.dart';
import 'package:pavillion_rewards/presentation/screens/home_screen/home_screen.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  final List<Widget> _screens = const [HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: 0, children: _screens),
      bottomNavigationBar: Container(
        height: SizeManager.s60,
        decoration: BoxDecoration(
            color: ColorManager.white,
            boxShadow: [
              BoxShadow(
                  color: ColorManager.shadowColor,
                  blurRadius: 1,
                  spreadRadius: 1,
                  offset: const Offset(0, -2))
            ],
            borderRadius: const BorderRadius.vertical(
                top: Radius.circular(SizeManager.s10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BottomNavIcon(
              image: ImagePath.home,
              title: TextManager.home,
              color: ColorManager.purple,
            ),
            BottomNavIcon(
              image: ImagePath.payment,
              title: TextManager.payments,
            ),
            BottomNavIcon(
              image: ImagePath.card,
              title: TextManager.cards,
            ),
            BottomNavIcon(
              image: ImagePath.setting,
              title: TextManager.settigs,
            )
          ],
        ),
      ),
    );
  }
}
