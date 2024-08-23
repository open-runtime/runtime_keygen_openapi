//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LicenseRelationships {
  /// Returns a new [LicenseRelationships] instance.
  LicenseRelationships({
    required this.account,
    required this.product,
    required this.policy,
    required this.group,
    this.user,
    required this.machines,
  });

  LicenseRelationshipsAccount account;

  LicenseRelationshipsProduct product;

  LicenseRelationshipsPolicy policy;

  LicenseRelationshipsGroup group;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LicenseRelationshipsUser? user;

  LicenseRelationshipsMachines machines;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseRelationships &&
    other.account == account &&
    other.product == product &&
    other.policy == policy &&
    other.group == group &&
    other.user == user &&
    other.machines == machines;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account.hashCode) +
    (product.hashCode) +
    (policy.hashCode) +
    (group.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (machines.hashCode);

  @override
  String toString() => 'LicenseRelationships[account=$account, product=$product, policy=$policy, group=$group, user=$user, machines=$machines]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account'] = this.account;
      json[r'product'] = this.product;
      json[r'policy'] = this.policy;
      json[r'group'] = this.group;
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
      json[r'machines'] = this.machines;
    return json;
  }

  /// Returns a new [LicenseRelationships] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseRelationships? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicenseRelationships[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicenseRelationships[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicenseRelationships(
        account: LicenseRelationshipsAccount.fromJson(json[r'account'])!,
        product: LicenseRelationshipsProduct.fromJson(json[r'product'])!,
        policy: LicenseRelationshipsPolicy.fromJson(json[r'policy'])!,
        group: LicenseRelationshipsGroup.fromJson(json[r'group'])!,
        user: LicenseRelationshipsUser.fromJson(json[r'user']),
        machines: LicenseRelationshipsMachines.fromJson(json[r'machines'])!,
      );
    }
    return null;
  }

  static List<LicenseRelationships> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseRelationships>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseRelationships.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseRelationships> mapFromJson(dynamic json) {
    final map = <String, LicenseRelationships>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseRelationships.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseRelationships-objects as value to a dart map
  static Map<String, List<LicenseRelationships>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseRelationships>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicenseRelationships.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'product',
    'policy',
    'group',
    'machines',
  };
}

