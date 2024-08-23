//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserRelationships {
  /// Returns a new [UserRelationships] instance.
  UserRelationships({
    required this.account,
    required this.group,
    required this.products,
    required this.licenses,
    required this.machines,
    required this.tokens,
  });

  UserRelationshipsAccount account;

  UserRelationshipsGroup group;

  UserRelationshipsProducts products;

  UserRelationshipsLicenses licenses;

  UserRelationshipsMachines machines;

  UserRelationshipsTokens tokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserRelationships &&
    other.account == account &&
    other.group == group &&
    other.products == products &&
    other.licenses == licenses &&
    other.machines == machines &&
    other.tokens == tokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account.hashCode) +
    (group.hashCode) +
    (products.hashCode) +
    (licenses.hashCode) +
    (machines.hashCode) +
    (tokens.hashCode);

  @override
  String toString() => 'UserRelationships[account=$account, group=$group, products=$products, licenses=$licenses, machines=$machines, tokens=$tokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account'] = this.account;
      json[r'group'] = this.group;
      json[r'products'] = this.products;
      json[r'licenses'] = this.licenses;
      json[r'machines'] = this.machines;
      json[r'tokens'] = this.tokens;
    return json;
  }

  /// Returns a new [UserRelationships] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserRelationships? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserRelationships[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserRelationships[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserRelationships(
        account: UserRelationshipsAccount.fromJson(json[r'account'])!,
        group: UserRelationshipsGroup.fromJson(json[r'group'])!,
        products: UserRelationshipsProducts.fromJson(json[r'products'])!,
        licenses: UserRelationshipsLicenses.fromJson(json[r'licenses'])!,
        machines: UserRelationshipsMachines.fromJson(json[r'machines'])!,
        tokens: UserRelationshipsTokens.fromJson(json[r'tokens'])!,
      );
    }
    return null;
  }

  static List<UserRelationships> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserRelationships>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserRelationships.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserRelationships> mapFromJson(dynamic json) {
    final map = <String, UserRelationships>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserRelationships.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserRelationships-objects as value to a dart map
  static Map<String, List<UserRelationships>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserRelationships>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserRelationships.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'group',
    'products',
    'licenses',
    'machines',
    'tokens',
  };
}

