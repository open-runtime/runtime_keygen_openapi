//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MachineRelationshipsLicense {
  /// Returns a new [MachineRelationshipsLicense] instance.
  MachineRelationshipsLicense({
    required this.links,
    required this.data,
  });

  RelatedLinks links;

  ActivateMachineRequestDataRelationshipsLicenseData data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MachineRelationshipsLicense &&
    other.links == links &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (links.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'MachineRelationshipsLicense[links=$links, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'links'] = this.links;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [MachineRelationshipsLicense] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MachineRelationshipsLicense? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MachineRelationshipsLicense[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MachineRelationshipsLicense[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MachineRelationshipsLicense(
        links: RelatedLinks.fromJson(json[r'links'])!,
        data: ActivateMachineRequestDataRelationshipsLicenseData.fromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<MachineRelationshipsLicense> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MachineRelationshipsLicense>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MachineRelationshipsLicense.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MachineRelationshipsLicense> mapFromJson(dynamic json) {
    final map = <String, MachineRelationshipsLicense>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MachineRelationshipsLicense.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MachineRelationshipsLicense-objects as value to a dart map
  static Map<String, List<MachineRelationshipsLicense>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MachineRelationshipsLicense>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MachineRelationshipsLicense.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'links',
    'data',
  };
}

