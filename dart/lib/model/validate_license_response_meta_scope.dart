//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateLicenseResponseMetaScope {
  /// Returns a new [ValidateLicenseResponseMetaScope] instance.
  ValidateLicenseResponseMetaScope({
    this.product,
    this.policy,
    this.fingerprints = const [],
    this.fingerprint,
    this.machine,
    this.user,
    this.entitlements = const [],
    this.checksum,
    this.version,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? product;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? policy;

  List<String> fingerprints;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fingerprint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? machine;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  List<String> entitlements;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? checksum;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateLicenseResponseMetaScope &&
    other.product == product &&
    other.policy == policy &&
    _deepEquality.equals(other.fingerprints, fingerprints) &&
    other.fingerprint == fingerprint &&
    other.machine == machine &&
    other.user == user &&
    _deepEquality.equals(other.entitlements, entitlements) &&
    other.checksum == checksum &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (product == null ? 0 : product!.hashCode) +
    (policy == null ? 0 : policy!.hashCode) +
    (fingerprints.hashCode) +
    (fingerprint == null ? 0 : fingerprint!.hashCode) +
    (machine == null ? 0 : machine!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (entitlements.hashCode) +
    (checksum == null ? 0 : checksum!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'ValidateLicenseResponseMetaScope[product=$product, policy=$policy, fingerprints=$fingerprints, fingerprint=$fingerprint, machine=$machine, user=$user, entitlements=$entitlements, checksum=$checksum, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.product != null) {
      json[r'product'] = this.product;
    } else {
      json[r'product'] = null;
    }
    if (this.policy != null) {
      json[r'policy'] = this.policy;
    } else {
      json[r'policy'] = null;
    }
      json[r'fingerprints'] = this.fingerprints;
    if (this.fingerprint != null) {
      json[r'fingerprint'] = this.fingerprint;
    } else {
      json[r'fingerprint'] = null;
    }
    if (this.machine != null) {
      json[r'machine'] = this.machine;
    } else {
      json[r'machine'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
      json[r'entitlements'] = this.entitlements;
    if (this.checksum != null) {
      json[r'checksum'] = this.checksum;
    } else {
      json[r'checksum'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [ValidateLicenseResponseMetaScope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidateLicenseResponseMetaScope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidateLicenseResponseMetaScope[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidateLicenseResponseMetaScope[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidateLicenseResponseMetaScope(
        product: mapValueOfType<String>(json, r'product'),
        policy: mapValueOfType<String>(json, r'policy'),
        fingerprints: json[r'fingerprints'] is Iterable
            ? (json[r'fingerprints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        fingerprint: mapValueOfType<String>(json, r'fingerprint'),
        machine: mapValueOfType<String>(json, r'machine'),
        user: mapValueOfType<String>(json, r'user'),
        entitlements: json[r'entitlements'] is Iterable
            ? (json[r'entitlements'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        checksum: mapValueOfType<String>(json, r'checksum'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<ValidateLicenseResponseMetaScope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateLicenseResponseMetaScope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateLicenseResponseMetaScope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidateLicenseResponseMetaScope> mapFromJson(dynamic json) {
    final map = <String, ValidateLicenseResponseMetaScope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateLicenseResponseMetaScope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidateLicenseResponseMetaScope-objects as value to a dart map
  static Map<String, List<ValidateLicenseResponseMetaScope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidateLicenseResponseMetaScope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidateLicenseResponseMetaScope.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

