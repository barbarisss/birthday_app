import 'package:birthday_app/data/models/guest/guest_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guests_event.dart';
part 'guests_state.dart';
part 'guests_bloc.freezed.dart';

class GuestsBloc extends Bloc<GuestsEvent, GuestsState> {
  GuestsBloc() : super(const GuestsState.initial()) {
    on<GuestsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
