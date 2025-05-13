// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
