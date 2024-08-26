//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResetUserPasswordRequest {
  /// Returns a new [ResetUserPasswordRequest] instance.
  ResetUserPasswordRequest({
    required this.meta,
  });

  ResetUserPasswordRequestMeta meta;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResetUserPasswordRequest &&
    other.meta == meta;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (meta.hashCode);

  @override
  String toString() => 'ResetUserPasswordRequest[meta=$meta]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'meta'] = this.meta;
    return json;
  }

  /// Returns a new [ResetUserPasswordRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResetUserPasswordRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResetUserPasswordRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResetUserPasswordRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResetUserPasswordRequest(
        meta: ResetUserPasswordRequestMeta.fromJson(json[r'meta'])!,
      );
    }
    return null;
  }

  static List<ResetUserPasswordRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResetUserPasswordRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResetUserPasswordRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResetUserPasswordRequest> mapFromJson(dynamic json) {
    final map = <String, ResetUserPasswordRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResetUserPasswordRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResetUserPasswordRequest-objects as value to a dart map
  static Map<String, List<ResetUserPasswordRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResetUserPasswordRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResetUserPasswordRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'meta',
  };
}

