import 'package:plants/src/database/database.dart';
import 'package:plants/src/datasource/plant_source.dart';
import 'package:plants/src/model/plant_model.dart';

/// Stores Data related to plants through a local storage
class PlantSourceLocalStorage implements PlantSource {
  final PlantDatabase _database = PlantDatabase(
    const String.fromEnvironment(
      'PLANT_LOCAL_STORAGE_FILE',
      defaultValue: 'PlantDB',
    ),
  );

  @override
  Future<PlantSourceResult> createPlant(PlantModel newData) async {
    await _database.into(_database.plantDatabaseModel).insert(
          PlantDatabaseModelCompanion.insert(
            name: newData.name,
            description: newData.description,
          ),
        );

    return PlantSourceResult.success;
  }

  @override
  Future<PlantSourceResult> deletePlant(int id) async {
    final affectedRows = await (_database.delete(_database.plantDatabaseModel)
          ..where((plant) => plant.id.equals(id)))
        .go();

    return affectedRows == 1
        ? PlantSourceResult.success
        : PlantSourceResult.entryNotFound;
  }

  @override
  Future<PlantSourceResult> updatePlant(int id, PlantModel newData) async {
    final successful =
        await _database.update(_database.plantDatabaseModel).replace(
              PlantDatabaseModelData(
                id: id,
                name: newData.name,
                description: newData.description,
              ),
            );

    return successful
        ? PlantSourceResult.success
        : PlantSourceResult.entryNotFound;
  }

  @override
  Future<(PlantSourceResult, PlantModel?)> getPlant(int id) async {
    final dbPlant = await (_database.select(_database.plantDatabaseModel)
          ..where((element) => element.id.equals(id)))
        .getSingleOrNull();

    if (dbPlant != null) {
      return (
        PlantSourceResult.success,
        PlantModel(
          id: dbPlant.id,
          name: dbPlant.name,
          description: dbPlant.description,
        )
      );
    }

    return (PlantSourceResult.entryNotFound, null);
  }

  @override
  Future<(PlantSourceResult, Iterable<PlantModel>)> getPlants() async {
    final dbPlants = await _database.select(_database.plantDatabaseModel).get();

    final modelPlants = dbPlants.map(
      (element) => PlantModel(
        id: element.id,
        name: element.name,
        description: element.description,
      ),
    );

    return (PlantSourceResult.success, modelPlants);
  }
}
