import 'package:azkar_app/core/assets/assets.dart';
import 'package:azkar_app/features/notification/presentation/widgets/notification_switch_button.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class NotificationSwitchingButton extends StatelessWidget {
  const NotificationSwitchingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const NotificationSwitchButton(),
        const SizedBox(width: 10),
        SvgPicture.asset(Assets.mediaIconsNotification, height: 36, width: 36),
      ],
    );
  }
}
