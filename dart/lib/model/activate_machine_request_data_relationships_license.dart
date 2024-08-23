//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ActivateMachineRequestDataRelationshipsLicense {
  /// Returns a new [ActivateMachineRequestDataRelationshipsLicense] instance.
  ActivateMachineRequestDataRelationshipsLicense({
    required this.data,
  });

  ActivateMachineRequestDataRelationshipsLicenseData data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActivateMachineRequestDataRelationshipsLicense &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode);

  @override
  String toString() => 'ActivateMachineRequestDataRelationshipsLicense[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ActivateMachineRequestDataRelationshipsLicense] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActivateMachineRequestDataRelationshipsLicense? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ActivateMachineRequestDataRelationshipsLicense[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ActivateMachineRequestDataRelationshipsLicense[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActivateMachineRequestDataRelationshipsLicense(
        data: ActivateMachineRequestDataRelationshipsLicenseData.fromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<ActivateMachineRequestDataRelationshipsLicense> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActivateMachineRequestDataRelationshipsLicense>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActivateMachineRequestDataRelationshipsLicense.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActivateMachineRequestDataRelationshipsLicense> mapFromJson(dynamic json) {
    final map = <String, ActivateMachineRequestDataRelationshipsLicense>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActivateMachineRequestDataRelationshipsLicense.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActivateMachineRequestDataRelationshipsLicense-objects as value to a dart map
  static Map<String, List<ActivateMachineRequestDataRelationshipsLicense>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActivateMachineRequestDataRelationshipsLicense>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActivateMachineRequestDataRelationshipsLicense.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
  };
}

