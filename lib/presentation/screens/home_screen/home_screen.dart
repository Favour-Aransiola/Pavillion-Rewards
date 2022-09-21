import 'package:flutter/material.dart';
import 'package:pavillion_rewards/domain/models/transaction_model.dart';
import 'package:pavillion_rewards/presentation/resources/color_manager.dart';
import 'package:pavillion_rewards/presentation/resources/font_manager.dart';
import 'package:pavillion_rewards/presentation/resources/image_path.dart';
import 'package:pavillion_rewards/presentation/resources/text_manager.dart';
import 'package:pavillion_rewards/presentation/resources/values_manager.dart';
import 'package:pavillion_rewards/presentation/screens/home_screen/local_widgets/appbar_delegate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<TransactionModel> _transactions = [
    TransactionModel(
        name: 'SuperMart',
        date: '12/06/2022',
        time: '12:34',
        point: '+50points',
        isCredit: true),
    TransactionModel(
      name: 'SuperMart',
      date: '12/06/2022',
      time: '12:34',
      point: '-50points',
    ),
    TransactionModel(
      name: 'SuperMart',
      date: '12/06/2022',
      time: '12:34',
      point: '-50points',
    ),
    TransactionModel(
      name: 'SuperMart',
      date: '12/06/2022',
      time: '12:34',
      point: '-50points',
    ),
    TransactionModel(
      name: 'SuperMart',
      date: '12/06/2022',
      time: '12:34',
      point: '-50points',
    ),
    TransactionModel(
      name: 'SuperMart',
      date: '12/06/2022',
      time: '12:34',
      point: '-50points',
    ),
    TransactionModel(
      name: 'SuperMart',
      date: '12/06/2022',
      time: '12:34',
      point: '-50points',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomScrollView(slivers: [
        SliverPersistentHeader(
          delegate: SliverAppBarDelegate(flexibleHeight: SizeManager.s200),
          pinned: true,
        ),
        SliverList(
            delegate: SliverChildListDelegate(
          [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: SizeManager.s14,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: SizeManager.s18,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeManager.s14, vertical: SizeManager.s10),
                    width: double.infinity,
                    alignment: Alignment.center,
                    height: SizeManager.s100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(SizeManager.s10),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              ColorManager.violet,
                              ColorManager.purple
                            ])),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                              flex: 4,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    TextManager.congratulations,
                                    style: FontManager.manrope(
                                      color: ColorManager.white,
                                    ),
                                  ),
                                  FittedBox(
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: TextManager.youCompleted,
                                          style: FontManager.manrope(
                                              color: ColorManager.white,
                                              size: SizeManager.s10)),
                                      TextSpan(
                                          text: TextManager.oneFifty,
                                          style: FontManager.manrope(
                                              color: ColorManager.orange,
                                              size: SizeManager.s10)),
                                    ])),
                                  ),
                                  const SizedBox(
                                    height: SizeManager.s5,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: SizeManager.s25,
                                    width: SizeManager.s150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            SizeManager.s5),
                                        color: ColorManager.white),
                                    child: const Text(TextManager.redeem),
                                  )
                                ],
                              )),
                          const SizedBox(
                            width: SizeManager.s14,
                          ),
                          Flexible(
                              flex: 2,
                              child: Image.asset(
                                ImagePath.treasure,
                              ))
                        ]),
                  ),
                  const SizedBox(
                    height: SizeManager.s14,
                  ),
                  Container(
                    height: SizeManager.s150,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: SizeManager.s10,
                          );
                        },
                        itemBuilder: (context, index) {
                          return AspectRatio(
                            aspectRatio: 2,
                            child: Container(
                              padding: const EdgeInsets.all(SizeManager.s18),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(SizeManager.s14),
                                  image: const DecorationImage(
                                      image: AssetImage(ImagePath.cardFrame),
                                      fit: BoxFit.cover)),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                        flex: 4,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              TextManager.virtual,
                                              style: FontManager.manrope(
                                                  color: ColorManager.white),
                                            ),
                                            Text(
                                              TextManager.cardNumber,
                                              style: FontManager.manrope(
                                                  color: ColorManager.white),
                                            ),
                                            FittedBox(
                                                child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      TextManager
                                                          .expiryDateTitle,
                                                      style:
                                                          FontManager.manrope(
                                                              color:
                                                                  ColorManager
                                                                      .white,
                                                              size: SizeManager
                                                                  .s10),
                                                    ),
                                                    Text(
                                                      TextManager.expiryDate,
                                                      style:
                                                          FontManager.manrope(
                                                              color:
                                                                  ColorManager
                                                                      .white),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: SizeManager.s20,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      TextManager.cvvTitle,
                                                      style:
                                                          FontManager.manrope(
                                                              color:
                                                                  ColorManager
                                                                      .white,
                                                              size: SizeManager
                                                                  .s10),
                                                    ),
                                                    Text(
                                                      TextManager.cvv,
                                                      style:
                                                          FontManager.manrope(
                                                              color:
                                                                  ColorManager
                                                                      .white),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )),
                                            Text(
                                              TextManager.cardHolderName,
                                              style: FontManager.manrope(
                                                  color: ColorManager.white,
                                                  size: SizeManager.s18),
                                            )
                                          ],
                                        )),
                                    const Spacer(),
                                    Flexible(
                                        flex: 1,
                                        child:
                                            Image.asset(ImagePath.masterCard))
                                  ]),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: SizeManager.s20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(SizeManager.s14),
                    width: double.infinity,
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
                    child: Column(
                      children: [
                        FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                TextManager.transactionHistory,
                                style:
                                    FontManager.manrope(size: SizeManager.s18),
                              ),
                              const SizedBox(
                                width: SizeManager.s20,
                              ),
                              DropdownButton<String>(
                                items: [
                                  DropdownMenuItem(
                                      child: Text(TextManager.thisMonth,
                                          style: FontManager.manrope()))
                                ],
                                onChanged: (value) {},
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: SizeManager.s10,
                        ),
                        Table(
                          columnWidths: const {
                            0: FlexColumnWidth(3),
                            1: FlexColumnWidth(1),
                            2: FlexColumnWidth(1),
                            3: FlexColumnWidth(2)
                          },
                          children: [
                            TableRow(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: ColorManager.shadowColor))),
                                children: [
                                  Text(
                                    TextManager.name,
                                    style: FontManager.manrope(),
                                  ),
                                  Text(
                                    TextManager.date,
                                    style: FontManager.manrope(),
                                  ),
                                  Text(
                                    TextManager.time,
                                    style: FontManager.manrope(),
                                  ),
                                  Text(
                                    TextManager.points,
                                    style: FontManager.manrope(),
                                  ),
                                ]),
                            ...(_transactions.map((trxn) => TableRow(children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.all(SizeManager.s10),
                                    child: FittedBox(
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: trxn.isCredit
                                                ? ColorManager.lightgreen
                                                : ColorManager.lightred,
                                            child: Icon(
                                              Icons.wallet_giftcard_outlined,
                                              color: trxn.isCredit
                                                  ? ColorManager.darkgreen
                                                  : ColorManager.darkred,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: SizeManager.s5,
                                          ),
                                          Text(
                                            trxn.name,
                                            style: FontManager.manrope(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.all(SizeManager.s10),
                                    child: Text(
                                      trxn.date,
                                      style: FontManager.manrope(
                                        size: SizeManager.s10,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.all(SizeManager.s10),
                                    child: FittedBox(
                                      child: Text(
                                        trxn.time,
                                        style: FontManager.manrope(
                                          size: SizeManager.s10,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.all(SizeManager.s10),
                                    child: FittedBox(
                                      child: Text(
                                        trxn.point,
                                        style: FontManager.manrope(
                                            color: trxn.isCredit
                                                ? ColorManager.darkgreen
                                                : ColorManager.darkred),
                                      ),
                                    ),
                                  )
                                ]))).toList()
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ))
      ]),
    );
  }
}
