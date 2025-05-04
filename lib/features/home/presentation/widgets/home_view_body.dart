import 'package:azkar_app/core/assets/assets.dart';

import 'package:azkar_app/core/helper/constants.dart';
import 'package:azkar_app/core/utils/app_navigation.dart';

import 'package:azkar_app/features/home/data/models/azkar_card_model/azkar_card_model.dart';
import 'package:azkar_app/features/home/presentation/pages/azkar_view.dart';
import 'package:azkar_app/features/home/presentation/widgets/custom_card_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<AzkarCardModel> azkar = [
    AzkarCardModel(azkarName: "أذكار الصباح", azkarIcon: Assets.mediaIconsSun),
    AzkarCardModel(
      azkarName: "أذكار المساء",
      azkarIcon: Assets.mediaIconsMoonNight,
    ),
    AzkarCardModel(
      azkarName: "أذكار الوضوء",
      azkarIcon: Assets.mediaIconsAblution,
    ),
    AzkarCardModel(
      azkarName: "أذكار الصلاة",
      azkarIcon: Assets.mediaIconsPraying,
    ),
    AzkarCardModel(
      azkarName: "أذكار بعد الصلاة",
      azkarIcon: Assets.mediaIconsAfterPraying,
    ),
    AzkarCardModel(
      azkarName: "أذكار عند سماع الأذان",
      azkarIcon: Assets.mediaIconsPraying,
    ),
    AzkarCardModel(
      azkarName: "أذكار المسجد",
      azkarIcon: Assets.mediaIconsMosque,
    ),
    AzkarCardModel(
      azkarName: "أذكار قبل النوم",
      azkarIcon: Assets.mediaIconsBeforeSleeping,
    ),
    AzkarCardModel(
      azkarName: "أذكار الاستيقاظ من النوم",
      azkarIcon: Assets.mediaIconsAfterSleeping,
    ),

    AzkarCardModel(azkarName: "أذكار المنزل", azkarIcon: Assets.mediaIconsHome),

    AzkarCardModel(azkarName: "أذكار الخلاء", azkarIcon: Assets.mediaIconsBath),
    AzkarCardModel(
      azkarName: "أذكار الطعام والشراب",
      azkarIcon: Assets.mediaIconsFoodAndDrink,
    ),
    AzkarCardModel(
      azkarName: "أذكار السفر",
      azkarIcon: Assets.mediaIconsTraveling,
    ),
    AzkarCardModel(
      azkarName: "أذكار أخرى",
      azkarIcon: Assets.mediaIconsTasbeeh,
    ),
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
          return GestureDetector(
            onTap: () {
              AppNavigation.pushWithSlidingAnimation(
                context: context,
                view: const AzkarView(),
              );
            },
            child: CustomCardItem(azkarModel: azkar[index]),
          );
        },
      ),
    );
  }
}
