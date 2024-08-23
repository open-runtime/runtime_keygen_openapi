//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateLicenseRequestDataAttributes {
  /// Returns a new [UpdateLicenseRequestDataAttributes] instance.
  UpdateLicenseRequestDataAttributes({
    this.name,
    this.expiry,
    this.maxMachines,
    this.maxProcesses,
    this.maxCores,
    this.maxUses,
    this.protected,
    this.suspended,
    this.metadata,
  });

  /// The name of the license.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// When the license will expire.
  DateTime? expiry;

  /// The maximum number of machines the license can have associated with it.
  int? maxMachines;

  /// The maximum number of machine processes the license can have associated with it.
  int? maxProcesses;

  /// The maximum number of machine CPU cores the license can have associated with it.
  int? maxCores;

  /// The maximum number of uses the license is allowed to have.
  int? maxUses;

  /// Whether or not the license is protected.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? protected;

  /// Whether or not the license is suspended.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? suspended;

  /// Object containing license metadata.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateLicenseRequestDataAttributes &&
    other.name == name &&
    other.expiry == expiry &&
    other.maxMachines == maxMachines &&
    other.maxProcesses == maxProcesses &&
    other.maxCores == maxCores &&
    other.maxUses == maxUses &&
    other.protected == protected &&
    other.suspended == suspended &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (expiry == null ? 0 : expiry!.hashCode) +
    (maxMachines == null ? 0 : maxMachines!.hashCode) +
    (maxProcesses == null ? 0 : maxProcesses!.hashCode) +
    (maxCores == null ? 0 : maxCores!.hashCode) +
    (maxUses == null ? 0 : maxUses!.hashCode) +
    (protected == null ? 0 : protected!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'UpdateLicenseRequestDataAttributes[name=$name, expiry=$expiry, maxMachines=$maxMachines, maxProcesses=$maxProcesses, maxCores=$maxCores, maxUses=$maxUses, protected=$protected, suspended=$suspended, metadata=$metadata]';

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
    if (this.maxMachines != null) {
      json[r'maxMachines'] = this.maxMachines;
    } else {
      json[r'maxMachines'] = null;
    }
    if (this.maxProcesses != null) {
      json[r'maxProcesses'] = this.maxProcesses;
    } else {
      json[r'maxProcesses'] = null;
    }
    if (this.maxCores != null) {
      json[r'maxCores'] = this.maxCores;
    } else {
      json[r'maxCores'] = null;
    }
    if (this.maxUses != null) {
      json[r'maxUses'] = this.maxUses;
    } else {
      json[r'maxUses'] = null;
    }
    if (this.protected != null) {
      json[r'protected'] = this.protected;
    } else {
      json[r'protected'] = null;
    }
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateLicenseRequestDataAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateLicenseRequestDataAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateLicenseRequestDataAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateLicenseRequestDataAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateLicenseRequestDataAttributes(
        name: mapValueOfType<String>(json, r'name'),
        expiry: mapDateTime(json, r'expiry', r''),
        maxMachines: mapValueOfType<int>(json, r'maxMachines'),
        maxProcesses: mapValueOfType<int>(json, r'maxProcesses'),
        maxCores: mapValueOfType<int>(json, r'maxCores'),
        maxUses: mapValueOfType<int>(json, r'maxUses'),
        protected: mapValueOfType<bool>(json, r'protected'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<UpdateLicenseRequestDataAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateLicenseRequestDataAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateLicenseRequestDataAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateLicenseRequestDataAttributes> mapFromJson(dynamic json) {
    final map = <String, UpdateLicenseRequestDataAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateLicenseRequestDataAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateLicenseRequestDataAttributes-objects as value to a dart map
  static Map<String, List<UpdateLicenseRequestDataAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateLicenseRequestDataAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateLicenseRequestDataAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

