import 'package:azkar_app/core/helper/init_notifications.dart';
import 'package:azkar_app/core/helper/pick_random_ziker.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:workmanager/workmanager.dart';

Future<void> intializeWorkManager() async {
  await Workmanager().initialize(callbackDispatcher);
  await Workmanager().registerPeriodicTask(
    "azkarNotification",
    "showAzkarNotification",
    frequency: const Duration(minutes: 15),
    initialDelay: const Duration(seconds: 60),
  );
}

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    initNotifications();

    const androidDetails = AndroidNotificationDetails(
      'azkar_channel',
      'Azkar Notifications',
      importance: Importance.high,
      priority: Priority.high,
      icon: '@drawable/bell',
      largeIcon: DrawableResourceAndroidBitmap('@drawable/large_logo'),
    );

    const iosDetails = DarwinNotificationDetails();

    const details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );
    var ziker = pickRandomZiker();
    await flutterLocalNotificationsPlugin.show(
      1,
      'لا تنسَ ذكر الله',
      ziker,
      details,
    );
    return Future.value(true);
  });
}
