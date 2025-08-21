import 'dart:io';

import 'package:azkar_app/core/helper/constants.dart';
import 'package:azkar_app/core/services/shared_preferences_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';

part 'notification_state.dart';
part 'notification_cubit.freezed.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(const NotificationState.off());
  Future<void> requestNotificationPermission({bool value = false}) async {
    if (!value) {
      if (Platform.isAndroid) {
        // Android 13+ محتاج POST_NOTIFICATIONS
        var status = await Permission.notification.status;
        if (!status.isGranted) {
          status = await Permission.notification.request();
        }

        if (status.isGranted) {
          emit(const NotificationState.on());
          SharedPreferencesService.setBool(key: kNotification, value: true);
          print("✅ Android notification permission granted");
          emit(const NotificationState.on());
        } else if (status.isPermanentlyDenied) {
          print("⚠️ Permission permanently denied. Opening settings...");

          emit(const NotificationState.permantlyDenied());
        } else {
          emit(const NotificationState.off());
          SharedPreferencesService.setBool(key: kNotification, value: false);
          print("❌ Android notification permission denied");
        }
      } else if (Platform.isIOS) {
        // iOS محتاج explicit request
        var status = await Permission.notification.status;
        if (!status.isGranted) {
          status = await Permission.notification.request();
        }

        if (status.isGranted) {
          SharedPreferencesService.setBool(key: kNotification, value: true);
          print("✅ iOS notification permission granted");
          emit(const NotificationState.on());
        } else if (status.isPermanentlyDenied) {
          print("⚠️ Permission permanently denied. Opening settings...");

          emit(const NotificationState.permantlyDenied());
        } else {
          emit(const NotificationState.off());
          print("❌ iOS notification permission denied");
        }
      } else {
        print("⚠️ Unsupported platform");
      }
    } else {
      emit(const NotificationState.off());
      SharedPreferencesService.setBool(key: kNotification, value: false);
    }
  }

  Future<void> checkPermission() async {
    var status = await Permission.notification.status;
    if (status.isGranted) {
      SharedPreferencesService.setBool(key: kNotification, value: true);
      emit(const NotificationState.on());
    } else {
      SharedPreferencesService.setBool(key: kNotification, value: false);
      emit(const NotificationState.off());
    }
  }
}
