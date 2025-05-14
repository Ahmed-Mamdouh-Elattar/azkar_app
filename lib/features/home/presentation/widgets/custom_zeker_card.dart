import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:azkar_app/features/favorites/presentation/widgets/favorite_icon_button_builder.dart';
import 'package:azkar_app/features/home/presentation/widgets/counter_text.dart';
import 'package:azkar_app/features/share/presentation/widgets/share_button.dart';
import 'package:flutter/material.dart';

class CustomZekerCard extends StatefulWidget {
  const CustomZekerCard({required this.zekerItemModel, super.key});
  final ZekerItem zekerItemModel;

  @override
  State<CustomZekerCard> createState() => _CustomZekerCardState();
}

class _CustomZekerCardState extends State<CustomZekerCard> {
  final GlobalKey widgtScreenShot = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = context.isDarkMode;
    return RepaintBoundary(
      key: widgtScreenShot,
      child: Container(
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
              widget.zekerItemModel.zekr,
            ),
            Divider(
              color:
                  isDarkMode
                      ? AppColor.darkModeButtonColor
                      : AppColor.lightModeButtonColor,
              height: 25,
            ),
            FavoriteAndShareButton(
              zekerItemModel: widget.zekerItemModel,
              widgtScreenShot: widgtScreenShot,
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteAndShareButton extends StatelessWidget {
  const FavoriteAndShareButton({
    required this.zekerItemModel,
    required this.widgtScreenShot,
    super.key,
  });
  final ZekerItem zekerItemModel;
  final GlobalKey widgtScreenShot;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FavoriteIconButtonBuilder(zekerItem: zekerItemModel),
        const SizedBox(width: 8),
        ShareButton(
          zekerItem: zekerItemModel,
          widgetScreenShot: widgtScreenShot,
        ),
        const Spacer(),
        const CounterText(),
      ],
    );
  }
}
