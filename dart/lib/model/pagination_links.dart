//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaginationLinks {
  /// Returns a new [PaginationLinks] instance.
  PaginationLinks({
    required this.first,
    required this.last,
    required this.prev,
    required this.next,
    required this.self,
    required this.meta,
  });

  String first;

  String last;

  String prev;

  String next;

  String self;

  PaginationLinksMeta meta;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginationLinks &&
    other.first == first &&
    other.last == last &&
    other.prev == prev &&
    other.next == next &&
    other.self == self &&
    other.meta == meta;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (first.hashCode) +
    (last.hashCode) +
    (prev.hashCode) +
    (next.hashCode) +
    (self.hashCode) +
    (meta.hashCode);

  @override
  String toString() => 'PaginationLinks[first=$first, last=$last, prev=$prev, next=$next, self=$self, meta=$meta]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'first'] = this.first;
      json[r'last'] = this.last;
      json[r'prev'] = this.prev;
      json[r'next'] = this.next;
      json[r'self'] = this.self;
      json[r'meta'] = this.meta;
    return json;
  }

  /// Returns a new [PaginationLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginationLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginationLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginationLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginationLinks(
        first: mapValueOfType<String>(json, r'first')!,
        last: mapValueOfType<String>(json, r'last')!,
        prev: mapValueOfType<String>(json, r'prev')!,
        next: mapValueOfType<String>(json, r'next')!,
        self: mapValueOfType<String>(json, r'self')!,
        meta: PaginationLinksMeta.fromJson(json[r'meta'])!,
      );
    }
    return null;
  }

  static List<PaginationLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginationLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginationLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaginationLinks> mapFromJson(dynamic json) {
    final map = <String, PaginationLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginationLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaginationLinks-objects as value to a dart map
  static Map<String, List<PaginationLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaginationLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaginationLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'first',
    'last',
    'prev',
    'next',
    'self',
    'meta',
  };
}

