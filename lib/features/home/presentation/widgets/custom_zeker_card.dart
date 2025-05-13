import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:azkar_app/features/favorites/presentation/widgets/favorite_icon_button_builder.dart';
import 'package:azkar_app/features/home/presentation/widgets/counter_text.dart';
import 'package:flutter/material.dart';

class CustomZekerCard extends StatelessWidget {
  const CustomZekerCard({required this.zekerItemModel, super.key});
  final ZekerItem zekerItemModel;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = context.isDarkMode;
    return Container(
      decoration: BoxDecoration(
        color: isDarkMode ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color:
              isDarkMode
                  ? AppColor.darkModeButtonColor
                  : AppColor.lightModeButtonColor,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(180),
            blurRadius: 8,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            textAlign: TextAlign.center,
            style: AppTextStyle.styleMedium20().copyWith(
              fontFamily: "Lateef",
              color: isDarkMode ? AppColor.darkModeTextColor : Colors.black,
            ),
            zekerItemModel.zekr,
          ),
          Divider(
            color:
                isDarkMode
                    ? AppColor.darkModeButtonColor
                    : AppColor.lightModeButtonColor,
            height: 25,
          ),
          FavoriteAndShareButton(zekerItemModel: zekerItemModel),
        ],
      ),
    );
  }
}

class FavoriteAndShareButton extends StatelessWidget {
  const FavoriteAndShareButton({required this.zekerItemModel, super.key});
  final ZekerItem zekerItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FavoriteIconButtonBuilder(zekerItem: zekerItemModel),
        const SizedBox(width: 8),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share_outlined, size: 34),
        ),
        const Spacer(),
        const CounterText(),
      ],
    );
  }
}
