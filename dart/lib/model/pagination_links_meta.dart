//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginationLinksMeta {
  /// Returns a new [PaginationLinksMeta] instance.
  PaginationLinksMeta({
    required this.pages,
    required this.count,
  });

  int pages;

  int count;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginationLinksMeta &&
    other.pages == pages &&
    other.count == count;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pages.hashCode) +
    (count.hashCode);

  @override
  String toString() => 'PaginationLinksMeta[pages=$pages, count=$count]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pages'] = this.pages;
      json[r'count'] = this.count;
    return json;
  }

  /// Returns a new [PaginationLinksMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginationLinksMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginationLinksMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginationLinksMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginationLinksMeta(
        pages: mapValueOfType<int>(json, r'pages')!,
        count: mapValueOfType<int>(json, r'count')!,
      );
    }
    return null;
  }

  static List<PaginationLinksMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginationLinksMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginationLinksMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaginationLinksMeta> mapFromJson(dynamic json) {
    final map = <String, PaginationLinksMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginationLinksMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaginationLinksMeta-objects as value to a dart map
  static Map<String, List<PaginationLinksMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaginationLinksMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaginationLinksMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'pages',
    'count',
  };
}

