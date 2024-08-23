//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EntitlementAttributes {
  /// Returns a new [EntitlementAttributes] instance.
  EntitlementAttributes({
    required this.name,
    required this.code,
    required this.created,
    required this.updated,
    this.metadata = const {},
  });

  /// The name of the entitlement.
  String name;

  /// The unique code for the entitlement. This can be used within license validation requests to assert a license possesses a given entitlement. 
  String code;

  /// When the entitlement was created.
  DateTime created;

  /// When the entitlement was last updated.
  DateTime updated;

  /// Object containing entitlement metadata.
  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntitlementAttributes &&
    other.name == name &&
    other.code == code &&
    other.created == created &&
    other.updated == updated &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (code.hashCode) +
    (created.hashCode) +
    (updated.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'EntitlementAttributes[name=$name, code=$code, created=$created, updated=$updated, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'code'] = this.code;
      json[r'created'] = this.created.toUtc().toIso8601String();
      json[r'updated'] = this.updated.toUtc().toIso8601String();
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [EntitlementAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntitlementAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntitlementAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntitlementAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntitlementAttributes(
        name: mapValueOfType<String>(json, r'name')!,
        code: mapValueOfType<String>(json, r'code')!,
        created: mapDateTime(json, r'created', r'')!,
        updated: mapDateTime(json, r'updated', r'')!,
        metadata: mapCastOfType<String, Object>(json, r'metadata')!,
      );
    }
    return null;
  }

  static List<EntitlementAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntitlementAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntitlementAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntitlementAttributes> mapFromJson(dynamic json) {
    final map = <String, EntitlementAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntitlementAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntitlementAttributes-objects as value to a dart map
  static Map<String, List<EntitlementAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntitlementAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntitlementAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'code',
    'created',
    'updated',
    'metadata',
  };
}

