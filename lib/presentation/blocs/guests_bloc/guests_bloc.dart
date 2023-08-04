import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:birthday_app/domain/use_cases/add_guest_use_case.dart';
import 'package:birthday_app/domain/use_cases/get_all_guests_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guests_event.dart';
part 'guests_state.dart';
part 'guests_bloc.freezed.dart';

class GuestsBloc extends Bloc<GuestsEvent, GuestsState> {
  GuestsBloc({
    required this.getAllGuestsUseCase,
    required this.addGuestUseCase,
  }) : super(const GuestsState.initial()) {
    on<GetAllGuestsEvent>(_onGetAllGuests);
    on<AddGuestEvent>(_onAddGuest);
  }

  final GetAllGuestsUseCase getAllGuestsUseCase;
  final AddGuestUseCase addGuestUseCase;

  _onGetAllGuests(GetAllGuestsEvent event, Emitter<GuestsState> emit) async {
    emit(const GuestsState.loading());
    final response = await getAllGuestsUseCase();

    if (event.sortType == AppStrings.sortName) {
      response.sort((a, b) {
        return a.name.toLowerCase().compareTo(b.name.toLowerCase());
      });
    }
    final sortType = event.sortType;

    emit(GuestsState.loaded(response, sortType));
  }

  _onAddGuest(AddGuestEvent event, Emitter<GuestsState> emit) async {
    await addGuestUseCase(event.guestModel);
  }
}
