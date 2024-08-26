//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LicenseFileRelationships {
  /// Returns a new [LicenseFileRelationships] instance.
  LicenseFileRelationships({
    required this.account,
    required this.license,
  });

  PolicyEntitlementRelationshipsAccount account;

  LicenseEntitlementRelationshipsLicense license;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseFileRelationships &&
    other.account == account &&
    other.license == license;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account.hashCode) +
    (license.hashCode);

  @override
  String toString() => 'LicenseFileRelationships[account=$account, license=$license]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account'] = this.account;
      json[r'license'] = this.license;
    return json;
  }

  /// Returns a new [LicenseFileRelationships] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseFileRelationships? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicenseFileRelationships[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicenseFileRelationships[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicenseFileRelationships(
        account: PolicyEntitlementRelationshipsAccount.fromJson(json[r'account'])!,
        license: LicenseEntitlementRelationshipsLicense.fromJson(json[r'license'])!,
      );
    }
    return null;
  }

  static List<LicenseFileRelationships> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseFileRelationships>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseFileRelationships.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseFileRelationships> mapFromJson(dynamic json) {
    final map = <String, LicenseFileRelationships>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseFileRelationships.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseFileRelationships-objects as value to a dart map
  static Map<String, List<LicenseFileRelationships>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseFileRelationships>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicenseFileRelationships.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'license',
  };
}

