//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PolicyEntitlement {
  /// Returns a new [PolicyEntitlement] instance.
  PolicyEntitlement({
    required this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
    required this.links,
  });

  String id;

  PolicyEntitlementTypeEnum type;

  PolicyEntitlementAttributes attributes;

  PolicyEntitlementRelationships relationships;

  SelfLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PolicyEntitlement &&
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
  String toString() => 'PolicyEntitlement[id=$id, type=$type, attributes=$attributes, relationships=$relationships, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
      json[r'relationships'] = this.relationships;
      json[r'links'] = this.links;
    return json;
  }

  /// Returns a new [PolicyEntitlement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PolicyEntitlement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PolicyEntitlement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PolicyEntitlement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PolicyEntitlement(
        id: mapValueOfType<String>(json, r'id')!,
        type: PolicyEntitlementTypeEnum.fromJson(json[r'type'])!,
        attributes: PolicyEntitlementAttributes.fromJson(json[r'attributes'])!,
        relationships: PolicyEntitlementRelationships.fromJson(json[r'relationships'])!,
        links: SelfLinks.fromJson(json[r'links'])!,
      );
    }
    return null;
  }

  static List<PolicyEntitlement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyEntitlement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyEntitlement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PolicyEntitlement> mapFromJson(dynamic json) {
    final map = <String, PolicyEntitlement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PolicyEntitlement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PolicyEntitlement-objects as value to a dart map
  static Map<String, List<PolicyEntitlement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PolicyEntitlement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PolicyEntitlement.listFromJson(entry.value, growable: growable,);
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


class PolicyEntitlementTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyEntitlementTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const policyEntitlements = PolicyEntitlementTypeEnum._(r'policy-entitlements');

  /// List of all possible values in this [enum][PolicyEntitlementTypeEnum].
  static const values = <PolicyEntitlementTypeEnum>[
    policyEntitlements,
  ];

  static PolicyEntitlementTypeEnum? fromJson(dynamic value) => PolicyEntitlementTypeEnumTypeTransformer().decode(value);

  static List<PolicyEntitlementTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyEntitlementTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyEntitlementTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyEntitlementTypeEnum] to String,
/// and [decode] dynamic data back to [PolicyEntitlementTypeEnum].
class PolicyEntitlementTypeEnumTypeTransformer {
  factory PolicyEntitlementTypeEnumTypeTransformer() => _instance ??= const PolicyEntitlementTypeEnumTypeTransformer._();

  const PolicyEntitlementTypeEnumTypeTransformer._();

  String encode(PolicyEntitlementTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyEntitlementTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyEntitlementTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'policy-entitlements': return PolicyEntitlementTypeEnum.policyEntitlements;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyEntitlementTypeEnumTypeTransformer] instance.
  static PolicyEntitlementTypeEnumTypeTransformer? _instance;
}


