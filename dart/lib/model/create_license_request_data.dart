//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateLicenseRequestData {
  /// Returns a new [CreateLicenseRequestData] instance.
  CreateLicenseRequestData({
    required this.type,
    this.attributes,
    required this.relationships,
  });

  CreateLicenseRequestDataTypeEnum type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateLicenseRequestDataAttributes? attributes;

  CreateLicenseRequestDataRelationships relationships;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateLicenseRequestData &&
    other.type == type &&
    other.attributes == attributes &&
    other.relationships == relationships;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (attributes == null ? 0 : attributes!.hashCode) +
    (relationships.hashCode);

  @override
  String toString() => 'CreateLicenseRequestData[type=$type, attributes=$attributes, relationships=$relationships]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
    if (this.attributes != null) {
      json[r'attributes'] = this.attributes;
    } else {
      json[r'attributes'] = null;
    }
      json[r'relationships'] = this.relationships;
    return json;
  }

  /// Returns a new [CreateLicenseRequestData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateLicenseRequestData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateLicenseRequestData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateLicenseRequestData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateLicenseRequestData(
        type: CreateLicenseRequestDataTypeEnum.fromJson(json[r'type'])!,
        attributes: CreateLicenseRequestDataAttributes.fromJson(json[r'attributes']),
        relationships: CreateLicenseRequestDataRelationships.fromJson(json[r'relationships'])!,
      );
    }
    return null;
  }

  static List<CreateLicenseRequestData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLicenseRequestData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLicenseRequestData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateLicenseRequestData> mapFromJson(dynamic json) {
    final map = <String, CreateLicenseRequestData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateLicenseRequestData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateLicenseRequestData-objects as value to a dart map
  static Map<String, List<CreateLicenseRequestData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateLicenseRequestData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateLicenseRequestData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'relationships',
  };
}


class CreateLicenseRequestDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateLicenseRequestDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const licenses = CreateLicenseRequestDataTypeEnum._(r'licenses');

  /// List of all possible values in this [enum][CreateLicenseRequestDataTypeEnum].
  static const values = <CreateLicenseRequestDataTypeEnum>[
    licenses,
  ];

  static CreateLicenseRequestDataTypeEnum? fromJson(dynamic value) => CreateLicenseRequestDataTypeEnumTypeTransformer().decode(value);

  static List<CreateLicenseRequestDataTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLicenseRequestDataTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLicenseRequestDataTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateLicenseRequestDataTypeEnum] to String,
/// and [decode] dynamic data back to [CreateLicenseRequestDataTypeEnum].
class CreateLicenseRequestDataTypeEnumTypeTransformer {
  factory CreateLicenseRequestDataTypeEnumTypeTransformer() => _instance ??= const CreateLicenseRequestDataTypeEnumTypeTransformer._();

  const CreateLicenseRequestDataTypeEnumTypeTransformer._();

  String encode(CreateLicenseRequestDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateLicenseRequestDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateLicenseRequestDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'licenses': return CreateLicenseRequestDataTypeEnum.licenses;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateLicenseRequestDataTypeEnumTypeTransformer] instance.
  static CreateLicenseRequestDataTypeEnumTypeTransformer? _instance;
}


