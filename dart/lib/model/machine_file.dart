//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MachineFile {
  /// Returns a new [MachineFile] instance.
  MachineFile({
    required this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  String id;

  MachineFileTypeEnum type;

  LicenseFileAttributes attributes;

  MachineFileRelationships relationships;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MachineFile &&
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
  String toString() => 'MachineFile[id=$id, type=$type, attributes=$attributes, relationships=$relationships]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
      json[r'relationships'] = this.relationships;
    return json;
  }

  /// Returns a new [MachineFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MachineFile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MachineFile[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MachineFile[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MachineFile(
        id: mapValueOfType<String>(json, r'id')!,
        type: MachineFileTypeEnum.fromJson(json[r'type'])!,
        attributes: LicenseFileAttributes.fromJson(json[r'attributes'])!,
        relationships: MachineFileRelationships.fromJson(json[r'relationships'])!,
      );
    }
    return null;
  }

  static List<MachineFile> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MachineFile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MachineFile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MachineFile> mapFromJson(dynamic json) {
    final map = <String, MachineFile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MachineFile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MachineFile-objects as value to a dart map
  static Map<String, List<MachineFile>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MachineFile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MachineFile.listFromJson(entry.value, growable: growable,);
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


class MachineFileTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MachineFileTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const machineFiles = MachineFileTypeEnum._(r'machine-files');

  /// List of all possible values in this [enum][MachineFileTypeEnum].
  static const values = <MachineFileTypeEnum>[
    machineFiles,
  ];

  static MachineFileTypeEnum? fromJson(dynamic value) => MachineFileTypeEnumTypeTransformer().decode(value);

  static List<MachineFileTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MachineFileTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MachineFileTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MachineFileTypeEnum] to String,
/// and [decode] dynamic data back to [MachineFileTypeEnum].
class MachineFileTypeEnumTypeTransformer {
  factory MachineFileTypeEnumTypeTransformer() => _instance ??= const MachineFileTypeEnumTypeTransformer._();

  const MachineFileTypeEnumTypeTransformer._();

  String encode(MachineFileTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MachineFileTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MachineFileTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'machine-files': return MachineFileTypeEnum.machineFiles;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MachineFileTypeEnumTypeTransformer] instance.
  static MachineFileTypeEnumTypeTransformer? _instance;
}


