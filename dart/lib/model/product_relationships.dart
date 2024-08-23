//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductRelationships {
  /// Returns a new [ProductRelationships] instance.
  ProductRelationships({
    required this.account,
    required this.policies,
    required this.licenses,
    required this.machines,
    required this.users,
    required this.tokens,
  });

  ProductRelationshipsAccount account;

  ProductRelationshipsPolicies policies;

  ProductRelationshipsLicenses licenses;

  ProductRelationshipsMachines machines;

  ProductRelationshipsUsers users;

  ProductRelationshipsTokens tokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductRelationships &&
    other.account == account &&
    other.policies == policies &&
    other.licenses == licenses &&
    other.machines == machines &&
    other.users == users &&
    other.tokens == tokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account.hashCode) +
    (policies.hashCode) +
    (licenses.hashCode) +
    (machines.hashCode) +
    (users.hashCode) +
    (tokens.hashCode);

  @override
  String toString() => 'ProductRelationships[account=$account, policies=$policies, licenses=$licenses, machines=$machines, users=$users, tokens=$tokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account'] = this.account;
      json[r'policies'] = this.policies;
      json[r'licenses'] = this.licenses;
      json[r'machines'] = this.machines;
      json[r'users'] = this.users;
      json[r'tokens'] = this.tokens;
    return json;
  }

  /// Returns a new [ProductRelationships] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductRelationships? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductRelationships[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductRelationships[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductRelationships(
        account: ProductRelationshipsAccount.fromJson(json[r'account'])!,
        policies: ProductRelationshipsPolicies.fromJson(json[r'policies'])!,
        licenses: ProductRelationshipsLicenses.fromJson(json[r'licenses'])!,
        machines: ProductRelationshipsMachines.fromJson(json[r'machines'])!,
        users: ProductRelationshipsUsers.fromJson(json[r'users'])!,
        tokens: ProductRelationshipsTokens.fromJson(json[r'tokens'])!,
      );
    }
    return null;
  }

  static List<ProductRelationships> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductRelationships>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductRelationships.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductRelationships> mapFromJson(dynamic json) {
    final map = <String, ProductRelationships>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductRelationships.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductRelationships-objects as value to a dart map
  static Map<String, List<ProductRelationships>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductRelationships>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductRelationships.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'policies',
    'licenses',
    'machines',
    'users',
    'tokens',
  };
}

