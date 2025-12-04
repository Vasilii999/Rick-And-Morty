// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoritesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesState()';
}


}

/// @nodoc
class $FavoritesStateCopyWith<$Res>  {
$FavoritesStateCopyWith(FavoritesState _, $Res Function(FavoritesState) __);
}


/// Adds pattern-matching-related methods to [FavoritesState].
extension FavoritesStatePatterns on FavoritesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FavoritesStateInitial value)?  initial,TResult Function( FavoritesStateLoading value)?  loading,TResult Function( FavoritesStateData value)?  data,TResult Function( FavoritesStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FavoritesStateInitial() when initial != null:
return initial(_that);case FavoritesStateLoading() when loading != null:
return loading(_that);case FavoritesStateData() when data != null:
return data(_that);case FavoritesStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FavoritesStateInitial value)  initial,required TResult Function( FavoritesStateLoading value)  loading,required TResult Function( FavoritesStateData value)  data,required TResult Function( FavoritesStateError value)  error,}){
final _that = this;
switch (_that) {
case FavoritesStateInitial():
return initial(_that);case FavoritesStateLoading():
return loading(_that);case FavoritesStateData():
return data(_that);case FavoritesStateError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FavoritesStateInitial value)?  initial,TResult? Function( FavoritesStateLoading value)?  loading,TResult? Function( FavoritesStateData value)?  data,TResult? Function( FavoritesStateError value)?  error,}){
final _that = this;
switch (_that) {
case FavoritesStateInitial() when initial != null:
return initial(_that);case FavoritesStateLoading() when loading != null:
return loading(_that);case FavoritesStateData() when data != null:
return data(_that);case FavoritesStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Character> favorites)?  data,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FavoritesStateInitial() when initial != null:
return initial();case FavoritesStateLoading() when loading != null:
return loading();case FavoritesStateData() when data != null:
return data(_that.favorites);case FavoritesStateError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Character> favorites)  data,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case FavoritesStateInitial():
return initial();case FavoritesStateLoading():
return loading();case FavoritesStateData():
return data(_that.favorites);case FavoritesStateError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Character> favorites)?  data,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case FavoritesStateInitial() when initial != null:
return initial();case FavoritesStateLoading() when loading != null:
return loading();case FavoritesStateData() when data != null:
return data(_that.favorites);case FavoritesStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class FavoritesStateInitial extends FavoritesState {
  const FavoritesStateInitial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesState.initial()';
}


}




/// @nodoc


class FavoritesStateLoading extends FavoritesState {
  const FavoritesStateLoading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesState.loading()';
}


}




/// @nodoc


class FavoritesStateData extends FavoritesState {
  const FavoritesStateData({required final  List<Character> favorites}): _favorites = favorites,super._();
  

 final  List<Character> _favorites;
 List<Character> get favorites {
  if (_favorites is EqualUnmodifiableListView) return _favorites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favorites);
}


/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesStateDataCopyWith<FavoritesStateData> get copyWith => _$FavoritesStateDataCopyWithImpl<FavoritesStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesStateData&&const DeepCollectionEquality().equals(other._favorites, _favorites));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_favorites));

@override
String toString() {
  return 'FavoritesState.data(favorites: $favorites)';
}


}

/// @nodoc
abstract mixin class $FavoritesStateDataCopyWith<$Res> implements $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateDataCopyWith(FavoritesStateData value, $Res Function(FavoritesStateData) _then) = _$FavoritesStateDataCopyWithImpl;
@useResult
$Res call({
 List<Character> favorites
});




}
/// @nodoc
class _$FavoritesStateDataCopyWithImpl<$Res>
    implements $FavoritesStateDataCopyWith<$Res> {
  _$FavoritesStateDataCopyWithImpl(this._self, this._then);

  final FavoritesStateData _self;
  final $Res Function(FavoritesStateData) _then;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? favorites = null,}) {
  return _then(FavoritesStateData(
favorites: null == favorites ? _self._favorites : favorites // ignore: cast_nullable_to_non_nullable
as List<Character>,
  ));
}


}

/// @nodoc


class FavoritesStateError extends FavoritesState {
  const FavoritesStateError({required this.message}): super._();
  

 final  String message;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesStateErrorCopyWith<FavoritesStateError> get copyWith => _$FavoritesStateErrorCopyWithImpl<FavoritesStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FavoritesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $FavoritesStateErrorCopyWith<$Res> implements $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateErrorCopyWith(FavoritesStateError value, $Res Function(FavoritesStateError) _then) = _$FavoritesStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FavoritesStateErrorCopyWithImpl<$Res>
    implements $FavoritesStateErrorCopyWith<$Res> {
  _$FavoritesStateErrorCopyWithImpl(this._self, this._then);

  final FavoritesStateError _self;
  final $Res Function(FavoritesStateError) _then;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(FavoritesStateError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
