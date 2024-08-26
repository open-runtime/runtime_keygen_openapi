//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ActivateMachineRequestDataAttributes {
  /// Returns a new [ActivateMachineRequestDataAttributes] instance.
  ActivateMachineRequestDataAttributes({
    required this.fingerprint,
    this.cores,
    this.name,
    this.ip,
    this.hostname,
    this.platform,
    this.metadata,
  });

  /// The fingerprint of the machine.
  String fingerprint;

  /// The number of CPU cores for the machine.
  int? cores;

  /// The human-readable name of the machine.
  String? name;

  /// The IP of the machine.
  String? ip;

  /// The hostname of the machine.
  String? hostname;

  /// The platform of the machine.
  String? platform;

  /// Object containing machine metadata.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActivateMachineRequestDataAttributes &&
    other.fingerprint == fingerprint &&
    other.cores == cores &&
    other.name == name &&
    other.ip == ip &&
    other.hostname == hostname &&
    other.platform == platform &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fingerprint.hashCode) +
    (cores == null ? 0 : cores!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (ip == null ? 0 : ip!.hashCode) +
    (hostname == null ? 0 : hostname!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'ActivateMachineRequestDataAttributes[fingerprint=$fingerprint, cores=$cores, name=$name, ip=$ip, hostname=$hostname, platform=$platform, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fingerprint'] = this.fingerprint;
    if (this.cores != null) {
      json[r'cores'] = this.cores;
    } else {
      json[r'cores'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
    if (this.hostname != null) {
      json[r'hostname'] = this.hostname;
    } else {
      json[r'hostname'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [ActivateMachineRequestDataAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActivateMachineRequestDataAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ActivateMachineRequestDataAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ActivateMachineRequestDataAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActivateMachineRequestDataAttributes(
        fingerprint: mapValueOfType<String>(json, r'fingerprint')!,
        cores: mapValueOfType<int>(json, r'cores'),
        name: mapValueOfType<String>(json, r'name'),
        ip: mapValueOfType<String>(json, r'ip'),
        hostname: mapValueOfType<String>(json, r'hostname'),
        platform: mapValueOfType<String>(json, r'platform'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<ActivateMachineRequestDataAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActivateMachineRequestDataAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActivateMachineRequestDataAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActivateMachineRequestDataAttributes> mapFromJson(dynamic json) {
    final map = <String, ActivateMachineRequestDataAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActivateMachineRequestDataAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActivateMachineRequestDataAttributes-objects as value to a dart map
  static Map<String, List<ActivateMachineRequestDataAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActivateMachineRequestDataAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActivateMachineRequestDataAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fingerprint',
  };
}

