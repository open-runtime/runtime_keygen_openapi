//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupAttributes {
  /// Returns a new [GroupAttributes] instance.
  GroupAttributes({
    required this.name,
    required this.maxUsers,
    required this.maxLicenses,
    required this.maxMachines,
    required this.created,
    required this.updated,
    this.metadata = const {},
  });

  /// The name of the group.
  String name;

  /// The maximum number of users the group can have, collectively. When `null`, an unlimited number of users may be in the group. Must be a number greater than 0. 
  int? maxUsers;

  /// The maximum number of licenses the group can have, collectively. When `null`, an unlimited number of licenses may be in the group. Must be a number greater than 0. 
  int? maxLicenses;

  /// The maximum number of machines the group can have, collectively. When `null`, an unlimited number of machines may be in the group. Must be a number greater than 0. 
  int? maxMachines;

  /// When the group was created.
  DateTime created;

  /// When the group was last updated.
  DateTime updated;

  /// Object containing group metadata.
  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupAttributes &&
    other.name == name &&
    other.maxUsers == maxUsers &&
    other.maxLicenses == maxLicenses &&
    other.maxMachines == maxMachines &&
    other.created == created &&
    other.updated == updated &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (maxUsers == null ? 0 : maxUsers!.hashCode) +
    (maxLicenses == null ? 0 : maxLicenses!.hashCode) +
    (maxMachines == null ? 0 : maxMachines!.hashCode) +
    (created.hashCode) +
    (updated.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'GroupAttributes[name=$name, maxUsers=$maxUsers, maxLicenses=$maxLicenses, maxMachines=$maxMachines, created=$created, updated=$updated, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.maxUsers != null) {
      json[r'maxUsers'] = this.maxUsers;
    } else {
      json[r'maxUsers'] = null;
    }
    if (this.maxLicenses != null) {
      json[r'maxLicenses'] = this.maxLicenses;
    } else {
      json[r'maxLicenses'] = null;
    }
    if (this.maxMachines != null) {
      json[r'maxMachines'] = this.maxMachines;
    } else {
      json[r'maxMachines'] = null;
    }
      json[r'created'] = this.created.toUtc().toIso8601String();
      json[r'updated'] = this.updated.toUtc().toIso8601String();
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [GroupAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupAttributes(
        name: mapValueOfType<String>(json, r'name')!,
        maxUsers: mapValueOfType<int>(json, r'maxUsers'),
        maxLicenses: mapValueOfType<int>(json, r'maxLicenses'),
        maxMachines: mapValueOfType<int>(json, r'maxMachines'),
        created: mapDateTime(json, r'created', r'')!,
        updated: mapDateTime(json, r'updated', r'')!,
        metadata: mapCastOfType<String, Object>(json, r'metadata')!,
      );
    }
    return null;
  }

  static List<GroupAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupAttributes> mapFromJson(dynamic json) {
    final map = <String, GroupAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupAttributes-objects as value to a dart map
  static Map<String, List<GroupAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GroupAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'maxUsers',
    'maxLicenses',
    'maxMachines',
    'created',
    'updated',
    'metadata',
  };
}

