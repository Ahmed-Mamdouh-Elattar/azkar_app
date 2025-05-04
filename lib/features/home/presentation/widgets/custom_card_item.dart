import 'package:azkar_app/core/config/app_color.dart';

import 'package:azkar_app/features/home/data/models/azkar_card_model/azkar_card_model.dart';

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({required this.azkarModel, super.key});
  final AzkarCardModel azkarModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        color: const Color(0xFF3E4E40),
        elevation: 4,
        shadowColor: AppColor.lightModeButtonColor,

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
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: AppColor.darkModeTextColor,
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
