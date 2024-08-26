//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupRelationships {
  /// Returns a new [GroupRelationships] instance.
  GroupRelationships({
    required this.account,
    required this.owners,
    required this.users,
    required this.licenses,
    required this.machines,
  });

  GroupRelationshipsAccount account;

  GroupRelationshipsOwners owners;

  GroupRelationshipsUsers users;

  GroupRelationshipsLicenses licenses;

  GroupRelationshipsMachines machines;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupRelationships &&
    other.account == account &&
    other.owners == owners &&
    other.users == users &&
    other.licenses == licenses &&
    other.machines == machines;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account.hashCode) +
    (owners.hashCode) +
    (users.hashCode) +
    (licenses.hashCode) +
    (machines.hashCode);

  @override
  String toString() => 'GroupRelationships[account=$account, owners=$owners, users=$users, licenses=$licenses, machines=$machines]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account'] = this.account;
      json[r'owners'] = this.owners;
      json[r'users'] = this.users;
      json[r'licenses'] = this.licenses;
      json[r'machines'] = this.machines;
    return json;
  }

  /// Returns a new [GroupRelationships] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupRelationships? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupRelationships[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupRelationships[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupRelationships(
        account: GroupRelationshipsAccount.fromJson(json[r'account'])!,
        owners: GroupRelationshipsOwners.fromJson(json[r'owners'])!,
        users: GroupRelationshipsUsers.fromJson(json[r'users'])!,
        licenses: GroupRelationshipsLicenses.fromJson(json[r'licenses'])!,
        machines: GroupRelationshipsMachines.fromJson(json[r'machines'])!,
      );
    }
    return null;
  }

  static List<GroupRelationships> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupRelationships>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupRelationships.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupRelationships> mapFromJson(dynamic json) {
    final map = <String, GroupRelationships>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupRelationships.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupRelationships-objects as value to a dart map
  static Map<String, List<GroupRelationships>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupRelationships>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GroupRelationships.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'owners',
    'users',
    'licenses',
    'machines',
  };
}

