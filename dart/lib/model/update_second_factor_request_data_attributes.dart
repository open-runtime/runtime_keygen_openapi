//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateSecondFactorRequestDataAttributes {
  /// Returns a new [UpdateSecondFactorRequestDataAttributes] instance.
  UpdateSecondFactorRequestDataAttributes({
    this.enabled,
  });

  /// Whether or not the second factor is enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateSecondFactorRequestDataAttributes &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() => 'UpdateSecondFactorRequestDataAttributes[enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateSecondFactorRequestDataAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateSecondFactorRequestDataAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateSecondFactorRequestDataAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateSecondFactorRequestDataAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateSecondFactorRequestDataAttributes(
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<UpdateSecondFactorRequestDataAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateSecondFactorRequestDataAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateSecondFactorRequestDataAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateSecondFactorRequestDataAttributes> mapFromJson(dynamic json) {
    final map = <String, UpdateSecondFactorRequestDataAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSecondFactorRequestDataAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateSecondFactorRequestDataAttributes-objects as value to a dart map
  static Map<String, List<UpdateSecondFactorRequestDataAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateSecondFactorRequestDataAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateSecondFactorRequestDataAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

