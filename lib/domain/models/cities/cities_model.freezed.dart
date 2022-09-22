// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cities_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityModel _$CityModelFromJson(Map<String, dynamic> json) {
  return _CityModel.fromJson(json);
}

/// @nodoc
mixin _$CityModel {
  @JsonKey(name: 'city_id')
  dynamic get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_id')
  String get stateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  String get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_title')
  String get cityTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_description')
  String? get cityDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'isactive')
  String? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityModelCopyWith<CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityModelCopyWith<$Res> {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) then) =
      _$CityModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'city_id') dynamic cityId,
      @JsonKey(name: 'state_id') String stateId,
      @JsonKey(name: 'country_id') String countryId,
      @JsonKey(name: 'city_title') String cityTitle,
      @JsonKey(name: 'city_description') String? cityDescription,
      @JsonKey(name: 'isactive') String? isActive});
}

/// @nodoc
class _$CityModelCopyWithImpl<$Res> implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._value, this._then);

  final CityModel _value;
  // ignore: unused_field
  final $Res Function(CityModel) _then;

  @override
  $Res call({
    Object? cityId = freezed,
    Object? stateId = freezed,
    Object? countryId = freezed,
    Object? cityTitle = freezed,
    Object? cityDescription = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      cityTitle: cityTitle == freezed
          ? _value.cityTitle
          : cityTitle // ignore: cast_nullable_to_non_nullable
              as String,
      cityDescription: cityDescription == freezed
          ? _value.cityDescription
          : cityDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CityModelCopyWith<$Res> implements $CityModelCopyWith<$Res> {
  factory _$$_CityModelCopyWith(
          _$_CityModel value, $Res Function(_$_CityModel) then) =
      __$$_CityModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'city_id') dynamic cityId,
      @JsonKey(name: 'state_id') String stateId,
      @JsonKey(name: 'country_id') String countryId,
      @JsonKey(name: 'city_title') String cityTitle,
      @JsonKey(name: 'city_description') String? cityDescription,
      @JsonKey(name: 'isactive') String? isActive});
}

/// @nodoc
class __$$_CityModelCopyWithImpl<$Res> extends _$CityModelCopyWithImpl<$Res>
    implements _$$_CityModelCopyWith<$Res> {
  __$$_CityModelCopyWithImpl(
      _$_CityModel _value, $Res Function(_$_CityModel) _then)
      : super(_value, (v) => _then(v as _$_CityModel));

  @override
  _$_CityModel get _value => super._value as _$_CityModel;

  @override
  $Res call({
    Object? cityId = freezed,
    Object? stateId = freezed,
    Object? countryId = freezed,
    Object? cityTitle = freezed,
    Object? cityDescription = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_CityModel(
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      cityTitle: cityTitle == freezed
          ? _value.cityTitle
          : cityTitle // ignore: cast_nullable_to_non_nullable
              as String,
      cityDescription: cityDescription == freezed
          ? _value.cityDescription
          : cityDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityModel implements _CityModel {
  const _$_CityModel(
      {@JsonKey(name: 'city_id') required this.cityId,
      @JsonKey(name: 'state_id') required this.stateId,
      @JsonKey(name: 'country_id') required this.countryId,
      @JsonKey(name: 'city_title') required this.cityTitle,
      @JsonKey(name: 'city_description') required this.cityDescription,
      @JsonKey(name: 'isactive') required this.isActive});

  factory _$_CityModel.fromJson(Map<String, dynamic> json) =>
      _$$_CityModelFromJson(json);

  @override
  @JsonKey(name: 'city_id')
  final dynamic cityId;
  @override
  @JsonKey(name: 'state_id')
  final String stateId;
  @override
  @JsonKey(name: 'country_id')
  final String countryId;
  @override
  @JsonKey(name: 'city_title')
  final String cityTitle;
  @override
  @JsonKey(name: 'city_description')
  final String? cityDescription;
  @override
  @JsonKey(name: 'isactive')
  final String? isActive;

  @override
  String toString() {
    return 'CityModel(cityId: $cityId, stateId: $stateId, countryId: $countryId, cityTitle: $cityTitle, cityDescription: $cityDescription, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityModel &&
            const DeepCollectionEquality().equals(other.cityId, cityId) &&
            const DeepCollectionEquality().equals(other.stateId, stateId) &&
            const DeepCollectionEquality().equals(other.countryId, countryId) &&
            const DeepCollectionEquality().equals(other.cityTitle, cityTitle) &&
            const DeepCollectionEquality()
                .equals(other.cityDescription, cityDescription) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cityId),
      const DeepCollectionEquality().hash(stateId),
      const DeepCollectionEquality().hash(countryId),
      const DeepCollectionEquality().hash(cityTitle),
      const DeepCollectionEquality().hash(cityDescription),
      const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$$_CityModelCopyWith<_$_CityModel> get copyWith =>
      __$$_CityModelCopyWithImpl<_$_CityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityModelToJson(
      this,
    );
  }
}

abstract class _CityModel implements CityModel {
  const factory _CityModel(
      {@JsonKey(name: 'city_id')
          required final dynamic cityId,
      @JsonKey(name: 'state_id')
          required final String stateId,
      @JsonKey(name: 'country_id')
          required final String countryId,
      @JsonKey(name: 'city_title')
          required final String cityTitle,
      @JsonKey(name: 'city_description')
          required final String? cityDescription,
      @JsonKey(name: 'isactive')
          required final String? isActive}) = _$_CityModel;

  factory _CityModel.fromJson(Map<String, dynamic> json) =
      _$_CityModel.fromJson;

  @override
  @JsonKey(name: 'city_id')
  dynamic get cityId;
  @override
  @JsonKey(name: 'state_id')
  String get stateId;
  @override
  @JsonKey(name: 'country_id')
  String get countryId;
  @override
  @JsonKey(name: 'city_title')
  String get cityTitle;
  @override
  @JsonKey(name: 'city_description')
  String? get cityDescription;
  @override
  @JsonKey(name: 'isactive')
  String? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_CityModelCopyWith<_$_CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
