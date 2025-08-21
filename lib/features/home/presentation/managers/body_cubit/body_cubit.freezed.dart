// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BodyState {

 int get index;
/// Create a copy of BodyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BodyStateCopyWith<BodyState> get copyWith => _$BodyStateCopyWithImpl<BodyState>(this as BodyState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BodyState&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'BodyState(index: $index)';
}


}

/// @nodoc
abstract mixin class $BodyStateCopyWith<$Res>  {
  factory $BodyStateCopyWith(BodyState value, $Res Function(BodyState) _then) = _$BodyStateCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$BodyStateCopyWithImpl<$Res>
    implements $BodyStateCopyWith<$Res> {
  _$BodyStateCopyWithImpl(this._self, this._then);

  final BodyState _self;
  final $Res Function(BodyState) _then;

/// Create a copy of BodyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BodyState].
extension BodyStatePatterns on BodyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Home value)?  home,TResult Function( Favorites value)?  favorites,TResult Function( Chart value)?  chart,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Home() when home != null:
return home(_that);case Favorites() when favorites != null:
return favorites(_that);case Chart() when chart != null:
return chart(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Home value)  home,required TResult Function( Favorites value)  favorites,required TResult Function( Chart value)  chart,}){
final _that = this;
switch (_that) {
case Home():
return home(_that);case Favorites():
return favorites(_that);case Chart():
return chart(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Home value)?  home,TResult? Function( Favorites value)?  favorites,TResult? Function( Chart value)?  chart,}){
final _that = this;
switch (_that) {
case Home() when home != null:
return home(_that);case Favorites() when favorites != null:
return favorites(_that);case Chart() when chart != null:
return chart(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int index)?  home,TResult Function( int index)?  favorites,TResult Function( int index)?  chart,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Home() when home != null:
return home(_that.index);case Favorites() when favorites != null:
return favorites(_that.index);case Chart() when chart != null:
return chart(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int index)  home,required TResult Function( int index)  favorites,required TResult Function( int index)  chart,}) {final _that = this;
switch (_that) {
case Home():
return home(_that.index);case Favorites():
return favorites(_that.index);case Chart():
return chart(_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int index)?  home,TResult? Function( int index)?  favorites,TResult? Function( int index)?  chart,}) {final _that = this;
switch (_that) {
case Home() when home != null:
return home(_that.index);case Favorites() when favorites != null:
return favorites(_that.index);case Chart() when chart != null:
return chart(_that.index);case _:
  return null;

}
}

}

/// @nodoc


class Home extends BodyState {
  const Home({required final  int index}): super._(index: index);
  



/// Create a copy of BodyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeCopyWith<Home> get copyWith => _$HomeCopyWithImpl<Home>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Home&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'BodyState.home(index: $index)';
}


}

/// @nodoc
abstract mixin class $HomeCopyWith<$Res> implements $BodyStateCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) _then) = _$HomeCopyWithImpl;
@override @useResult
$Res call({
 int index
});




}
/// @nodoc
class _$HomeCopyWithImpl<$Res>
    implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._self, this._then);

  final Home _self;
  final $Res Function(Home) _then;

/// Create a copy of BodyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(Home(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Favorites extends BodyState {
  const Favorites({required final  int index}): super._(index: index);
  



/// Create a copy of BodyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesCopyWith<Favorites> get copyWith => _$FavoritesCopyWithImpl<Favorites>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Favorites&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'BodyState.favorites(index: $index)';
}


}

/// @nodoc
abstract mixin class $FavoritesCopyWith<$Res> implements $BodyStateCopyWith<$Res> {
  factory $FavoritesCopyWith(Favorites value, $Res Function(Favorites) _then) = _$FavoritesCopyWithImpl;
@override @useResult
$Res call({
 int index
});




}
/// @nodoc
class _$FavoritesCopyWithImpl<$Res>
    implements $FavoritesCopyWith<$Res> {
  _$FavoritesCopyWithImpl(this._self, this._then);

  final Favorites _self;
  final $Res Function(Favorites) _then;

/// Create a copy of BodyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(Favorites(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Chart extends BodyState {
  const Chart({required final  int index}): super._(index: index);
  



/// Create a copy of BodyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChartCopyWith<Chart> get copyWith => _$ChartCopyWithImpl<Chart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Chart&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'BodyState.chart(index: $index)';
}


}

/// @nodoc
abstract mixin class $ChartCopyWith<$Res> implements $BodyStateCopyWith<$Res> {
  factory $ChartCopyWith(Chart value, $Res Function(Chart) _then) = _$ChartCopyWithImpl;
@override @useResult
$Res call({
 int index
});




}
/// @nodoc
class _$ChartCopyWithImpl<$Res>
    implements $ChartCopyWith<$Res> {
  _$ChartCopyWithImpl(this._self, this._then);

  final Chart _self;
  final $Res Function(Chart) _then;

/// Create a copy of BodyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(Chart(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
