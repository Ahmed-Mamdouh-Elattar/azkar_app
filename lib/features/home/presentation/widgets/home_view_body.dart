import 'package:azkar_app/core/assets/assets.dart';

import 'package:azkar_app/core/helper/constants.dart';

import 'package:azkar_app/features/home/data/azkar_model.dart';
import 'package:azkar_app/features/home/presentation/widgets/custom_card_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<AzkarModel> azkar = [
    AzkarModel(azkarName: "أذكار الصباح", azkarIcon: Assets.mediaIconsSun),
    AzkarModel(
      azkarName: "أذكار المساء",
      azkarIcon: Assets.mediaIconsMoonNight,
    ),
    AzkarModel(azkarName: "أذكار الوضوء", azkarIcon: Assets.mediaIconsAblution),
    AzkarModel(azkarName: "أذكار الصلاة", azkarIcon: Assets.mediaIconsPraying),
    AzkarModel(
      azkarName: "أذكار بعد الصلاة",
      azkarIcon: Assets.mediaIconsAfterPraying,
    ),
    AzkarModel(
      azkarName: "أذكار عند سماع الأذان",
      azkarIcon: Assets.mediaIconsPraying,
    ),
    AzkarModel(azkarName: "أذكار المسجد", azkarIcon: Assets.mediaIconsMosque),
    AzkarModel(
      azkarName: "أذكار قبل النوم",
      azkarIcon: Assets.mediaIconsBeforeSleeping,
    ),
    AzkarModel(
      azkarName: "أذكار الاستيقاظ من النوم",
      azkarIcon: Assets.mediaIconsAfterSleeping,
    ),

    AzkarModel(azkarName: "أذكار المنزل", azkarIcon: Assets.mediaIconsHome),

    AzkarModel(azkarName: "أذكار الخلاء", azkarIcon: Assets.mediaIconsBath),
    AzkarModel(
      azkarName: "أذكار الطعام والشراب",
      azkarIcon: Assets.mediaIconsFoodAndDrink,
    ),
    AzkarModel(azkarName: "أذكار السفر", azkarIcon: Assets.mediaIconsTraveling),
    AzkarModel(azkarName: "أذكار أخرى", azkarIcon: Assets.mediaIconsTasbeeh),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kViewPadding,
        vertical: 10,
      ),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: azkar.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return CustomCardItem(azkarModel: azkar[index]);
        },
      ),
    );
  }
}
