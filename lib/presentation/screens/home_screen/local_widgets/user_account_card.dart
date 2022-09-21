import 'package:flutter/material.dart';
import 'package:pavillion_rewards/presentation/resources/color_manager.dart';
import 'package:pavillion_rewards/presentation/resources/font_manager.dart';
import 'package:pavillion_rewards/presentation/resources/values_manager.dart';

class UserAccountCard extends StatelessWidget {
  String image;
  String title;
  String balance;
  void Function()? onHide;
  UserAccountCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.balance,
      this.onHide})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeManager.s10)),
        child: Container(
          padding: const EdgeInsets.all(SizeManager.s5),
          width: double.infinity,
          height: SizeManager.s60,
          decoration: BoxDecoration(color: ColorManager.purple),
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: constraint.maxHeight * 0.6,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(
                  width: SizeManager.s4,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: FontManager.manrope(
                          color: ColorManager.white, weight: FontWeight.w700),
                    ),
                    Text(
                      balance,
                      style:
                          FontManager.manrope(color: ColorManager.fadedWhite),
                    )
                  ],
                ),
                IconButton(
                    onPressed: onHide,
                    icon: Icon(
                      Icons.visibility,
                      color: ColorManager.fadedWhite,
                      size: constraint.maxWidth * 0.15,
                    ))
              ],
            ),
          ),
        ),
      );
    });
  }
}
