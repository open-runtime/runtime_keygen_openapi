//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateGroupRequestData {
  /// Returns a new [CreateGroupRequestData] instance.
  CreateGroupRequestData({
    required this.type,
    required this.attributes,
  });

  CreateGroupRequestDataTypeEnum type;

  CreateGroupRequestDataAttributes attributes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateGroupRequestData &&
    other.type == type &&
    other.attributes == attributes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (attributes.hashCode);

  @override
  String toString() => 'CreateGroupRequestData[type=$type, attributes=$attributes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
    return json;
  }

  /// Returns a new [CreateGroupRequestData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateGroupRequestData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateGroupRequestData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateGroupRequestData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateGroupRequestData(
        type: CreateGroupRequestDataTypeEnum.fromJson(json[r'type'])!,
        attributes: CreateGroupRequestDataAttributes.fromJson(json[r'attributes'])!,
      );
    }
    return null;
  }

  static List<CreateGroupRequestData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateGroupRequestData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateGroupRequestData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateGroupRequestData> mapFromJson(dynamic json) {
    final map = <String, CreateGroupRequestData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateGroupRequestData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateGroupRequestData-objects as value to a dart map
  static Map<String, List<CreateGroupRequestData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateGroupRequestData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateGroupRequestData.listFromJson(entry.value, growable: growable,);
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


class CreateGroupRequestDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateGroupRequestDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const groups = CreateGroupRequestDataTypeEnum._(r'groups');

  /// List of all possible values in this [enum][CreateGroupRequestDataTypeEnum].
  static const values = <CreateGroupRequestDataTypeEnum>[
    groups,
  ];

  static CreateGroupRequestDataTypeEnum? fromJson(dynamic value) => CreateGroupRequestDataTypeEnumTypeTransformer().decode(value);

  static List<CreateGroupRequestDataTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateGroupRequestDataTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateGroupRequestDataTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateGroupRequestDataTypeEnum] to String,
/// and [decode] dynamic data back to [CreateGroupRequestDataTypeEnum].
class CreateGroupRequestDataTypeEnumTypeTransformer {
  factory CreateGroupRequestDataTypeEnumTypeTransformer() => _instance ??= const CreateGroupRequestDataTypeEnumTypeTransformer._();

  const CreateGroupRequestDataTypeEnumTypeTransformer._();

  String encode(CreateGroupRequestDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateGroupRequestDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateGroupRequestDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'groups': return CreateGroupRequestDataTypeEnum.groups;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateGroupRequestDataTypeEnumTypeTransformer] instance.
  static CreateGroupRequestDataTypeEnumTypeTransformer? _instance;
}


