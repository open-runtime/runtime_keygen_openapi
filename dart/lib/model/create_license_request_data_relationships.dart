//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateLicenseRequestDataRelationships {
  /// Returns a new [CreateLicenseRequestDataRelationships] instance.
  CreateLicenseRequestDataRelationships({
    required this.policy,
    this.group,
    this.user,
  });

  CreateLicenseRequestDataRelationshipsPolicy policy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateLicenseRequestDataRelationshipsGroup? group;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateLicenseRequestDataRelationshipsUser? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateLicenseRequestDataRelationships &&
    other.policy == policy &&
    other.group == group &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (policy.hashCode) +
    (group == null ? 0 : group!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'CreateLicenseRequestDataRelationships[policy=$policy, group=$group, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'policy'] = this.policy;
    if (this.group != null) {
      json[r'group'] = this.group;
    } else {
      json[r'group'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [CreateLicenseRequestDataRelationships] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateLicenseRequestDataRelationships? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateLicenseRequestDataRelationships[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateLicenseRequestDataRelationships[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateLicenseRequestDataRelationships(
        policy: CreateLicenseRequestDataRelationshipsPolicy.fromJson(json[r'policy'])!,
        group: CreateLicenseRequestDataRelationshipsGroup.fromJson(json[r'group']),
        user: CreateLicenseRequestDataRelationshipsUser.fromJson(json[r'user']),
      );
    }
    return null;
  }

  static List<CreateLicenseRequestDataRelationships> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLicenseRequestDataRelationships>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLicenseRequestDataRelationships.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateLicenseRequestDataRelationships> mapFromJson(dynamic json) {
    final map = <String, CreateLicenseRequestDataRelationships>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateLicenseRequestDataRelationships.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateLicenseRequestDataRelationships-objects as value to a dart map
  static Map<String, List<CreateLicenseRequestDataRelationships>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateLicenseRequestDataRelationships>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateLicenseRequestDataRelationships.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'policy',
  };
}

