//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ErrorSource {
  /// Returns a new [ErrorSource] instance.
  ErrorSource({
    this.pointer,
    this.parameter,
  });

  /// A pointer to the problem data, e.g. \"/data\" for the primary data, \"/data/attributes/email\" for a specific attribute, or \"/data/relationships/user\" for a problem with a relationship. This may or may not be included in the error payload, depending on the type of error. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pointer;

  /// A string indicating which URI query parameter caused the error. This may or may not be included in the error payload, depending on the type of error. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parameter;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ErrorSource &&
    other.pointer == pointer &&
    other.parameter == parameter;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pointer == null ? 0 : pointer!.hashCode) +
    (parameter == null ? 0 : parameter!.hashCode);

  @override
  String toString() => 'ErrorSource[pointer=$pointer, parameter=$parameter]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.pointer != null) {
      json[r'pointer'] = this.pointer;
    } else {
      json[r'pointer'] = null;
    }
    if (this.parameter != null) {
      json[r'parameter'] = this.parameter;
    } else {
      json[r'parameter'] = null;
    }
    return json;
  }

  /// Returns a new [ErrorSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ErrorSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ErrorSource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ErrorSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ErrorSource(
        pointer: mapValueOfType<String>(json, r'pointer'),
        parameter: mapValueOfType<String>(json, r'parameter'),
      );
    }
    return null;
  }

  static List<ErrorSource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ErrorSource> mapFromJson(dynamic json) {
    final map = <String, ErrorSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ErrorSource-objects as value to a dart map
  static Map<String, List<ErrorSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ErrorSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ErrorSource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

