//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListLicensesResponse {
  /// Returns a new [ListLicensesResponse] instance.
  ListLicensesResponse({
    this.data = const [],
    this.links,
  });

  List<License> data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PaginationLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListLicensesResponse &&
    _deepEquality.equals(other.data, data) &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'ListLicensesResponse[data=$data, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    if (this.links != null) {
      json[r'links'] = this.links;
    } else {
      json[r'links'] = null;
    }
    return json;
  }

  /// Returns a new [ListLicensesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListLicensesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListLicensesResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListLicensesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListLicensesResponse(
        data: License.listFromJson(json[r'data']),
        links: PaginationLinks.fromJson(json[r'links']),
      );
    }
    return null;
  }

  static List<ListLicensesResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListLicensesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListLicensesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListLicensesResponse> mapFromJson(dynamic json) {
    final map = <String, ListLicensesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListLicensesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListLicensesResponse-objects as value to a dart map
  static Map<String, List<ListLicensesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListLicensesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListLicensesResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
  };
}

