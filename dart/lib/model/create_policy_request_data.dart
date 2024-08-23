//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePolicyRequestData {
  /// Returns a new [CreatePolicyRequestData] instance.
  CreatePolicyRequestData({
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  CreatePolicyRequestDataTypeEnum type;

  CreatePolicyRequestDataAttributes attributes;

  CreatePolicyRequestDataRelationships relationships;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePolicyRequestData &&
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
  String toString() => 'CreatePolicyRequestData[type=$type, attributes=$attributes, relationships=$relationships]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
      json[r'relationships'] = this.relationships;
    return json;
  }

  /// Returns a new [CreatePolicyRequestData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePolicyRequestData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePolicyRequestData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePolicyRequestData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePolicyRequestData(
        type: CreatePolicyRequestDataTypeEnum.fromJson(json[r'type'])!,
        attributes: CreatePolicyRequestDataAttributes.fromJson(json[r'attributes'])!,
        relationships: CreatePolicyRequestDataRelationships.fromJson(json[r'relationships'])!,
      );
    }
    return null;
  }

  static List<CreatePolicyRequestData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePolicyRequestData> mapFromJson(dynamic json) {
    final map = <String, CreatePolicyRequestData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePolicyRequestData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePolicyRequestData-objects as value to a dart map
  static Map<String, List<CreatePolicyRequestData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePolicyRequestData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePolicyRequestData.listFromJson(entry.value, growable: growable,);
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


class CreatePolicyRequestDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const policies = CreatePolicyRequestDataTypeEnum._(r'policies');

  /// List of all possible values in this [enum][CreatePolicyRequestDataTypeEnum].
  static const values = <CreatePolicyRequestDataTypeEnum>[
    policies,
  ];

  static CreatePolicyRequestDataTypeEnum? fromJson(dynamic value) => CreatePolicyRequestDataTypeEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataTypeEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataTypeEnum].
class CreatePolicyRequestDataTypeEnumTypeTransformer {
  factory CreatePolicyRequestDataTypeEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataTypeEnumTypeTransformer._();

  const CreatePolicyRequestDataTypeEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'policies': return CreatePolicyRequestDataTypeEnum.policies;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataTypeEnumTypeTransformer] instance.
  static CreatePolicyRequestDataTypeEnumTypeTransformer? _instance;
}


