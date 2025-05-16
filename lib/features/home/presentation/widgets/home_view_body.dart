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
      azkarName: "أذكار قبل النوم",
      azkarIcon: Assets.mediaIconsBeforeSleeping,
    ),
    AzkarCardModel(
      azkarName: "أذكار الاستيقاظ من النوم",
      azkarIcon: Assets.mediaIconsAfterSleeping,
    ),
    AzkarCardModel(
      azkarName: "دعاء الدخول والخروج من المسجد",
      azkarIcon: Assets.mediaIconsMosque,
    ),
    AzkarCardModel(
      azkarName: "أذكار الآذان",
      azkarIcon: Assets.mediaIconsPraying,
    ),
    AzkarCardModel(
      azkarName: "أذكار الوضوء",
      azkarIcon: Assets.mediaIconsAblution,
    ),
    AzkarCardModel(
      azkarName: "الأذكار بعد السلام من الصلاة",
      azkarIcon: Assets.mediaIconsAfterPraying,
    ),

    AzkarCardModel(
      azkarName: "الذكر عند دخول المنزل",
      azkarIcon: Assets.mediaIconsHome,
    ),
    AzkarCardModel(
      azkarName: "الذكر عند الخروج من المنزل",
      azkarIcon: Assets.mediaIconsOpenDoor,
    ),
    AzkarCardModel(
      azkarName: "أذكار الدخول والخروج من الخلاء",
      azkarIcon: Assets.mediaIconsBath,
    ),

    AzkarCardModel(
      azkarName: "الذكر قبل الطعام و الشراب",
      azkarIcon: Assets.mediaIconsFoodAndDrink,
    ),
    AzkarCardModel(
      azkarName: "الذكر بعد الطعام والشراب",
      azkarIcon: Assets.mediaIconsAfterEating,
    ),

    AzkarCardModel(
      azkarName: "دعاء السفر",
      azkarIcon: Assets.mediaIconsTraveling,
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
                view: AzkarView(azkarCategory: azkar[index].azkarName),
              );
            },
            child: CustomCardItem(azkarModel: azkar[index]),
          );
        },
      ),
    );
  }
}
