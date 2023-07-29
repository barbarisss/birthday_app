import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'guests_bloc_event.dart';
part 'guests_bloc_state.dart';

class GuestsBlocBloc extends Bloc<GuestsBlocEvent, GuestsBlocState> {
  GuestsBlocBloc() : super(GuestsBlocInitial()) {
    on<GuestsBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
