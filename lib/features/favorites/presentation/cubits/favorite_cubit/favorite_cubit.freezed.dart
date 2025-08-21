// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteState()';
}


}

/// @nodoc
class $FavoriteStateCopyWith<$Res>  {
$FavoriteStateCopyWith(FavoriteState _, $Res Function(FavoriteState) __);
}


/// Adds pattern-matching-related methods to [FavoriteState].
extension FavoriteStatePatterns on FavoriteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Failure value)?  failure,TResult Function( Success value)?  success,TResult Function( Empty value)?  empty,TResult Function( Toggle value)?  toggle,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Failure() when failure != null:
return failure(_that);case Success() when success != null:
return success(_that);case Empty() when empty != null:
return empty(_that);case Toggle() when toggle != null:
return toggle(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Failure value)  failure,required TResult Function( Success value)  success,required TResult Function( Empty value)  empty,required TResult Function( Toggle value)  toggle,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Failure():
return failure(_that);case Success():
return success(_that);case Empty():
return empty(_that);case Toggle():
return toggle(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Failure value)?  failure,TResult? Function( Success value)?  success,TResult? Function( Empty value)?  empty,TResult? Function( Toggle value)?  toggle,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Failure() when failure != null:
return failure(_that);case Success() when success != null:
return success(_that);case Empty() when empty != null:
return empty(_that);case Toggle() when toggle != null:
return toggle(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  failure,TResult Function( List<ZekerItem> zekerFavorites,  String? updateStateKey)?  success,TResult Function()?  empty,TResult Function( ZekerItem newzekerItem)?  toggle,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Failure() when failure != null:
return failure(_that.message);case Success() when success != null:
return success(_that.zekerFavorites,_that.updateStateKey);case Empty() when empty != null:
return empty();case Toggle() when toggle != null:
return toggle(_that.newzekerItem);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  failure,required TResult Function( List<ZekerItem> zekerFavorites,  String? updateStateKey)  success,required TResult Function()  empty,required TResult Function( ZekerItem newzekerItem)  toggle,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Failure():
return failure(_that.message);case Success():
return success(_that.zekerFavorites,_that.updateStateKey);case Empty():
return empty();case Toggle():
return toggle(_that.newzekerItem);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  failure,TResult? Function( List<ZekerItem> zekerFavorites,  String? updateStateKey)?  success,TResult? Function()?  empty,TResult? Function( ZekerItem newzekerItem)?  toggle,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Failure() when failure != null:
return failure(_that.message);case Success() when success != null:
return success(_that.zekerFavorites,_that.updateStateKey);case Empty() when empty != null:
return empty();case Toggle() when toggle != null:
return toggle(_that.newzekerItem);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements FavoriteState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteState.initial()';
}


}




/// @nodoc


class Loading implements FavoriteState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteState.loading()';
}


}




/// @nodoc


class Failure implements FavoriteState {
  const Failure({required this.message});
  

 final  String message;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FavoriteState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $FavoriteStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Failure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Success implements FavoriteState {
  const Success({required final  List<ZekerItem> zekerFavorites, this.updateStateKey}): _zekerFavorites = zekerFavorites;
  

 final  List<ZekerItem> _zekerFavorites;
 List<ZekerItem> get zekerFavorites {
  if (_zekerFavorites is EqualUnmodifiableListView) return _zekerFavorites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_zekerFavorites);
}

 final  String? updateStateKey;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&const DeepCollectionEquality().equals(other._zekerFavorites, _zekerFavorites)&&(identical(other.updateStateKey, updateStateKey) || other.updateStateKey == updateStateKey));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_zekerFavorites),updateStateKey);

@override
String toString() {
  return 'FavoriteState.success(zekerFavorites: $zekerFavorites, updateStateKey: $updateStateKey)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $FavoriteStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 List<ZekerItem> zekerFavorites, String? updateStateKey
});




}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? zekerFavorites = null,Object? updateStateKey = freezed,}) {
  return _then(Success(
zekerFavorites: null == zekerFavorites ? _self._zekerFavorites : zekerFavorites // ignore: cast_nullable_to_non_nullable
as List<ZekerItem>,updateStateKey: freezed == updateStateKey ? _self.updateStateKey : updateStateKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class Empty implements FavoriteState {
  const Empty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Empty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteState.empty()';
}


}




/// @nodoc


class Toggle implements FavoriteState {
  const Toggle({required this.newzekerItem});
  

 final  ZekerItem newzekerItem;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleCopyWith<Toggle> get copyWith => _$ToggleCopyWithImpl<Toggle>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Toggle&&(identical(other.newzekerItem, newzekerItem) || other.newzekerItem == newzekerItem));
}


@override
int get hashCode => Object.hash(runtimeType,newzekerItem);

@override
String toString() {
  return 'FavoriteState.toggle(newzekerItem: $newzekerItem)';
}


}

/// @nodoc
abstract mixin class $ToggleCopyWith<$Res> implements $FavoriteStateCopyWith<$Res> {
  factory $ToggleCopyWith(Toggle value, $Res Function(Toggle) _then) = _$ToggleCopyWithImpl;
@useResult
$Res call({
 ZekerItem newzekerItem
});




}
/// @nodoc
class _$ToggleCopyWithImpl<$Res>
    implements $ToggleCopyWith<$Res> {
  _$ToggleCopyWithImpl(this._self, this._then);

  final Toggle _self;
  final $Res Function(Toggle) _then;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newzekerItem = null,}) {
  return _then(Toggle(
newzekerItem: null == newzekerItem ? _self.newzekerItem : newzekerItem // ignore: cast_nullable_to_non_nullable
as ZekerItem,
  ));
}


}

// dart format on
