//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateGroupRequestDataAttributes {
  /// Returns a new [UpdateGroupRequestDataAttributes] instance.
  UpdateGroupRequestDataAttributes({
    this.name,
    this.maxUsers,
    this.maxLicenses,
    this.maxMachines,
    this.metadata,
  });

  /// The name of the group.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The maximum number of users the group can have, collectively.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxUsers;

  /// The maximum number of licenses the group can have, collectively.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxLicenses;

  /// The maximum number of machines the group can have, collectively.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxMachines;

  /// Object containing group metadata.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateGroupRequestDataAttributes &&
    other.name == name &&
    other.maxUsers == maxUsers &&
    other.maxLicenses == maxLicenses &&
    other.maxMachines == maxMachines &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (maxUsers == null ? 0 : maxUsers!.hashCode) +
    (maxLicenses == null ? 0 : maxLicenses!.hashCode) +
    (maxMachines == null ? 0 : maxMachines!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'UpdateGroupRequestDataAttributes[name=$name, maxUsers=$maxUsers, maxLicenses=$maxLicenses, maxMachines=$maxMachines, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
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
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateGroupRequestDataAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateGroupRequestDataAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateGroupRequestDataAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateGroupRequestDataAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateGroupRequestDataAttributes(
        name: mapValueOfType<String>(json, r'name'),
        maxUsers: mapValueOfType<int>(json, r'maxUsers'),
        maxLicenses: mapValueOfType<int>(json, r'maxLicenses'),
        maxMachines: mapValueOfType<int>(json, r'maxMachines'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<UpdateGroupRequestDataAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateGroupRequestDataAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateGroupRequestDataAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateGroupRequestDataAttributes> mapFromJson(dynamic json) {
    final map = <String, UpdateGroupRequestDataAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateGroupRequestDataAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateGroupRequestDataAttributes-objects as value to a dart map
  static Map<String, List<UpdateGroupRequestDataAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateGroupRequestDataAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateGroupRequestDataAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

