//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LicenseFileAttributes {
  /// Returns a new [LicenseFileAttributes] instance.
  LicenseFileAttributes({
    required this.certificate,
    required this.ttl,
    required this.expiry,
    required this.issued,
  });

  String certificate;

  int ttl;

  DateTime expiry;

  DateTime issued;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseFileAttributes &&
    other.certificate == certificate &&
    other.ttl == ttl &&
    other.expiry == expiry &&
    other.issued == issued;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (certificate.hashCode) +
    (ttl.hashCode) +
    (expiry.hashCode) +
    (issued.hashCode);

  @override
  String toString() => 'LicenseFileAttributes[certificate=$certificate, ttl=$ttl, expiry=$expiry, issued=$issued]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'certificate'] = this.certificate;
      json[r'ttl'] = this.ttl;
      json[r'expiry'] = this.expiry.toUtc().toIso8601String();
      json[r'issued'] = this.issued.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [LicenseFileAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseFileAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicenseFileAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicenseFileAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicenseFileAttributes(
        certificate: mapValueOfType<String>(json, r'certificate')!,
        ttl: mapValueOfType<int>(json, r'ttl')!,
        expiry: mapDateTime(json, r'expiry', r'')!,
        issued: mapDateTime(json, r'issued', r'')!,
      );
    }
    return null;
  }

  static List<LicenseFileAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseFileAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseFileAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseFileAttributes> mapFromJson(dynamic json) {
    final map = <String, LicenseFileAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseFileAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseFileAttributes-objects as value to a dart map
  static Map<String, List<LicenseFileAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseFileAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicenseFileAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'certificate',
    'ttl',
    'expiry',
    'issued',
  };
}

