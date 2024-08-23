//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SpawnProcessRequestData {
  /// Returns a new [SpawnProcessRequestData] instance.
  SpawnProcessRequestData({
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  SpawnProcessRequestDataTypeEnum type;

  SpawnProcessRequestDataAttributes attributes;

  SpawnProcessRequestDataRelationships relationships;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpawnProcessRequestData &&
    other.type == type &&
    other.attributes == attributes &&
    other.relationships == relationships;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (attributes.hashCode) +
    (relationships.hashCode);

  @override
  String toString() => 'SpawnProcessRequestData[type=$type, attributes=$attributes, relationships=$relationships]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
      json[r'relationships'] = this.relationships;
    return json;
  }

  /// Returns a new [SpawnProcessRequestData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpawnProcessRequestData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpawnProcessRequestData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpawnProcessRequestData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpawnProcessRequestData(
        type: SpawnProcessRequestDataTypeEnum.fromJson(json[r'type'])!,
        attributes: SpawnProcessRequestDataAttributes.fromJson(json[r'attributes'])!,
        relationships: SpawnProcessRequestDataRelationships.fromJson(json[r'relationships'])!,
      );
    }
    return null;
  }

  static List<SpawnProcessRequestData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpawnProcessRequestData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpawnProcessRequestData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpawnProcessRequestData> mapFromJson(dynamic json) {
    final map = <String, SpawnProcessRequestData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpawnProcessRequestData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpawnProcessRequestData-objects as value to a dart map
  static Map<String, List<SpawnProcessRequestData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpawnProcessRequestData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpawnProcessRequestData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'attributes',
    'relationships',
  };
}


class SpawnProcessRequestDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SpawnProcessRequestDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const processes = SpawnProcessRequestDataTypeEnum._(r'processes');

  /// List of all possible values in this [enum][SpawnProcessRequestDataTypeEnum].
  static const values = <SpawnProcessRequestDataTypeEnum>[
    processes,
  ];

  static SpawnProcessRequestDataTypeEnum? fromJson(dynamic value) => SpawnProcessRequestDataTypeEnumTypeTransformer().decode(value);

  static List<SpawnProcessRequestDataTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpawnProcessRequestDataTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpawnProcessRequestDataTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SpawnProcessRequestDataTypeEnum] to String,
/// and [decode] dynamic data back to [SpawnProcessRequestDataTypeEnum].
class SpawnProcessRequestDataTypeEnumTypeTransformer {
  factory SpawnProcessRequestDataTypeEnumTypeTransformer() => _instance ??= const SpawnProcessRequestDataTypeEnumTypeTransformer._();

  const SpawnProcessRequestDataTypeEnumTypeTransformer._();

  String encode(SpawnProcessRequestDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SpawnProcessRequestDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SpawnProcessRequestDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'processes': return SpawnProcessRequestDataTypeEnum.processes;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SpawnProcessRequestDataTypeEnumTypeTransformer] instance.
  static SpawnProcessRequestDataTypeEnumTypeTransformer? _instance;
}


