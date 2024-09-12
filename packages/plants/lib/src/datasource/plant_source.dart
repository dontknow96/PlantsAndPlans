import 'package:plants/src/model/plant_model.dart';

/// Describes the results of plant data sourcing
enum PlantSourceResult {
  /// The source Operation was a success
  success,

  /// The source Operation lacks proper credentials
  wrongCredentials,

  /// The source Operation could not findd the entry
  entryNotFound,

  /// The source Operation failed due to an unknown/unexpected reason
  unknownError
}

///Deals with sourcing plant information
abstract class PlantSource {
  /// Gets all Plants
  Future<(PlantSourceResult,Iterable<PlantModel>)> getPlants();

  /// Gets a Plant
  Future<(PlantSourceResult, PlantModel?)> getPlant(int id);

  /// Edits a Plant
  Future<PlantSourceResult> updatePlant(int id, PlantModel newData);

  /// creates a Plant
  Future<PlantSourceResult> createPlant(PlantModel newData);

  /// Deletes a Plant
  Future<PlantSourceResult> deletePlant(int id);
}
