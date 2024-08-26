//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResetUserPasswordRequestMeta {
  /// Returns a new [ResetUserPasswordRequestMeta] instance.
  ResetUserPasswordRequestMeta({
    required this.passwordResetToken,
    required this.newPassword,
  });

  /// The password reset token emailed to the user.
  String passwordResetToken;

  /// The new password for the user.
  String newPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResetUserPasswordRequestMeta &&
    other.passwordResetToken == passwordResetToken &&
    other.newPassword == newPassword;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (passwordResetToken.hashCode) +
    (newPassword.hashCode);

  @override
  String toString() => 'ResetUserPasswordRequestMeta[passwordResetToken=$passwordResetToken, newPassword=$newPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'passwordResetToken'] = this.passwordResetToken;
      json[r'newPassword'] = this.newPassword;
    return json;
  }

  /// Returns a new [ResetUserPasswordRequestMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResetUserPasswordRequestMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResetUserPasswordRequestMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResetUserPasswordRequestMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResetUserPasswordRequestMeta(
        passwordResetToken: mapValueOfType<String>(json, r'passwordResetToken')!,
        newPassword: mapValueOfType<String>(json, r'newPassword')!,
      );
    }
    return null;
  }

  static List<ResetUserPasswordRequestMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResetUserPasswordRequestMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResetUserPasswordRequestMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResetUserPasswordRequestMeta> mapFromJson(dynamic json) {
    final map = <String, ResetUserPasswordRequestMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResetUserPasswordRequestMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResetUserPasswordRequestMeta-objects as value to a dart map
  static Map<String, List<ResetUserPasswordRequestMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResetUserPasswordRequestMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResetUserPasswordRequestMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'passwordResetToken',
    'newPassword',
  };
}

