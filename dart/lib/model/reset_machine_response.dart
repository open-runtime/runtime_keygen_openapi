//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResetMachineResponse {
  /// Returns a new [ResetMachineResponse] instance.
  ResetMachineResponse({
    required this.data,
  });

  Machine data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResetMachineResponse &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode);

  @override
  String toString() => 'ResetMachineResponse[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ResetMachineResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResetMachineResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResetMachineResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResetMachineResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResetMachineResponse(
        data: Machine.fromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<ResetMachineResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResetMachineResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResetMachineResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResetMachineResponse> mapFromJson(dynamic json) {
    final map = <String, ResetMachineResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResetMachineResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResetMachineResponse-objects as value to a dart map
  static Map<String, List<ResetMachineResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResetMachineResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResetMachineResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
  };
}

