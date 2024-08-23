//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LicenseRelationshipsProduct {
  /// Returns a new [LicenseRelationshipsProduct] instance.
  LicenseRelationshipsProduct({
    required this.links,
    required this.data,
  });

  RelatedLinks links;

  CreatePolicyRequestDataRelationshipsProductData data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseRelationshipsProduct &&
    other.links == links &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (links.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'LicenseRelationshipsProduct[links=$links, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'links'] = this.links;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [LicenseRelationshipsProduct] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseRelationshipsProduct? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicenseRelationshipsProduct[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicenseRelationshipsProduct[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicenseRelationshipsProduct(
        links: RelatedLinks.fromJson(json[r'links'])!,
        data: CreatePolicyRequestDataRelationshipsProductData.fromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<LicenseRelationshipsProduct> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseRelationshipsProduct>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseRelationshipsProduct.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseRelationshipsProduct> mapFromJson(dynamic json) {
    final map = <String, LicenseRelationshipsProduct>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseRelationshipsProduct.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseRelationshipsProduct-objects as value to a dart map
  static Map<String, List<LicenseRelationshipsProduct>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseRelationshipsProduct>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicenseRelationshipsProduct.listFromJson(entry.value, growable: growable,);
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

