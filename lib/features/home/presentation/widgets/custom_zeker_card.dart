import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/config/app_text_style.dart';
import 'package:azkar_app/core/helper/is_dark_mode.dart';
import 'package:azkar_app/features/home/presentation/managers/azkar_cubit/azkar_cubit.dart';
import 'package:azkar_app/features/home/presentation/widgets/counter_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomZekerCardBuilder extends StatelessWidget {
  const CustomZekerCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AzkarCubit, AzkarState>(
      buildWhen: (previous, current) {
        if (current is AzkarSuccess) {
          return true;
        } else {
          return false;
        }
      },
      builder: (context, state) {
        bool isAzkarSuccess = state is AzkarSuccess;
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder:
              (child, animation) =>
                  FadeTransition(opacity: animation, child: child),
          child: CustomZekerCard(
            state: isAzkarSuccess ? state : null,
            key: isAzkarSuccess ? ValueKey(state.index) : null,
          ),
        );
      },
    );
  }
}

class CustomZekerCard extends StatelessWidget {
  const CustomZekerCard({super.key, this.state});
  final AzkarSuccess? state;
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
            state?.zeker?.zekr ?? "",
          ),
          Divider(
            color:
                isDarkMode
                    ? AppColor.darkModeButtonColor
                    : AppColor.lightModeButtonColor,
            height: 25,
          ),
          const FavoriteAndShareButton(),
        ],
      ),
    );
  }
}

class FavoriteAndShareButton extends StatelessWidget {
  const FavoriteAndShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border, size: 34),
        ),
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
