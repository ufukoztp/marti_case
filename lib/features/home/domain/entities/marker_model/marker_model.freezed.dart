// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarkerModel _$MarkerModelFromJson(Map<String, dynamic> json) {
  return _MarkerModel.fromJson(json);
}

/// @nodoc
mixin _$MarkerModel {
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'heading')
  double? get heading => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  DateTime? get timestamp => throw _privateConstructorUsedError;

  /// Serializes this MarkerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarkerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarkerModelCopyWith<MarkerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkerModelCopyWith<$Res> {
  factory $MarkerModelCopyWith(
          MarkerModel value, $Res Function(MarkerModel) then) =
      _$MarkerModelCopyWithImpl<$Res, MarkerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'heading') double? heading,
      @JsonKey(name: 'timestamp') DateTime? timestamp});
}

/// @nodoc
class _$MarkerModelCopyWithImpl<$Res, $Val extends MarkerModel>
    implements $MarkerModelCopyWith<$Res> {
  _$MarkerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? heading = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkerModelImplCopyWith<$Res>
    implements $MarkerModelCopyWith<$Res> {
  factory _$$MarkerModelImplCopyWith(
          _$MarkerModelImpl value, $Res Function(_$MarkerModelImpl) then) =
      __$$MarkerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'heading') double? heading,
      @JsonKey(name: 'timestamp') DateTime? timestamp});
}

/// @nodoc
class __$$MarkerModelImplCopyWithImpl<$Res>
    extends _$MarkerModelCopyWithImpl<$Res, _$MarkerModelImpl>
    implements _$$MarkerModelImplCopyWith<$Res> {
  __$$MarkerModelImplCopyWithImpl(
      _$MarkerModelImpl _value, $Res Function(_$MarkerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarkerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? heading = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$MarkerModelImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarkerModelImpl implements _MarkerModel {
  const _$MarkerModelImpl(
      {@JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'heading') this.heading,
      @JsonKey(name: 'timestamp') this.timestamp});

  factory _$MarkerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkerModelImplFromJson(json);

  @override
  @JsonKey(name: 'latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'longitude')
  final double? longitude;
  @override
  @JsonKey(name: 'heading')
  final double? heading;
  @override
  @JsonKey(name: 'timestamp')
  final DateTime? timestamp;

  @override
  String toString() {
    return 'MarkerModel(latitude: $latitude, longitude: $longitude, heading: $heading, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkerModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, latitude, longitude, heading, timestamp);

  /// Create a copy of MarkerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkerModelImplCopyWith<_$MarkerModelImpl> get copyWith =>
      __$$MarkerModelImplCopyWithImpl<_$MarkerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkerModelImplToJson(
      this,
    );
  }
}

abstract class _MarkerModel implements MarkerModel {
  const factory _MarkerModel(
          {@JsonKey(name: 'latitude') final double? latitude,
          @JsonKey(name: 'longitude') final double? longitude,
          @JsonKey(name: 'heading') final double? heading,
          @JsonKey(name: 'timestamp') final DateTime? timestamp}) =
      _$MarkerModelImpl;

  factory _MarkerModel.fromJson(Map<String, dynamic> json) =
      _$MarkerModelImpl.fromJson;

  @override
  @JsonKey(name: 'latitude')
  double? get latitude;
  @override
  @JsonKey(name: 'longitude')
  double? get longitude;
  @override
  @JsonKey(name: 'heading')
  double? get heading;
  @override
  @JsonKey(name: 'timestamp')
  DateTime? get timestamp;

  /// Create a copy of MarkerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkerModelImplCopyWith<_$MarkerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
