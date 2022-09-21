import 'package:flutter/material.dart';
import 'package:pavillion_rewards/presentation/resources/color_manager.dart';
import 'package:pavillion_rewards/presentation/resources/font_manager.dart';
import 'package:pavillion_rewards/presentation/resources/image_path.dart';
import 'package:pavillion_rewards/presentation/resources/text_manager.dart';
import 'package:pavillion_rewards/presentation/resources/values_manager.dart';
import 'package:pavillion_rewards/presentation/screens/home_screen/local_widgets/user_account_card.dart';

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  double flexibleHeight;
  SliverAppBarDelegate({required this.flexibleHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final showButton = flexibleHeight - shrinkOffset >= 180;

    return Container(
      padding: const EdgeInsets.only(
          top: SizeManager.s14, left: SizeManager.s20, right: SizeManager.s20),
      decoration: BoxDecoration(
          color: ColorManager.white,
          boxShadow: [
            BoxShadow(
                color: ColorManager.shadowColor,
                blurRadius: 1,
                spreadRadius: 1,
                offset: const Offset(0, 2))
          ],
          borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(SizeManager.s25))),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: SizeManager.s20,
                  backgroundImage: AssetImage(ImagePath.userPhoto),
                ),
                const SizedBox(
                  width: SizeManager.s10,
                ),
                Text(
                  TextManager.greeting,
                  style: FontManager.manrope(
                      size: SizeManager.s18, weight: FontWeight.w700),
                )
              ],
            ),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  ImagePath.search,
                  width: SizeManager.s20,
                ),
                const SizedBox(width: SizeManager.s5),
                Image.asset(
                  ImagePath.help,
                  width: SizeManager.s20,
                ),
                const SizedBox(width: SizeManager.s5),
                Image.asset(
                  ImagePath.notification,
                  width: SizeManager.s20,
                ),
                const SizedBox(width: SizeManager.s5)
              ],
            ),
          ],
        ),
        const SizedBox(
          height: SizeManager.s40,
        ),
        if (showButton)
          SizedBox(
            height: SizeManager.s60,
            child: Opacity(
              opacity: 1 - (shrinkOffset / flexibleHeight),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: UserAccountCard(
                      image: ImagePath.wallet,
                      title: TextManager.walletBalance,
                      balance: TextManager.balance,
                    ),
                  ),
                  const SizedBox(
                    width: SizeManager.s20,
                  ),
                  Flexible(
                    flex: 1,
                    child: UserAccountCard(
                      image: ImagePath.reward,
                      title: TextManager.rewardBalance,
                      balance: TextManager.balance,
                    ),
                  )
                ],
              ),
            ),
          )
      ]),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => flexibleHeight;

  @override
  double get minExtent => kToolbarHeight + SizeManager.s40;

  @override
  bool shouldRebuild(SliverAppBarDelegate oldDelegate) {
    return true;
  }
}
