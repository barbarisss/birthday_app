import 'package:birthday_app/data/data_sources/remote/entertainment_remote_data_source.dart';
import 'package:birthday_app/data/models/entertainment_item/entertainment_item_model.dart';
import 'package:birthday_app/domain/repositories/entertainment_repository.dart';

class EntertaimentRepositoryImpl implements EntertainmentRepository {
  const EntertaimentRepositoryImpl({
    required this.entertainmentRemoteDataSource,
  });

  final EntertainmentRemoteDataSource entertainmentRemoteDataSource;

  @override
  Future<List<EntertainmentItemModel>> getAllEntertaimentItems() async {
    final response =
        await entertainmentRemoteDataSource.getAllEntertaimentItems();
    return response;
  }
}
