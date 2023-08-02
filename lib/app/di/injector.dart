import 'package:birthday_app/data/data_sources/local/guests_local_data_source.dart';
import 'package:birthday_app/data/data_sources/local/hive/guests_hive/guests_local_data_source_hive.dart';
import 'package:birthday_app/data/repositories/guests_repository_impl.dart';
import 'package:birthday_app/domain/repositories/guests_repository.dart';
import 'package:birthday_app/domain/use_cases/add_guest_use_case.dart';
import 'package:birthday_app/domain/use_cases/get_all_guests_use_case.dart';
import 'package:birthday_app/presentation/blocs/guests_bloc/guests_bloc.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {
  // Data Source
  injector.registerLazySingleton<GuestsLocalDataSource>(
    () => GuestsLocalDataSourceHive(),
  );

  // Repository
  injector.registerLazySingleton<GuestsRepository>(
    () => GuestsRepositoryImpl(guestsLocalDataSource: injector()),
  );

  // Use Case
  injector.registerLazySingleton(
    () => GetAllGuestsUseCase(guestRepository: injector()),
  );
  injector.registerLazySingleton(
    () => AddGuestUseCase(guestRepository: injector()),
  );

  // BLoC
  injector.registerFactory(() => GuestsBloc());

  // Init DB
  await injector<GuestsLocalDataSource>().initDb();
}
