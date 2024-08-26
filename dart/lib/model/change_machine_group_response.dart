//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChangeMachineGroupResponse {
  /// Returns a new [ChangeMachineGroupResponse] instance.
  ChangeMachineGroupResponse({
    required this.data,
  });

  Machine data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChangeMachineGroupResponse &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode);

  @override
  String toString() => 'ChangeMachineGroupResponse[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ChangeMachineGroupResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChangeMachineGroupResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChangeMachineGroupResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChangeMachineGroupResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChangeMachineGroupResponse(
        data: Machine.fromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<ChangeMachineGroupResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangeMachineGroupResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangeMachineGroupResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChangeMachineGroupResponse> mapFromJson(dynamic json) {
    final map = <String, ChangeMachineGroupResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChangeMachineGroupResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChangeMachineGroupResponse-objects as value to a dart map
  static Map<String, List<ChangeMachineGroupResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChangeMachineGroupResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChangeMachineGroupResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
  };
}

