import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_model.freezed.dart';

/// Holds information concerning plants
@freezed
class PlantModel with _$PlantModel {
  /// Factory for creating a PlantModel
  const factory PlantModel({
    required int id,
    required String name,
    required String description,
  }) = _PlantModel;
}
