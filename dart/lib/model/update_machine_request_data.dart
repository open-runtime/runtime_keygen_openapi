//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateMachineRequestData {
  /// Returns a new [UpdateMachineRequestData] instance.
  UpdateMachineRequestData({
    required this.type,
    required this.attributes,
  });

  UpdateMachineRequestDataTypeEnum type;

  UpdateMachineRequestDataAttributes attributes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateMachineRequestData &&
    other.type == type &&
    other.attributes == attributes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (attributes.hashCode);

  @override
  String toString() => 'UpdateMachineRequestData[type=$type, attributes=$attributes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
    return json;
  }

  /// Returns a new [UpdateMachineRequestData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateMachineRequestData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateMachineRequestData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateMachineRequestData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateMachineRequestData(
        type: UpdateMachineRequestDataTypeEnum.fromJson(json[r'type'])!,
        attributes: UpdateMachineRequestDataAttributes.fromJson(json[r'attributes'])!,
      );
    }
    return null;
  }

  static List<UpdateMachineRequestData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateMachineRequestData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateMachineRequestData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateMachineRequestData> mapFromJson(dynamic json) {
    final map = <String, UpdateMachineRequestData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateMachineRequestData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateMachineRequestData-objects as value to a dart map
  static Map<String, List<UpdateMachineRequestData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateMachineRequestData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateMachineRequestData.listFromJson(entry.value, growable: growable,);
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


class UpdateMachineRequestDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateMachineRequestDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const machines = UpdateMachineRequestDataTypeEnum._(r'machines');

  /// List of all possible values in this [enum][UpdateMachineRequestDataTypeEnum].
  static const values = <UpdateMachineRequestDataTypeEnum>[
    machines,
  ];

  static UpdateMachineRequestDataTypeEnum? fromJson(dynamic value) => UpdateMachineRequestDataTypeEnumTypeTransformer().decode(value);

  static List<UpdateMachineRequestDataTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateMachineRequestDataTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateMachineRequestDataTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateMachineRequestDataTypeEnum] to String,
/// and [decode] dynamic data back to [UpdateMachineRequestDataTypeEnum].
class UpdateMachineRequestDataTypeEnumTypeTransformer {
  factory UpdateMachineRequestDataTypeEnumTypeTransformer() => _instance ??= const UpdateMachineRequestDataTypeEnumTypeTransformer._();

  const UpdateMachineRequestDataTypeEnumTypeTransformer._();

  String encode(UpdateMachineRequestDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateMachineRequestDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateMachineRequestDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'machines': return UpdateMachineRequestDataTypeEnum.machines;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateMachineRequestDataTypeEnumTypeTransformer] instance.
  static UpdateMachineRequestDataTypeEnumTypeTransformer? _instance;
}


