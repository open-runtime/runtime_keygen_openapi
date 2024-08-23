//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateProductTokenRequestData {
  /// Returns a new [GenerateProductTokenRequestData] instance.
  GenerateProductTokenRequestData({
    required this.type,
    required this.attributes,
  });

  GenerateProductTokenRequestDataTypeEnum type;

  GenerateProductTokenRequestDataAttributes attributes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateProductTokenRequestData &&
    other.type == type &&
    other.attributes == attributes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (attributes.hashCode);

  @override
  String toString() => 'GenerateProductTokenRequestData[type=$type, attributes=$attributes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
    return json;
  }

  /// Returns a new [GenerateProductTokenRequestData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateProductTokenRequestData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateProductTokenRequestData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateProductTokenRequestData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateProductTokenRequestData(
        type: GenerateProductTokenRequestDataTypeEnum.fromJson(json[r'type'])!,
        attributes: GenerateProductTokenRequestDataAttributes.fromJson(json[r'attributes'])!,
      );
    }
    return null;
  }

  static List<GenerateProductTokenRequestData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateProductTokenRequestData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateProductTokenRequestData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateProductTokenRequestData> mapFromJson(dynamic json) {
    final map = <String, GenerateProductTokenRequestData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateProductTokenRequestData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateProductTokenRequestData-objects as value to a dart map
  static Map<String, List<GenerateProductTokenRequestData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateProductTokenRequestData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateProductTokenRequestData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'attributes',
  };
}


class GenerateProductTokenRequestDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateProductTokenRequestDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const tokens = GenerateProductTokenRequestDataTypeEnum._(r'tokens');

  /// List of all possible values in this [enum][GenerateProductTokenRequestDataTypeEnum].
  static const values = <GenerateProductTokenRequestDataTypeEnum>[
    tokens,
  ];

  static GenerateProductTokenRequestDataTypeEnum? fromJson(dynamic value) => GenerateProductTokenRequestDataTypeEnumTypeTransformer().decode(value);

  static List<GenerateProductTokenRequestDataTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateProductTokenRequestDataTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateProductTokenRequestDataTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateProductTokenRequestDataTypeEnum] to String,
/// and [decode] dynamic data back to [GenerateProductTokenRequestDataTypeEnum].
class GenerateProductTokenRequestDataTypeEnumTypeTransformer {
  factory GenerateProductTokenRequestDataTypeEnumTypeTransformer() => _instance ??= const GenerateProductTokenRequestDataTypeEnumTypeTransformer._();

  const GenerateProductTokenRequestDataTypeEnumTypeTransformer._();

  String encode(GenerateProductTokenRequestDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateProductTokenRequestDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateProductTokenRequestDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'tokens': return GenerateProductTokenRequestDataTypeEnum.tokens;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateProductTokenRequestDataTypeEnumTypeTransformer] instance.
  static GenerateProductTokenRequestDataTypeEnumTypeTransformer? _instance;
}


