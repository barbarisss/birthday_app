import 'package:birthday_app/core/utils/images.dart';
import 'package:birthday_app/core/utils/strings.dart';
import 'package:birthday_app/data/data_sources/remote/entertainment_remote_data_source.dart';
import 'package:birthday_app/data/models/entertainment_item/entertainment_item_model.dart';

class EntertainmentRemoteDataSourceFake
    implements EntertainmentRemoteDataSource {
  List<EntertainmentItemModel> entertaimentItems = [
    EntertainmentItemModel(
      icon: AppImages.boardGames,
      title: AppStrings.boardGames,
      discription: AppStrings.aboutBoardGames,
    ),
    EntertainmentItemModel(
      icon: AppImages.pool,
      title: AppStrings.pool,
      discription: AppStrings.aboutPool,
    ),
    EntertainmentItemModel(
      icon: AppImages.boardGames,
      title: AppStrings.boardGames,
      discription: AppStrings.aboutBoardGames,
    ),
    EntertainmentItemModel(
      icon: AppImages.pool,
      title: AppStrings.pool,
      discription: AppStrings.aboutPool,
    ),
    EntertainmentItemModel(
      icon: AppImages.boardGames,
      title: AppStrings.boardGames,
      discription: AppStrings.aboutBoardGames,
    ),
    EntertainmentItemModel(
      icon: AppImages.pool,
      title: AppStrings.pool,
      discription: AppStrings.aboutPool,
    ),
  ];

  @override
  Future<List<EntertainmentItemModel>> getAllEntertaimentItems() async {
    final fetchEntertaimentItems = await Future.delayed(
      const Duration(milliseconds: 1500),
      () => entertaimentItems,
    );
    return fetchEntertaimentItems;
  }
}
