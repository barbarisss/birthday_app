import 'package:birthday_app/data/models/menu_item/menu_item_model.dart';
import 'package:birthday_app/domain/use_cases/menu/get_all_menu_items_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_event.dart';
part 'menu_state.dart';
part 'menu_bloc.freezed.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc({
    required this.getAllMenuItemsUseCase,
  }) : super(const MenuState.initial()) {
    on<GetAllMenuItemsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final GetAllMenuItemsUseCase getAllMenuItemsUseCase;

  _onGetAllMenuItems(
      GetAllMenuItemsEvent event, Emitter<MenuState> emit) async {
    emit(const MenuState.loading());
    final response = await getAllMenuItemsUseCase();

    emit(MenuState.loaded(response));
  }
}
