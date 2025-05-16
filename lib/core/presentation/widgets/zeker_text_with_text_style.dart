import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/core/utils/provide_data/provide_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ZekerTextWithTextStyle extends StatelessWidget {
  const ZekerTextWithTextStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      style: AppTextStyle.styleMedium20().copyWith(
        fontFamily: "Lateef",
        color: context.isDarkMode ? AppColor.darkModeTextColor : Colors.black,
      ),
      context.read<ProvideDataCubit>().zekerItemModel.zekr,
    );
  }
}
