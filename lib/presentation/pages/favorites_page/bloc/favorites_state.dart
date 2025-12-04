import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/models.dart';

part 'favorites_state.freezed.dart';

@freezed
abstract class FavoritesState with _$FavoritesState{
  const FavoritesState._();

  const factory FavoritesState.initial() = FavoritesStateInitial;
  const factory FavoritesState.loading() = FavoritesStateLoading;
  const factory FavoritesState.data({required List<Character> favorites}) = FavoritesStateData;
  const factory FavoritesState.error({required  String message}) = FavoritesStateError;

}