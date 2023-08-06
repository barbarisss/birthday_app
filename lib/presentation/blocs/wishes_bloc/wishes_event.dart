part of 'wishes_bloc.dart';

@freezed
class WishesEvent with _$WishesEvent {
  const factory WishesEvent.getAllWishes() = GetAllWishesEvent;
  const factory WishesEvent.addWish() = AddWishEvent;
  const factory WishesEvent.selectWish() = SelectWishEvent;
  const factory WishesEvent.deleteWish() = DeleteWishEvent;
}
