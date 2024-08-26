//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateLicenseTokenRequestDataAttributes {
  /// Returns a new [CreateLicenseTokenRequestDataAttributes] instance.
  CreateLicenseTokenRequestDataAttributes({
    this.name,
    this.expiry,
    this.maxActivations,
    this.maxDeactivations,
  });

  /// An optional name for the token.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The timestamp for when the token expires.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiry;

  /// The maximum number of machine activations the token is allowed to perform.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxActivations;

  /// The maximum number of machine deactivations the token is allowed to perform.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxDeactivations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateLicenseTokenRequestDataAttributes &&
    other.name == name &&
    other.expiry == expiry &&
    other.maxActivations == maxActivations &&
    other.maxDeactivations == maxDeactivations;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (expiry == null ? 0 : expiry!.hashCode) +
    (maxActivations == null ? 0 : maxActivations!.hashCode) +
    (maxDeactivations == null ? 0 : maxDeactivations!.hashCode);

  @override
  String toString() => 'CreateLicenseTokenRequestDataAttributes[name=$name, expiry=$expiry, maxActivations=$maxActivations, maxDeactivations=$maxDeactivations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.expiry != null) {
      json[r'expiry'] = this.expiry!.toUtc().toIso8601String();
    } else {
      json[r'expiry'] = null;
    }
    if (this.maxActivations != null) {
      json[r'maxActivations'] = this.maxActivations;
    } else {
      json[r'maxActivations'] = null;
    }
    if (this.maxDeactivations != null) {
      json[r'maxDeactivations'] = this.maxDeactivations;
    } else {
      json[r'maxDeactivations'] = null;
    }
    return json;
  }

  /// Returns a new [CreateLicenseTokenRequestDataAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateLicenseTokenRequestDataAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateLicenseTokenRequestDataAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateLicenseTokenRequestDataAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateLicenseTokenRequestDataAttributes(
        name: mapValueOfType<String>(json, r'name'),
        expiry: mapDateTime(json, r'expiry', r''),
        maxActivations: mapValueOfType<int>(json, r'maxActivations'),
        maxDeactivations: mapValueOfType<int>(json, r'maxDeactivations'),
      );
    }
    return null;
  }

  static List<CreateLicenseTokenRequestDataAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLicenseTokenRequestDataAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLicenseTokenRequestDataAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateLicenseTokenRequestDataAttributes> mapFromJson(dynamic json) {
    final map = <String, CreateLicenseTokenRequestDataAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateLicenseTokenRequestDataAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateLicenseTokenRequestDataAttributes-objects as value to a dart map
  static Map<String, List<CreateLicenseTokenRequestDataAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateLicenseTokenRequestDataAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateLicenseTokenRequestDataAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

