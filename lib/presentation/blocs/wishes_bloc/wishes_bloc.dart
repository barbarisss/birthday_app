import 'package:birthday_app/data/models/wish/wish_model.dart';
import 'package:birthday_app/domain/use_cases/wishes/add_wish_use_case.dart';
import 'package:birthday_app/domain/use_cases/wishes/delete_wish_use_case.dart';
import 'package:birthday_app/domain/use_cases/wishes/get_all_wishes_use_case.dart';
import 'package:birthday_app/domain/use_cases/wishes/select_wish_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishes_event.dart';
part 'wishes_state.dart';
part 'wishes_bloc.freezed.dart';

class WishesBloc extends Bloc<WishesEvent, WishesState> {
  WishesBloc({
    required this.getAllWishesUseCase,
    required this.addWishUseCase,
    required this.selectWishUseCase,
    required this.deleteWishUseCase,
  }) : super(const WishesState.initial()) {
    on<GetAllWishesEvent>(_onGetAllWishesEvent);
    on<AddWishEvent>(_onAddWishEvent);
    on<SelectWishEvent>(_onSelectWishEvent);
    on<DeleteWishEvent>(_onDeleteWishEvent);
  }

  final GetAllWishesUseCase getAllWishesUseCase;
  final AddWishUseCase addWishUseCase;
  final SelectWishUseCase selectWishUseCase;
  final DeleteWishUseCase deleteWishUseCase;

  _onGetAllWishesEvent(
      GetAllWishesEvent event, Emitter<WishesState> emit) async {
    emit(const WishesState.loading());
    final response = await getAllWishesUseCase();
    emit(WishesState.loaded(response));
  }

  _onAddWishEvent(AddWishEvent event, Emitter<WishesState> emit) async {
    await addWishUseCase(event.wishModel);
    final response = await getAllWishesUseCase();
    emit(WishesState.loaded(response));
  }

  _onSelectWishEvent(SelectWishEvent event, Emitter<WishesState> emit) async {
    await selectWishUseCase(event.wishModel, event.index);
    final response = await getAllWishesUseCase();
    emit(WishesState.loaded(response));
  }

  _onDeleteWishEvent(DeleteWishEvent event, Emitter<WishesState> emit) async {
    await deleteWishUseCase(event.index);
    final response = await getAllWishesUseCase();
    emit(WishesState.loaded(response));
  }
}
