import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:birthday_app/domain/use_cases/guests/add_guest_use_case.dart';
import 'package:birthday_app/domain/use_cases/guests/delete_guest_use_case.dart';
import 'package:birthday_app/domain/use_cases/guests/get_all_guests_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guests_event.dart';
part 'guests_state.dart';
part 'guests_bloc.freezed.dart';

class GuestsBloc extends Bloc<GuestsEvent, GuestsState> {
  GuestsBloc({
    required this.getAllGuestsUseCase,
    required this.addGuestUseCase,
    required this.deleteGuestUseCase,
  }) : super(const GuestsState.initial()) {
    on<GetAllGuestsEvent>(_onGetAllGuests);
    on<AddGuestEvent>(_onAddGuest);
    on<DeleteGuestEvent>(_onDeleteGuest);
  }

  final GetAllGuestsUseCase getAllGuestsUseCase;
  final AddGuestUseCase addGuestUseCase;
  final DeleteGuestUseCase deleteGuestUseCase;

  _onGetAllGuests(GetAllGuestsEvent event, Emitter<GuestsState> emit) async {
    emit(const GuestsState.loading());
    final response = await getAllGuestsUseCase();

    _sorting(response, event.sortType);

    final sortType = event.sortType;

    emit(GuestsState.loaded(response, sortType));
  }

  _onAddGuest(AddGuestEvent event, Emitter<GuestsState> emit) async {
    await addGuestUseCase(event.guestModel);
    final response = await getAllGuestsUseCase();
    final currentState = state.maybeMap(
        loaded: (loadedState) {
          _sorting(response, loadedState.currentSortType);
          return loadedState.copyWith(guests: response);
        },
        orElse: () => state);
    emit(currentState);
  }

  _onDeleteGuest(DeleteGuestEvent event, Emitter<GuestsState> emit) async {
    await deleteGuestUseCase(event.id);
    final response = await getAllGuestsUseCase();
    final currentState = state.maybeMap(
        loaded: (loadedState) {
          _sorting(response, loadedState.currentSortType);
          return loadedState.copyWith(guests: response);
        },
        orElse: () => state);
    emit(currentState);
  }

  void _sorting(List<GuestModel> guests, String sortType) {
    if (sortType == AppStrings.sortAddDate) {
      guests.sort((a, b) {
        return a.additionDate.compareTo(b.additionDate);
      });
    }
    if (sortType == AppStrings.sortName) {
      guests.sort((a, b) {
        return a.name.toLowerCase().compareTo(b.name.toLowerCase());
      });
    }
    if (sortType == AppStrings.sortSurname) {
      guests.sort((a, b) {
        return a.surname.toLowerCase().compareTo(b.surname.toLowerCase());
      });
    }
    if (sortType == AppStrings.sortAge) {
      guests.sort((b, a) {
        return a.birthDate.compareTo(b.birthDate);
      });
    }
  }
}
