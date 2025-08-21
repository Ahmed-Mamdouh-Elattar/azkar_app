import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/features/notification/presentation/managers/cubit/notification_cubit.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

class NotificationSwitchButton extends StatefulWidget {
  const NotificationSwitchButton({super.key});

  @override
  State<NotificationSwitchButton> createState() =>
      _NotificationSwitchButtonState();
}

class _NotificationSwitchButtonState extends State<NotificationSwitchButton>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      context.read<NotificationCubit>().checkPermission();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotificationCubit, NotificationState>(
      listener: (context, state) {
        if (state is PermantlyDenied) {
          showNotificationPermissionDialog(context);
        }
      },
      builder: (context, state) {
        bool value = state is On ? true : false;

        return Switch(
          value: value,
          activeThumbColor: AppColor.darkModeButtonColor,
          trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
          inactiveTrackColor: Colors.grey,
          inactiveThumbColor: Colors.white,

          onChanged: (value) async {
            BlocProvider.of<NotificationCubit>(
              context,
            ).requestNotificationPermission(value: !value);
          },
        );
      },
    );
  }

  Future<void> showNotificationPermissionDialog(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false, // لازم يضغط زرار
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Text("تفعيل الإشعارات"),
          content: const Text(
            "لقد قمت برفض الإشعارات من قبل.\n"
            "لتمكينها، يجب أن تذهب إلى الإعدادات وتفتحها يدويًا.",
          ),
          actions: [
            TextButton(
              child: const Text("إلغاء"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("فتح الإعدادات"),
              onPressed: () async {
                Navigator.of(context).pop(); // قفل الدايلوج
                await openAppSettings(); // يفتح صفحة الإعدادات
              },
            ),
          ],
        );
      },
    );
  }
}
