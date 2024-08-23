//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateLicenseResponseMeta {
  /// Returns a new [ValidateLicenseResponseMeta] instance.
  ValidateLicenseResponseMeta({
    required this.ts,
    required this.valid,
    required this.detail,
    required this.code,
    this.nonce,
    this.scope,
  });

  DateTime ts;

  bool valid;

  String detail;

  String code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nonce;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ValidateLicenseResponseMetaScope? scope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateLicenseResponseMeta &&
    other.ts == ts &&
    other.valid == valid &&
    other.detail == detail &&
    other.code == code &&
    other.nonce == nonce &&
    other.scope == scope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ts.hashCode) +
    (valid.hashCode) +
    (detail.hashCode) +
    (code.hashCode) +
    (nonce == null ? 0 : nonce!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'ValidateLicenseResponseMeta[ts=$ts, valid=$valid, detail=$detail, code=$code, nonce=$nonce, scope=$scope]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ts'] = this.ts.toUtc().toIso8601String();
      json[r'valid'] = this.valid;
      json[r'detail'] = this.detail;
      json[r'code'] = this.code;
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

  /// Returns a new [ValidateLicenseResponseMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidateLicenseResponseMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidateLicenseResponseMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidateLicenseResponseMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidateLicenseResponseMeta(
        ts: mapDateTime(json, r'ts', r'')!,
        valid: mapValueOfType<bool>(json, r'valid')!,
        detail: mapValueOfType<String>(json, r'detail')!,
        code: mapValueOfType<String>(json, r'code')!,
        nonce: mapValueOfType<int>(json, r'nonce'),
        scope: ValidateLicenseResponseMetaScope.fromJson(json[r'scope']),
      );
    }
    return null;
  }

  static List<ValidateLicenseResponseMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateLicenseResponseMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateLicenseResponseMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidateLicenseResponseMeta> mapFromJson(dynamic json) {
    final map = <String, ValidateLicenseResponseMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateLicenseResponseMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidateLicenseResponseMeta-objects as value to a dart map
  static Map<String, List<ValidateLicenseResponseMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidateLicenseResponseMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidateLicenseResponseMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ts',
    'valid',
    'detail',
    'code',
  };
}

