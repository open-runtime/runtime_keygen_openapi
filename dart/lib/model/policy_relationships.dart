//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PolicyRelationships {
  /// Returns a new [PolicyRelationships] instance.
  PolicyRelationships({
    required this.account,
    required this.product,
    required this.pool,
    required this.licenses,
    required this.entitlements,
  });

  PolicyRelationshipsAccount account;

  PolicyRelationshipsProduct product;

  PolicyRelationshipsPool pool;

  PolicyRelationshipsLicenses licenses;

  PolicyRelationshipsEntitlements entitlements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PolicyRelationships &&
    other.account == account &&
    other.product == product &&
    other.pool == pool &&
    other.licenses == licenses &&
    other.entitlements == entitlements;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account.hashCode) +
    (product.hashCode) +
    (pool.hashCode) +
    (licenses.hashCode) +
    (entitlements.hashCode);

  @override
  String toString() => 'PolicyRelationships[account=$account, product=$product, pool=$pool, licenses=$licenses, entitlements=$entitlements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account'] = this.account;
      json[r'product'] = this.product;
      json[r'pool'] = this.pool;
      json[r'licenses'] = this.licenses;
      json[r'entitlements'] = this.entitlements;
    return json;
  }

  /// Returns a new [PolicyRelationships] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PolicyRelationships? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PolicyRelationships[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PolicyRelationships[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PolicyRelationships(
        account: PolicyRelationshipsAccount.fromJson(json[r'account'])!,
        product: PolicyRelationshipsProduct.fromJson(json[r'product'])!,
        pool: PolicyRelationshipsPool.fromJson(json[r'pool'])!,
        licenses: PolicyRelationshipsLicenses.fromJson(json[r'licenses'])!,
        entitlements: PolicyRelationshipsEntitlements.fromJson(json[r'entitlements'])!,
      );
    }
    return null;
  }

  static List<PolicyRelationships> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyRelationships>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyRelationships.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PolicyRelationships> mapFromJson(dynamic json) {
    final map = <String, PolicyRelationships>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PolicyRelationships.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PolicyRelationships-objects as value to a dart map
  static Map<String, List<PolicyRelationships>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PolicyRelationships>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PolicyRelationships.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'product',
    'pool',
    'licenses',
    'entitlements',
  };
}

