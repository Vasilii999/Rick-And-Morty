// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_characters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListCharactersState {

 EventState get eventState; int get page; List<Character> get character; String? get message;
/// Create a copy of ListCharactersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListCharactersStateCopyWith<ListCharactersState> get copyWith => _$ListCharactersStateCopyWithImpl<ListCharactersState>(this as ListCharactersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListCharactersState&&(identical(other.eventState, eventState) || other.eventState == eventState)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.character, character)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,eventState,page,const DeepCollectionEquality().hash(character),message);

@override
String toString() {
  return 'ListCharactersState(eventState: $eventState, page: $page, character: $character, message: $message)';
}


}

/// @nodoc
abstract mixin class $ListCharactersStateCopyWith<$Res>  {
  factory $ListCharactersStateCopyWith(ListCharactersState value, $Res Function(ListCharactersState) _then) = _$ListCharactersStateCopyWithImpl;
@useResult
$Res call({
 EventState eventState, int page, List<Character> character, String? message
});




}
/// @nodoc
class _$ListCharactersStateCopyWithImpl<$Res>
    implements $ListCharactersStateCopyWith<$Res> {
  _$ListCharactersStateCopyWithImpl(this._self, this._then);

  final ListCharactersState _self;
  final $Res Function(ListCharactersState) _then;

/// Create a copy of ListCharactersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventState = null,Object? page = null,Object? character = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
eventState: null == eventState ? _self.eventState : eventState // ignore: cast_nullable_to_non_nullable
as EventState,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as List<Character>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListCharactersState].
extension ListCharactersStatePatterns on ListCharactersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListCharactersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListCharactersState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListCharactersState value)  $default,){
final _that = this;
switch (_that) {
case _ListCharactersState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListCharactersState value)?  $default,){
final _that = this;
switch (_that) {
case _ListCharactersState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EventState eventState,  int page,  List<Character> character,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListCharactersState() when $default != null:
return $default(_that.eventState,_that.page,_that.character,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EventState eventState,  int page,  List<Character> character,  String? message)  $default,) {final _that = this;
switch (_that) {
case _ListCharactersState():
return $default(_that.eventState,_that.page,_that.character,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EventState eventState,  int page,  List<Character> character,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _ListCharactersState() when $default != null:
return $default(_that.eventState,_that.page,_that.character,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ListCharactersState implements ListCharactersState {
  const _ListCharactersState({this.eventState = EventState.initial, this.page = 1, final  List<Character> character = const [], this.message}): _character = character;
  

@override@JsonKey() final  EventState eventState;
@override@JsonKey() final  int page;
 final  List<Character> _character;
@override@JsonKey() List<Character> get character {
  if (_character is EqualUnmodifiableListView) return _character;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_character);
}

@override final  String? message;

/// Create a copy of ListCharactersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListCharactersStateCopyWith<_ListCharactersState> get copyWith => __$ListCharactersStateCopyWithImpl<_ListCharactersState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListCharactersState&&(identical(other.eventState, eventState) || other.eventState == eventState)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._character, _character)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,eventState,page,const DeepCollectionEquality().hash(_character),message);

@override
String toString() {
  return 'ListCharactersState(eventState: $eventState, page: $page, character: $character, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ListCharactersStateCopyWith<$Res> implements $ListCharactersStateCopyWith<$Res> {
  factory _$ListCharactersStateCopyWith(_ListCharactersState value, $Res Function(_ListCharactersState) _then) = __$ListCharactersStateCopyWithImpl;
@override @useResult
$Res call({
 EventState eventState, int page, List<Character> character, String? message
});




}
/// @nodoc
class __$ListCharactersStateCopyWithImpl<$Res>
    implements _$ListCharactersStateCopyWith<$Res> {
  __$ListCharactersStateCopyWithImpl(this._self, this._then);

  final _ListCharactersState _self;
  final $Res Function(_ListCharactersState) _then;

/// Create a copy of ListCharactersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventState = null,Object? page = null,Object? character = null,Object? message = freezed,}) {
  return _then(_ListCharactersState(
eventState: null == eventState ? _self.eventState : eventState // ignore: cast_nullable_to_non_nullable
as EventState,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,character: null == character ? _self._character : character // ignore: cast_nullable_to_non_nullable
as List<Character>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
