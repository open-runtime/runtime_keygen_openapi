//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateUserRequestData {
  /// Returns a new [UpdateUserRequestData] instance.
  UpdateUserRequestData({
    required this.type,
    required this.attributes,
  });

  UpdateUserRequestDataTypeEnum type;

  UpdateUserRequestDataAttributes attributes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateUserRequestData &&
    other.type == type &&
    other.attributes == attributes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (attributes.hashCode);

  @override
  String toString() => 'UpdateUserRequestData[type=$type, attributes=$attributes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
    return json;
  }

  /// Returns a new [UpdateUserRequestData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateUserRequestData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateUserRequestData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateUserRequestData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateUserRequestData(
        type: UpdateUserRequestDataTypeEnum.fromJson(json[r'type'])!,
        attributes: UpdateUserRequestDataAttributes.fromJson(json[r'attributes'])!,
      );
    }
    return null;
  }

  static List<UpdateUserRequestData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateUserRequestData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateUserRequestData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateUserRequestData> mapFromJson(dynamic json) {
    final map = <String, UpdateUserRequestData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateUserRequestData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateUserRequestData-objects as value to a dart map
  static Map<String, List<UpdateUserRequestData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateUserRequestData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateUserRequestData.listFromJson(entry.value, growable: growable,);
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


class UpdateUserRequestDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateUserRequestDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const users = UpdateUserRequestDataTypeEnum._(r'users');

  /// List of all possible values in this [enum][UpdateUserRequestDataTypeEnum].
  static const values = <UpdateUserRequestDataTypeEnum>[
    users,
  ];

  static UpdateUserRequestDataTypeEnum? fromJson(dynamic value) => UpdateUserRequestDataTypeEnumTypeTransformer().decode(value);

  static List<UpdateUserRequestDataTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateUserRequestDataTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateUserRequestDataTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateUserRequestDataTypeEnum] to String,
/// and [decode] dynamic data back to [UpdateUserRequestDataTypeEnum].
class UpdateUserRequestDataTypeEnumTypeTransformer {
  factory UpdateUserRequestDataTypeEnumTypeTransformer() => _instance ??= const UpdateUserRequestDataTypeEnumTypeTransformer._();

  const UpdateUserRequestDataTypeEnumTypeTransformer._();

  String encode(UpdateUserRequestDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateUserRequestDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateUserRequestDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'users': return UpdateUserRequestDataTypeEnum.users;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateUserRequestDataTypeEnumTypeTransformer] instance.
  static UpdateUserRequestDataTypeEnumTypeTransformer? _instance;
}


