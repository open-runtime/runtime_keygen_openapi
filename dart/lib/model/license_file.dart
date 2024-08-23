//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LicenseFile {
  /// Returns a new [LicenseFile] instance.
  LicenseFile({
    required this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  String id;

  LicenseFileTypeEnum type;

  LicenseFileAttributes attributes;

  LicenseFileRelationships relationships;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseFile &&
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
  String toString() => 'LicenseFile[id=$id, type=$type, attributes=$attributes, relationships=$relationships]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
      json[r'relationships'] = this.relationships;
    return json;
  }

  /// Returns a new [LicenseFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseFile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicenseFile[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicenseFile[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicenseFile(
        id: mapValueOfType<String>(json, r'id')!,
        type: LicenseFileTypeEnum.fromJson(json[r'type'])!,
        attributes: LicenseFileAttributes.fromJson(json[r'attributes'])!,
        relationships: LicenseFileRelationships.fromJson(json[r'relationships'])!,
      );
    }
    return null;
  }

  static List<LicenseFile> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseFile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseFile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseFile> mapFromJson(dynamic json) {
    final map = <String, LicenseFile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseFile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseFile-objects as value to a dart map
  static Map<String, List<LicenseFile>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseFile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicenseFile.listFromJson(entry.value, growable: growable,);
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


class LicenseFileTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const LicenseFileTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const licenseFiles = LicenseFileTypeEnum._(r'license-files');

  /// List of all possible values in this [enum][LicenseFileTypeEnum].
  static const values = <LicenseFileTypeEnum>[
    licenseFiles,
  ];

  static LicenseFileTypeEnum? fromJson(dynamic value) => LicenseFileTypeEnumTypeTransformer().decode(value);

  static List<LicenseFileTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseFileTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseFileTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LicenseFileTypeEnum] to String,
/// and [decode] dynamic data back to [LicenseFileTypeEnum].
class LicenseFileTypeEnumTypeTransformer {
  factory LicenseFileTypeEnumTypeTransformer() => _instance ??= const LicenseFileTypeEnumTypeTransformer._();

  const LicenseFileTypeEnumTypeTransformer._();

  String encode(LicenseFileTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LicenseFileTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LicenseFileTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'license-files': return LicenseFileTypeEnum.licenseFiles;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LicenseFileTypeEnumTypeTransformer] instance.
  static LicenseFileTypeEnumTypeTransformer? _instance;
}


