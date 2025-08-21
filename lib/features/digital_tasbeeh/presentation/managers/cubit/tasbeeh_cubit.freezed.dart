// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasbeeh_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TasbeehState {

 int get counter; bool get isVibrationMode;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasbeehState&&(identical(other.counter, counter) || other.counter == counter)&&(identical(other.isVibrationMode, isVibrationMode) || other.isVibrationMode == isVibrationMode));
}


@override
int get hashCode => Object.hash(runtimeType,counter,isVibrationMode);

@override
String toString() {
  return 'TasbeehState(counter: $counter, isVibrationMode: $isVibrationMode)';
}


}

/// @nodoc
class $TasbeehStateCopyWith<$Res>  {
$TasbeehStateCopyWith(TasbeehState _, $Res Function(TasbeehState) __);
}


/// Adds pattern-matching-related methods to [TasbeehState].
extension TasbeehStatePatterns on TasbeehState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Increment value)?  increment,TResult Function( Reset value)?  reset,TResult Function( Finished value)?  finished,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Increment() when increment != null:
return increment(_that);case Reset() when reset != null:
return reset(_that);case Finished() when finished != null:
return finished(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Increment value)  increment,required TResult Function( Reset value)  reset,required TResult Function( Finished value)  finished,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Increment():
return increment(_that);case Reset():
return reset(_that);case Finished():
return finished(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Increment value)?  increment,TResult? Function( Reset value)?  reset,TResult? Function( Finished value)?  finished,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Increment() when increment != null:
return increment(_that);case Reset() when reset != null:
return reset(_that);case Finished() when finished != null:
return finished(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int counter,  bool isVibrationMode)?  initial,TResult Function( int counter,  bool isVibrationMode)?  increment,TResult Function( int counter,  bool isVibrationMode)?  reset,TResult Function()?  finished,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that.counter,_that.isVibrationMode);case Increment() when increment != null:
return increment(_that.counter,_that.isVibrationMode);case Reset() when reset != null:
return reset(_that.counter,_that.isVibrationMode);case Finished() when finished != null:
return finished();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int counter,  bool isVibrationMode)  initial,required TResult Function( int counter,  bool isVibrationMode)  increment,required TResult Function( int counter,  bool isVibrationMode)  reset,required TResult Function()  finished,}) {final _that = this;
switch (_that) {
case Initial():
return initial(_that.counter,_that.isVibrationMode);case Increment():
return increment(_that.counter,_that.isVibrationMode);case Reset():
return reset(_that.counter,_that.isVibrationMode);case Finished():
return finished();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int counter,  bool isVibrationMode)?  initial,TResult? Function( int counter,  bool isVibrationMode)?  increment,TResult? Function( int counter,  bool isVibrationMode)?  reset,TResult? Function()?  finished,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that.counter,_that.isVibrationMode);case Increment() when increment != null:
return increment(_that.counter,_that.isVibrationMode);case Reset() when reset != null:
return reset(_that.counter,_that.isVibrationMode);case Finished() when finished != null:
return finished();case _:
  return null;

}
}

}

/// @nodoc


class Initial extends TasbeehState {
  const Initial({required this.counter, this.isVibrationMode = false}): super._();
  

@override final  int counter;
@override@JsonKey() final  bool isVibrationMode;

/// Create a copy of TasbeehState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitialCopyWith<Initial> get copyWith => _$InitialCopyWithImpl<Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial&&(identical(other.counter, counter) || other.counter == counter)&&(identical(other.isVibrationMode, isVibrationMode) || other.isVibrationMode == isVibrationMode));
}


@override
int get hashCode => Object.hash(runtimeType,counter,isVibrationMode);

@override
String toString() {
  return 'TasbeehState.initial(counter: $counter, isVibrationMode: $isVibrationMode)';
}


}

/// @nodoc
abstract mixin class $InitialCopyWith<$Res> implements $TasbeehStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) _then) = _$InitialCopyWithImpl;
@useResult
$Res call({
 int counter, bool isVibrationMode
});




}
/// @nodoc
class _$InitialCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(this._self, this._then);

  final Initial _self;
  final $Res Function(Initial) _then;

/// Create a copy of TasbeehState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? counter = null,Object? isVibrationMode = null,}) {
  return _then(Initial(
counter: null == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as int,isVibrationMode: null == isVibrationMode ? _self.isVibrationMode : isVibrationMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Increment extends TasbeehState {
  const Increment({required this.counter, this.isVibrationMode = false}): super._();
  

@override final  int counter;
@override@JsonKey() final  bool isVibrationMode;

/// Create a copy of TasbeehState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncrementCopyWith<Increment> get copyWith => _$IncrementCopyWithImpl<Increment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Increment&&(identical(other.counter, counter) || other.counter == counter)&&(identical(other.isVibrationMode, isVibrationMode) || other.isVibrationMode == isVibrationMode));
}


@override
int get hashCode => Object.hash(runtimeType,counter,isVibrationMode);

@override
String toString() {
  return 'TasbeehState.increment(counter: $counter, isVibrationMode: $isVibrationMode)';
}


}

/// @nodoc
abstract mixin class $IncrementCopyWith<$Res> implements $TasbeehStateCopyWith<$Res> {
  factory $IncrementCopyWith(Increment value, $Res Function(Increment) _then) = _$IncrementCopyWithImpl;
@useResult
$Res call({
 int counter, bool isVibrationMode
});




}
/// @nodoc
class _$IncrementCopyWithImpl<$Res>
    implements $IncrementCopyWith<$Res> {
  _$IncrementCopyWithImpl(this._self, this._then);

  final Increment _self;
  final $Res Function(Increment) _then;

/// Create a copy of TasbeehState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? counter = null,Object? isVibrationMode = null,}) {
  return _then(Increment(
counter: null == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as int,isVibrationMode: null == isVibrationMode ? _self.isVibrationMode : isVibrationMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Reset extends TasbeehState {
  const Reset({required this.counter, this.isVibrationMode = false}): super._();
  

@override final  int counter;
@override@JsonKey() final  bool isVibrationMode;

/// Create a copy of TasbeehState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetCopyWith<Reset> get copyWith => _$ResetCopyWithImpl<Reset>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reset&&(identical(other.counter, counter) || other.counter == counter)&&(identical(other.isVibrationMode, isVibrationMode) || other.isVibrationMode == isVibrationMode));
}


@override
int get hashCode => Object.hash(runtimeType,counter,isVibrationMode);

@override
String toString() {
  return 'TasbeehState.reset(counter: $counter, isVibrationMode: $isVibrationMode)';
}


}

/// @nodoc
abstract mixin class $ResetCopyWith<$Res> implements $TasbeehStateCopyWith<$Res> {
  factory $ResetCopyWith(Reset value, $Res Function(Reset) _then) = _$ResetCopyWithImpl;
@useResult
$Res call({
 int counter, bool isVibrationMode
});




}
/// @nodoc
class _$ResetCopyWithImpl<$Res>
    implements $ResetCopyWith<$Res> {
  _$ResetCopyWithImpl(this._self, this._then);

  final Reset _self;
  final $Res Function(Reset) _then;

/// Create a copy of TasbeehState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? counter = null,Object? isVibrationMode = null,}) {
  return _then(Reset(
counter: null == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as int,isVibrationMode: null == isVibrationMode ? _self.isVibrationMode : isVibrationMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class Finished extends TasbeehState {
  const Finished(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Finished);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasbeehState.finished()';
}


}




// dart format on
