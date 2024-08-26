//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SecondFactorAttributes {
  /// Returns a new [SecondFactorAttributes] instance.
  SecondFactorAttributes({
    required this.uri,
    required this.secret,
    required this.enabled,
    required this.created,
    required this.updated,
  });

  /// The provisioning URI of the second factor.
  String uri;

  /// The secret of the second factor.
  String secret;

  /// Whether or not the second factor is enabled.
  bool enabled;

  /// When the second factor was created.
  DateTime created;

  /// When the second factor was last updated.
  DateTime updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SecondFactorAttributes &&
    other.uri == uri &&
    other.secret == secret &&
    other.enabled == enabled &&
    other.created == created &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uri.hashCode) +
    (secret.hashCode) +
    (enabled.hashCode) +
    (created.hashCode) +
    (updated.hashCode);

  @override
  String toString() => 'SecondFactorAttributes[uri=$uri, secret=$secret, enabled=$enabled, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'uri'] = this.uri;
      json[r'secret'] = this.secret;
      json[r'enabled'] = this.enabled;
      json[r'created'] = this.created.toUtc().toIso8601String();
      json[r'updated'] = this.updated.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SecondFactorAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SecondFactorAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SecondFactorAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SecondFactorAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SecondFactorAttributes(
        uri: mapValueOfType<String>(json, r'uri')!,
        secret: mapValueOfType<String>(json, r'secret')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        created: mapDateTime(json, r'created', r'')!,
        updated: mapDateTime(json, r'updated', r'')!,
      );
    }
    return null;
  }

  static List<SecondFactorAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SecondFactorAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SecondFactorAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SecondFactorAttributes> mapFromJson(dynamic json) {
    final map = <String, SecondFactorAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SecondFactorAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SecondFactorAttributes-objects as value to a dart map
  static Map<String, List<SecondFactorAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SecondFactorAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SecondFactorAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'uri',
    'secret',
    'enabled',
    'created',
    'updated',
  };
}

