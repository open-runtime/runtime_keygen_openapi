//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ForgotPasswordRequestMeta {
  /// Returns a new [ForgotPasswordRequestMeta] instance.
  ForgotPasswordRequestMeta({
    required this.email,
    this.deliver = true,
  });

  /// The email of the user.
  String email;

  /// Whether or not to email a password reset notification to the user.
  bool deliver;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ForgotPasswordRequestMeta &&
    other.email == email &&
    other.deliver == deliver;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (deliver.hashCode);

  @override
  String toString() => 'ForgotPasswordRequestMeta[email=$email, deliver=$deliver]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
      json[r'deliver'] = this.deliver;
    return json;
  }

  /// Returns a new [ForgotPasswordRequestMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ForgotPasswordRequestMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ForgotPasswordRequestMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ForgotPasswordRequestMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ForgotPasswordRequestMeta(
        email: mapValueOfType<String>(json, r'email')!,
        deliver: mapValueOfType<bool>(json, r'deliver') ?? true,
      );
    }
    return null;
  }

  static List<ForgotPasswordRequestMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ForgotPasswordRequestMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ForgotPasswordRequestMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ForgotPasswordRequestMeta> mapFromJson(dynamic json) {
    final map = <String, ForgotPasswordRequestMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ForgotPasswordRequestMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ForgotPasswordRequestMeta-objects as value to a dart map
  static Map<String, List<ForgotPasswordRequestMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ForgotPasswordRequestMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ForgotPasswordRequestMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
  };
}

