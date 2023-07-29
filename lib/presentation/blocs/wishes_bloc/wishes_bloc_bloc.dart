import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'wishes_bloc_event.dart';
part 'wishes_bloc_state.dart';

class WishesBlocBloc extends Bloc<WishesBlocEvent, WishesBlocState> {
  WishesBlocBloc() : super(WishesBlocInitial()) {
    on<WishesBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
