// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarkerModelImpl _$$MarkerModelImplFromJson(Map<String, dynamic> json) =>
    _$MarkerModelImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      heading: (json['heading'] as num?)?.toDouble(),
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$MarkerModelImplToJson(_$MarkerModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'heading': instance.heading,
      'timestamp': instance.timestamp?.toIso8601String(),
    };
