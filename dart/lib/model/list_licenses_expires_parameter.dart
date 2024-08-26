//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListLicensesExpiresParameter {
  /// Returns a new [ListLicensesExpiresParameter] instance.
  ListLicensesExpiresParameter({
    this.in_,
    this.before,
    this.after,
  });

  /// The duration in seconds or ISO8601 duration to query licenses expiring within. Accepts a duration in seconds e.g. 2629746, or an ISO8601 duration e.g. 30d. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? in_;

  /// The ISO8601 timestamp to query licenses expiring before.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? before;

  /// The ISO8601 timestamp to query licenses expiring after.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? after;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListLicensesExpiresParameter &&
    other.in_ == in_ &&
    other.before == before &&
    other.after == after;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (in_ == null ? 0 : in_!.hashCode) +
    (before == null ? 0 : before!.hashCode) +
    (after == null ? 0 : after!.hashCode);

  @override
  String toString() => 'ListLicensesExpiresParameter[in_=$in_, before=$before, after=$after]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.in_ != null) {
      json[r'in'] = this.in_;
    } else {
      json[r'in'] = null;
    }
    if (this.before != null) {
      json[r'before'] = this.before!.toUtc().toIso8601String();
    } else {
      json[r'before'] = null;
    }
    if (this.after != null) {
      json[r'after'] = this.after!.toUtc().toIso8601String();
    } else {
      json[r'after'] = null;
    }
    return json;
  }

  /// Returns a new [ListLicensesExpiresParameter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListLicensesExpiresParameter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListLicensesExpiresParameter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListLicensesExpiresParameter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListLicensesExpiresParameter(
        in_: mapValueOfType<String>(json, r'in'),
        before: mapDateTime(json, r'before', r''),
        after: mapDateTime(json, r'after', r''),
      );
    }
    return null;
  }

  static List<ListLicensesExpiresParameter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListLicensesExpiresParameter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListLicensesExpiresParameter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListLicensesExpiresParameter> mapFromJson(dynamic json) {
    final map = <String, ListLicensesExpiresParameter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListLicensesExpiresParameter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListLicensesExpiresParameter-objects as value to a dart map
  static Map<String, List<ListLicensesExpiresParameter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListLicensesExpiresParameter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListLicensesExpiresParameter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

