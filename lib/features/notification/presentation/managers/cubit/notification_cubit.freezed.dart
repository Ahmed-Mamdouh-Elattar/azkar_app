// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationState()';
}


}

/// @nodoc
class $NotificationStateCopyWith<$Res>  {
$NotificationStateCopyWith(NotificationState _, $Res Function(NotificationState) __);
}


/// Adds pattern-matching-related methods to [NotificationState].
extension NotificationStatePatterns on NotificationState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( On value)?  on,TResult Function( Off value)?  off,TResult Function( PermantlyDenied value)?  permantlyDenied,required TResult orElse(),}){
final _that = this;
switch (_that) {
case On() when on != null:
return on(_that);case Off() when off != null:
return off(_that);case PermantlyDenied() when permantlyDenied != null:
return permantlyDenied(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( On value)  on,required TResult Function( Off value)  off,required TResult Function( PermantlyDenied value)  permantlyDenied,}){
final _that = this;
switch (_that) {
case On():
return on(_that);case Off():
return off(_that);case PermantlyDenied():
return permantlyDenied(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( On value)?  on,TResult? Function( Off value)?  off,TResult? Function( PermantlyDenied value)?  permantlyDenied,}){
final _that = this;
switch (_that) {
case On() when on != null:
return on(_that);case Off() when off != null:
return off(_that);case PermantlyDenied() when permantlyDenied != null:
return permantlyDenied(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  on,TResult Function()?  off,TResult Function()?  permantlyDenied,required TResult orElse(),}) {final _that = this;
switch (_that) {
case On() when on != null:
return on();case Off() when off != null:
return off();case PermantlyDenied() when permantlyDenied != null:
return permantlyDenied();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  on,required TResult Function()  off,required TResult Function()  permantlyDenied,}) {final _that = this;
switch (_that) {
case On():
return on();case Off():
return off();case PermantlyDenied():
return permantlyDenied();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  on,TResult? Function()?  off,TResult? Function()?  permantlyDenied,}) {final _that = this;
switch (_that) {
case On() when on != null:
return on();case Off() when off != null:
return off();case PermantlyDenied() when permantlyDenied != null:
return permantlyDenied();case _:
  return null;

}
}

}

/// @nodoc


class On implements NotificationState {
  const On();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is On);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationState.on()';
}


}




/// @nodoc


class Off implements NotificationState {
  const Off();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Off);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationState.off()';
}


}




/// @nodoc


class PermantlyDenied implements NotificationState {
  const PermantlyDenied();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermantlyDenied);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationState.permantlyDenied()';
}


}




// dart format on
