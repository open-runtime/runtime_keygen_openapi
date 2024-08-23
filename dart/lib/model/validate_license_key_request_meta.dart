//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateLicenseKeyRequestMeta {
  /// Returns a new [ValidateLicenseKeyRequestMeta] instance.
  ValidateLicenseKeyRequestMeta({
    required this.key,
    this.nonce,
    this.scope,
  });

  /// The license key to validate. 
  String key;

  /// An arbitrary numerical nonce value that will be echoed back within the signed response body. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nonce;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ValidateLicenseRequestMetaScope? scope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateLicenseKeyRequestMeta &&
    other.key == key &&
    other.nonce == nonce &&
    other.scope == scope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key.hashCode) +
    (nonce == null ? 0 : nonce!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'ValidateLicenseKeyRequestMeta[key=$key, nonce=$nonce, scope=$scope]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'key'] = this.key;
    if (this.nonce != null) {
      json[r'nonce'] = this.nonce;
    } else {
      json[r'nonce'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    return json;
  }

  /// Returns a new [ValidateLicenseKeyRequestMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidateLicenseKeyRequestMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidateLicenseKeyRequestMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidateLicenseKeyRequestMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidateLicenseKeyRequestMeta(
        key: mapValueOfType<String>(json, r'key')!,
        nonce: mapValueOfType<String>(json, r'nonce'),
        scope: ValidateLicenseRequestMetaScope.fromJson(json[r'scope']),
      );
    }
    return null;
  }

  static List<ValidateLicenseKeyRequestMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateLicenseKeyRequestMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateLicenseKeyRequestMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidateLicenseKeyRequestMeta> mapFromJson(dynamic json) {
    final map = <String, ValidateLicenseKeyRequestMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateLicenseKeyRequestMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidateLicenseKeyRequestMeta-objects as value to a dart map
  static Map<String, List<ValidateLicenseKeyRequestMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidateLicenseKeyRequestMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidateLicenseKeyRequestMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
  };
}

