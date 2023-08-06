import 'package:birthday_app/data/models/entertainment_item/entertainment_item_model.dart';
import 'package:birthday_app/domain/use_cases/entertainment/get_all_entertainment_items_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entertainment_event.dart';
part 'entertainment_state.dart';
part 'entertainment_bloc.freezed.dart';

class EntertainmentBloc extends Bloc<EntertainmentEvent, EntertainmentState> {
  EntertainmentBloc({
    required this.getAllEntertainmentItemsUseCase,
  }) : super(const EntertainmentState.initial()) {
    on<GetAllEntertainmentItemsEvent>(_onGetAllMenuItems);
  }

  final GetAllEntertainmentItemsUseCase getAllEntertainmentItemsUseCase;

  _onGetAllMenuItems(GetAllEntertainmentItemsEvent event,
      Emitter<EntertainmentState> emit) async {
    emit(const EntertainmentState.loading());
    final response = await getAllEntertainmentItemsUseCase();

    emit(EntertainmentState.loaded(response));
  }
}
