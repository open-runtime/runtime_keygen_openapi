//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LicenseEntitlement {
  /// Returns a new [LicenseEntitlement] instance.
  LicenseEntitlement({
    required this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
    required this.links,
  });

  String id;

  LicenseEntitlementTypeEnum type;

  PolicyEntitlementAttributes attributes;

  LicenseEntitlementRelationships relationships;

  SelfLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseEntitlement &&
    other.id == id &&
    other.type == type &&
    other.attributes == attributes &&
    other.relationships == relationships &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (attributes.hashCode) +
    (relationships.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'LicenseEntitlement[id=$id, type=$type, attributes=$attributes, relationships=$relationships, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
      json[r'relationships'] = this.relationships;
      json[r'links'] = this.links;
    return json;
  }

  /// Returns a new [LicenseEntitlement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseEntitlement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicenseEntitlement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicenseEntitlement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicenseEntitlement(
        id: mapValueOfType<String>(json, r'id')!,
        type: LicenseEntitlementTypeEnum.fromJson(json[r'type'])!,
        attributes: PolicyEntitlementAttributes.fromJson(json[r'attributes'])!,
        relationships: LicenseEntitlementRelationships.fromJson(json[r'relationships'])!,
        links: SelfLinks.fromJson(json[r'links'])!,
      );
    }
    return null;
  }

  static List<LicenseEntitlement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseEntitlement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseEntitlement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseEntitlement> mapFromJson(dynamic json) {
    final map = <String, LicenseEntitlement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseEntitlement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseEntitlement-objects as value to a dart map
  static Map<String, List<LicenseEntitlement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseEntitlement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicenseEntitlement.listFromJson(entry.value, growable: growable,);
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
    'links',
  };
}


class LicenseEntitlementTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const LicenseEntitlementTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const licenseEntitlements = LicenseEntitlementTypeEnum._(r'license-entitlements');

  /// List of all possible values in this [enum][LicenseEntitlementTypeEnum].
  static const values = <LicenseEntitlementTypeEnum>[
    licenseEntitlements,
  ];

  static LicenseEntitlementTypeEnum? fromJson(dynamic value) => LicenseEntitlementTypeEnumTypeTransformer().decode(value);

  static List<LicenseEntitlementTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseEntitlementTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseEntitlementTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LicenseEntitlementTypeEnum] to String,
/// and [decode] dynamic data back to [LicenseEntitlementTypeEnum].
class LicenseEntitlementTypeEnumTypeTransformer {
  factory LicenseEntitlementTypeEnumTypeTransformer() => _instance ??= const LicenseEntitlementTypeEnumTypeTransformer._();

  const LicenseEntitlementTypeEnumTypeTransformer._();

  String encode(LicenseEntitlementTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LicenseEntitlementTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LicenseEntitlementTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'license-entitlements': return LicenseEntitlementTypeEnum.licenseEntitlements;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LicenseEntitlementTypeEnumTypeTransformer] instance.
  static LicenseEntitlementTypeEnumTypeTransformer? _instance;
}


