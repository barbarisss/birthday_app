part of 'wishes_bloc.dart';

@freezed
class WishesEvent with _$WishesEvent {
  const factory WishesEvent.getAllWishes() = GetAllWishesEvent;
  const factory WishesEvent.addWish(WishModel wishModel) = AddWishEvent;
  const factory WishesEvent.selectWish(WishModel wishModel) = SelectWishEvent;
  const factory WishesEvent.deleteWish(String id) = DeleteWishEvent;
}
