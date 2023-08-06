import 'dart:io';
import 'package:path/path.dart';
import 'package:birthday_app/data/data_sources/local/wishes_local_data_sources.dart';
import 'package:birthday_app/data/models/wish/wish_model.dart';
import 'package:sqflite/sqflite.dart';

class WishesLocalDataSourceSqflite implements WishesLocalDataSource {
  late Database _db;
  final _dbName = 'wishes_sqflite.db';
  final _wishesTable = 'wishes';

  @override
  Future<bool> initDb() async {
    final dbFolder = await getDatabasesPath();
    if (!await Directory(dbFolder).exists()) {
      await Directory(dbFolder).create(recursive: true);
    }
    final dbPath = join(dbFolder, _dbName);
    _db = await openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) async {
        await _initWishesTable(db);
      },
    );

    return true;
  }

  Future<void> _initWishesTable(Database db) async {
    await db.execute(
        'CREATE TABLE $_wishesTable(id TEXT NOT NULL, title TEXT NOT NULL, link TEXT NOT NULL, isSelected BOOLEAN NOT NULL);');
  }

  @override
  Future<List<WishModel>> getAllWishes() async {
    print('getttttttttttttttttt');
    _db.getVersion();
    print(await _db.getVersion());
    final json = await _db.rawQuery('SELECT * FROM $_wishesTable');
    return json.map<WishModel>((e) => WishModel.fromJson(e)).toList();
  }

  @override
  Future<bool> addWish(WishModel wish) async {
    print('addddddddddddddddddddddd');
    await _db.transaction(
      (txn) async {
        await txn.rawInsert(
            'INSERT INTO $_wishesTable(id, title, link, isSelected) VALUES("${wish.id}", "${wish.title}", "${wish.link}", ${wish.isSelected})');
        // 'INSERT INTO $_wishesTable(id, title, link, isSelected) VALUES(?)',
        // [wish.id, wish.title, wish.link, wish.isSelected]);
      },
    );

    return true;
  }

  @override
  Future<bool> deleteWish(String id) async {
    await _db.rawDelete('''
        DELETE FROM $_wishesTable
        WHERE id = $id
      ''');
    return true;
  }

  @override
  Future<bool> selectWish(WishModel wishModel) async {
    // TODO: implement selectWish
    throw UnimplementedError();
  }
}
