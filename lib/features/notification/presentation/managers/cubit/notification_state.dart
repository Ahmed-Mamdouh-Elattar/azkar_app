part of 'notification_cubit.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.on() = On;
  const factory NotificationState.off() = Off;
  const factory NotificationState.permantlyDenied() = PermantlyDenied;
}
