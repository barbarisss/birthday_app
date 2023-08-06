part of 'wishes_bloc.dart';

@freezed
class WishesState with _$WishesState {
  const factory WishesState.initial() = _InitialWishesState;
  const factory WishesState.loading() = _LoadingWishesState;
  const factory WishesState.loaded(List<WishModel> wishes) = _LoadedWishesState;
}
