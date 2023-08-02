import 'package:birthday_app/core/utils/images.dart';
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
  }

  final GetAllGuestsUseCase getAllGuestsUseCase;
  final AddGuestUseCase addGuestUseCase;

  _onGetAllGuests(GetAllGuestsEvent event, Emitter<GuestsState> emit) async {
    emit(const GuestsState.loading());
    await Future.delayed(const Duration(seconds: 2));

    final List<GuestModel> guests = [
      GuestModel(
        avatar: AppImages.avatar,
        name: 'Иван',
        surname: 'Иванов',
        birthDate: DateTime.now(),
        phoneNumber: '+7 999 999 99 99',
        profession: 'Сварщик',
      ),
      GuestModel(
        avatar: AppImages.avatar,
        name: 'Иван',
        surname: 'Иванов',
        birthDate: DateTime.now(),
        phoneNumber: '+7 999 999 99 99',
        profession: 'Сварщик',
      ),
      GuestModel(
        avatar: AppImages.avatar,
        name: 'Иван',
        surname: 'Иванов',
        birthDate: DateTime.now(),
        phoneNumber: '+7 999 999 99 99',
        profession: 'Сварщик',
      ),
    ];

    emit(GuestsState.loaded(guests));
  }
}
