//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SecondFactor {
  /// Returns a new [SecondFactor] instance.
  SecondFactor({
    required this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  String id;

  SecondFactorTypeEnum type;

  SecondFactorAttributes attributes;

  SecondFactorRelationships relationships;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SecondFactor &&
    other.id == id &&
    other.type == type &&
    other.attributes == attributes &&
    other.relationships == relationships;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (attributes.hashCode) +
    (relationships.hashCode);

  @override
  String toString() => 'SecondFactor[id=$id, type=$type, attributes=$attributes, relationships=$relationships]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
      json[r'relationships'] = this.relationships;
    return json;
  }

  /// Returns a new [SecondFactor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SecondFactor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SecondFactor[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SecondFactor[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SecondFactor(
        id: mapValueOfType<String>(json, r'id')!,
        type: SecondFactorTypeEnum.fromJson(json[r'type'])!,
        attributes: SecondFactorAttributes.fromJson(json[r'attributes'])!,
        relationships: SecondFactorRelationships.fromJson(json[r'relationships'])!,
      );
    }
    return null;
  }

  static List<SecondFactor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SecondFactor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SecondFactor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SecondFactor> mapFromJson(dynamic json) {
    final map = <String, SecondFactor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SecondFactor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SecondFactor-objects as value to a dart map
  static Map<String, List<SecondFactor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SecondFactor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SecondFactor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'attributes',
    'relationships',
  };
}


class SecondFactorTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SecondFactorTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const secondFactors = SecondFactorTypeEnum._(r'second-factors');

  /// List of all possible values in this [enum][SecondFactorTypeEnum].
  static const values = <SecondFactorTypeEnum>[
    secondFactors,
  ];

  static SecondFactorTypeEnum? fromJson(dynamic value) => SecondFactorTypeEnumTypeTransformer().decode(value);

  static List<SecondFactorTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SecondFactorTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SecondFactorTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SecondFactorTypeEnum] to String,
/// and [decode] dynamic data back to [SecondFactorTypeEnum].
class SecondFactorTypeEnumTypeTransformer {
  factory SecondFactorTypeEnumTypeTransformer() => _instance ??= const SecondFactorTypeEnumTypeTransformer._();

  const SecondFactorTypeEnumTypeTransformer._();

  String encode(SecondFactorTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SecondFactorTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SecondFactorTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'second-factors': return SecondFactorTypeEnum.secondFactors;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SecondFactorTypeEnumTypeTransformer] instance.
  static SecondFactorTypeEnumTypeTransformer? _instance;
}


