import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'database.g.dart';

/// Contains all Data concerning plants
class PlantDatabaseModel extends Table {
  /// Unique identifier for plant
  IntColumn get id => integer().autoIncrement()();

  /// name for plant
  TextColumn get name => text()();

  /// description for plant
  TextColumn get description => text()();
}

/// Contains all Data concerning plants
@DriftDatabase(tables: [PlantDatabaseModel])
class PlantDatabase extends _$PlantDatabase {
  /// Default Super Constructor
  ///
  /// Uses [dbName] as a descriptor for the db file.
  PlantDatabase(String dbName) : super(_openConnection(dbName));

  /// Creates a DB connection
  ///
  /// Uses [dbName] as a descriptor for the db file.
  static LazyDatabase _openConnection(String dbName) {
    // the LazyDatabase util lets us find the right location for the file async.
    return LazyDatabase(() async {
      // put the database file, called db.sqlite here, into the documents folder
      // for your app.
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(path.join(dbFolder.path, '$dbName.sqlite'));

      // Also work around limitations on old Android versions
      if (Platform.isAndroid) {
        await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
      }

      // Make sqlite3 pick a more suitable location for temporary files - the
      // one from the system may be inaccessible due to sandboxing.
      final cachebase = (await getTemporaryDirectory()).path;
      // We can't access /tmp on Android, which sqlite3 would try by default.
      // Explicitly tell it about the correct temporary directory.
      sqlite3.tempDirectory = cachebase;

      return NativeDatabase.createInBackground(file);
    });
  }

  @override
  int get schemaVersion => 1;
}
