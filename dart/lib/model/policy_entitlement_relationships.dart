//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PolicyEntitlementRelationships {
  /// Returns a new [PolicyEntitlementRelationships] instance.
  PolicyEntitlementRelationships({
    required this.account,
    required this.entitlement,
    required this.policy,
  });

  PolicyEntitlementRelationshipsAccount account;

  PolicyEntitlementRelationshipsEntitlement entitlement;

  PolicyEntitlementRelationshipsPolicy policy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PolicyEntitlementRelationships &&
    other.account == account &&
    other.entitlement == entitlement &&
    other.policy == policy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account.hashCode) +
    (entitlement.hashCode) +
    (policy.hashCode);

  @override
  String toString() => 'PolicyEntitlementRelationships[account=$account, entitlement=$entitlement, policy=$policy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account'] = this.account;
      json[r'entitlement'] = this.entitlement;
      json[r'policy'] = this.policy;
    return json;
  }

  /// Returns a new [PolicyEntitlementRelationships] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PolicyEntitlementRelationships? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PolicyEntitlementRelationships[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PolicyEntitlementRelationships[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PolicyEntitlementRelationships(
        account: PolicyEntitlementRelationshipsAccount.fromJson(json[r'account'])!,
        entitlement: PolicyEntitlementRelationshipsEntitlement.fromJson(json[r'entitlement'])!,
        policy: PolicyEntitlementRelationshipsPolicy.fromJson(json[r'policy'])!,
      );
    }
    return null;
  }

  static List<PolicyEntitlementRelationships> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyEntitlementRelationships>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyEntitlementRelationships.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PolicyEntitlementRelationships> mapFromJson(dynamic json) {
    final map = <String, PolicyEntitlementRelationships>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PolicyEntitlementRelationships.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PolicyEntitlementRelationships-objects as value to a dart map
  static Map<String, List<PolicyEntitlementRelationships>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PolicyEntitlementRelationships>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PolicyEntitlementRelationships.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'entitlement',
    'policy',
  };
}

