import 'package:freezed_annotation/freezed_annotation.dart';

part 'marker_model.freezed.dart';
part 'marker_model.g.dart';

@freezed
class MarkerModel with _$MarkerModel {
  const factory MarkerModel({
    @JsonKey(name: 'latitude') double? latitude,
    @JsonKey(name: 'longitude') double? longitude,
    @JsonKey(name: 'heading') double? heading,
    @JsonKey(name: 'timestamp') DateTime? timestamp,
  }) = _MarkerModel;

  factory MarkerModel.fromJson(Map<String, Object?> json) => _$MarkerModelFromJson(json);
}

