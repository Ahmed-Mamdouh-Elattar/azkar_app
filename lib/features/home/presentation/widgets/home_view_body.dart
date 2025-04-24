import 'package:azkar_app/core/assets/assets.dart';
import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/helper/constants.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/features/home/data/azkar_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({required this.azkarModel, super.key});
  final AzkarModel azkarModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        color:
            context.isDarkMode
                ? const Color(0xFF3E4E40)
                : const Color(0xFFB0BEC5),
        elevation: 4,
        shadowColor:
            context.isDarkMode
                ? AppColor.lightModeButtonColor
                : AppColor.darkModeButtonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SvgPicture.asset(azkarModel.azkarIcon, height: 38, width: 38),
              const SizedBox(height: 8),
              Flexible(
                child: Text(
                  azkarModel.azkarName,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color:
                        context.isDarkMode
                            ? AppColor.darkModeTextColor
                            : AppColor.lightModeTextColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
