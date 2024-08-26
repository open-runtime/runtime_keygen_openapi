//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateTokenRequestData {
  /// Returns a new [GenerateTokenRequestData] instance.
  GenerateTokenRequestData({
    required this.type,
    required this.attributes,
  });

  GenerateTokenRequestDataTypeEnum type;

  GenerateTokenRequestDataAttributes attributes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateTokenRequestData &&
    other.type == type &&
    other.attributes == attributes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (attributes.hashCode);

  @override
  String toString() => 'GenerateTokenRequestData[type=$type, attributes=$attributes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
    return json;
  }

  /// Returns a new [GenerateTokenRequestData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateTokenRequestData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateTokenRequestData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateTokenRequestData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateTokenRequestData(
        type: GenerateTokenRequestDataTypeEnum.fromJson(json[r'type'])!,
        attributes: GenerateTokenRequestDataAttributes.fromJson(json[r'attributes'])!,
      );
    }
    return null;
  }

  static List<GenerateTokenRequestData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateTokenRequestData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateTokenRequestData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateTokenRequestData> mapFromJson(dynamic json) {
    final map = <String, GenerateTokenRequestData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateTokenRequestData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateTokenRequestData-objects as value to a dart map
  static Map<String, List<GenerateTokenRequestData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateTokenRequestData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateTokenRequestData.listFromJson(entry.value, growable: growable,);
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


class GenerateTokenRequestDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateTokenRequestDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const tokens = GenerateTokenRequestDataTypeEnum._(r'tokens');

  /// List of all possible values in this [enum][GenerateTokenRequestDataTypeEnum].
  static const values = <GenerateTokenRequestDataTypeEnum>[
    tokens,
  ];

  static GenerateTokenRequestDataTypeEnum? fromJson(dynamic value) => GenerateTokenRequestDataTypeEnumTypeTransformer().decode(value);

  static List<GenerateTokenRequestDataTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateTokenRequestDataTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateTokenRequestDataTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateTokenRequestDataTypeEnum] to String,
/// and [decode] dynamic data back to [GenerateTokenRequestDataTypeEnum].
class GenerateTokenRequestDataTypeEnumTypeTransformer {
  factory GenerateTokenRequestDataTypeEnumTypeTransformer() => _instance ??= const GenerateTokenRequestDataTypeEnumTypeTransformer._();

  const GenerateTokenRequestDataTypeEnumTypeTransformer._();

  String encode(GenerateTokenRequestDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateTokenRequestDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateTokenRequestDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'tokens': return GenerateTokenRequestDataTypeEnum.tokens;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateTokenRequestDataTypeEnumTypeTransformer] instance.
  static GenerateTokenRequestDataTypeEnumTypeTransformer? _instance;
}


