//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateSecondFactorRequestData {
  /// Returns a new [UpdateSecondFactorRequestData] instance.
  UpdateSecondFactorRequestData({
    this.attributes,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UpdateSecondFactorRequestDataAttributes? attributes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateSecondFactorRequestData &&
    other.attributes == attributes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attributes == null ? 0 : attributes!.hashCode);

  @override
  String toString() => 'UpdateSecondFactorRequestData[attributes=$attributes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attributes != null) {
      json[r'attributes'] = this.attributes;
    } else {
      json[r'attributes'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateSecondFactorRequestData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateSecondFactorRequestData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateSecondFactorRequestData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateSecondFactorRequestData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateSecondFactorRequestData(
        attributes: UpdateSecondFactorRequestDataAttributes.fromJson(json[r'attributes']),
      );
    }
    return null;
  }

  static List<UpdateSecondFactorRequestData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateSecondFactorRequestData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateSecondFactorRequestData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateSecondFactorRequestData> mapFromJson(dynamic json) {
    final map = <String, UpdateSecondFactorRequestData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSecondFactorRequestData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateSecondFactorRequestData-objects as value to a dart map
  static Map<String, List<UpdateSecondFactorRequestData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateSecondFactorRequestData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateSecondFactorRequestData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

