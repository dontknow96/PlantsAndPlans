import 'package:plants/plants.dart';
import 'package:plants/src/datasource/plant_source.dart';

/// Responsible for taking care of all plant actions including notifications
class PlantRepository {
  /// Constructor
  PlantRepository(this._plantSource);

  final PlantSource _plantSource;

  /// Gets all Plants
  Future<(PlantSourceResult, Iterable<PlantModel>)> getPlants() async {
    return _plantSource.getPlants();
  }

  /// Gets a Plant with the corresponding [id]
  Future<(PlantSourceResult, PlantModel?)> getPlant(int id) {
    return _plantSource.getPlant(id);
  }

  /// update a Plant with the [id] to the values of [newData]
  Future<PlantSourceResult> updatePlant(int id, PlantModel newData) {
    return _plantSource.updatePlant(id, newData);
  }

  /// creates a Plant with the values of [newData]
  Future<PlantSourceResult> createPlant(PlantModel newData) {
    return _plantSource.createPlant(newData);
  }

  /// Deletes the Plant with the corresponding [id]
  Future<PlantSourceResult> deletePlant(int id) {
    return _plantSource.deletePlant(id);
  }
}
