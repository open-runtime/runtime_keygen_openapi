//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateSecondFactorRequest {
  /// Returns a new [UpdateSecondFactorRequest] instance.
  UpdateSecondFactorRequest({
    this.data,
    required this.meta,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateSecondFactorRequestData? data;

  UpdateSecondFactorRequestMeta meta;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateSecondFactorRequest &&
    other.data == data &&
    other.meta == meta;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (meta.hashCode);

  @override
  String toString() => 'UpdateSecondFactorRequest[data=$data, meta=$meta]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
      json[r'meta'] = this.meta;
    return json;
  }

  /// Returns a new [UpdateSecondFactorRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateSecondFactorRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateSecondFactorRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateSecondFactorRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateSecondFactorRequest(
        data: UpdateSecondFactorRequestData.fromJson(json[r'data']),
        meta: UpdateSecondFactorRequestMeta.fromJson(json[r'meta'])!,
      );
    }
    return null;
  }

  static List<UpdateSecondFactorRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateSecondFactorRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateSecondFactorRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateSecondFactorRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateSecondFactorRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSecondFactorRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateSecondFactorRequest-objects as value to a dart map
  static Map<String, List<UpdateSecondFactorRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateSecondFactorRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateSecondFactorRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'meta',
  };
}

