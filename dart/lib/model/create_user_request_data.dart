//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateUserRequestData {
  /// Returns a new [CreateUserRequestData] instance.
  CreateUserRequestData({
    required this.type,
    required this.attributes,
    this.relationships,
  });

  CreateUserRequestDataTypeEnum type;

  CreateUserRequestDataAttributes attributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateUserRequestDataRelationships? relationships;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateUserRequestData &&
    other.type == type &&
    other.attributes == attributes &&
    other.relationships == relationships;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (attributes.hashCode) +
    (relationships == null ? 0 : relationships!.hashCode);

  @override
  String toString() => 'CreateUserRequestData[type=$type, attributes=$attributes, relationships=$relationships]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
    if (this.relationships != null) {
      json[r'relationships'] = this.relationships;
    } else {
      json[r'relationships'] = null;
    }
    return json;
  }

  /// Returns a new [CreateUserRequestData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateUserRequestData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateUserRequestData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateUserRequestData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateUserRequestData(
        type: CreateUserRequestDataTypeEnum.fromJson(json[r'type'])!,
        attributes: CreateUserRequestDataAttributes.fromJson(json[r'attributes'])!,
        relationships: CreateUserRequestDataRelationships.fromJson(json[r'relationships']),
      );
    }
    return null;
  }

  static List<CreateUserRequestData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateUserRequestData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateUserRequestData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateUserRequestData> mapFromJson(dynamic json) {
    final map = <String, CreateUserRequestData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateUserRequestData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateUserRequestData-objects as value to a dart map
  static Map<String, List<CreateUserRequestData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateUserRequestData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateUserRequestData.listFromJson(entry.value, growable: growable,);
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


class CreateUserRequestDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateUserRequestDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const users = CreateUserRequestDataTypeEnum._(r'users');

  /// List of all possible values in this [enum][CreateUserRequestDataTypeEnum].
  static const values = <CreateUserRequestDataTypeEnum>[
    users,
  ];

  static CreateUserRequestDataTypeEnum? fromJson(dynamic value) => CreateUserRequestDataTypeEnumTypeTransformer().decode(value);

  static List<CreateUserRequestDataTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateUserRequestDataTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateUserRequestDataTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateUserRequestDataTypeEnum] to String,
/// and [decode] dynamic data back to [CreateUserRequestDataTypeEnum].
class CreateUserRequestDataTypeEnumTypeTransformer {
  factory CreateUserRequestDataTypeEnumTypeTransformer() => _instance ??= const CreateUserRequestDataTypeEnumTypeTransformer._();

  const CreateUserRequestDataTypeEnumTypeTransformer._();

  String encode(CreateUserRequestDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateUserRequestDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateUserRequestDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'users': return CreateUserRequestDataTypeEnum.users;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateUserRequestDataTypeEnumTypeTransformer] instance.
  static CreateUserRequestDataTypeEnumTypeTransformer? _instance;
}


