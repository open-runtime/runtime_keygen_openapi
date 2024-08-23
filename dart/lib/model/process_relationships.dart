//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProcessRelationships {
  /// Returns a new [ProcessRelationships] instance.
  ProcessRelationships({
    required this.account,
    required this.product,
    required this.license,
    required this.machine,
  });

  ProcessRelationshipsAccount account;

  ProcessRelationshipsProduct product;

  ProcessRelationshipsLicense license;

  ProcessRelationshipsMachine machine;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProcessRelationships &&
    other.account == account &&
    other.product == product &&
    other.license == license &&
    other.machine == machine;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account.hashCode) +
    (product.hashCode) +
    (license.hashCode) +
    (machine.hashCode);

  @override
  String toString() => 'ProcessRelationships[account=$account, product=$product, license=$license, machine=$machine]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account'] = this.account;
      json[r'product'] = this.product;
      json[r'license'] = this.license;
      json[r'machine'] = this.machine;
    return json;
  }

  /// Returns a new [ProcessRelationships] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProcessRelationships? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProcessRelationships[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProcessRelationships[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProcessRelationships(
        account: ProcessRelationshipsAccount.fromJson(json[r'account'])!,
        product: ProcessRelationshipsProduct.fromJson(json[r'product'])!,
        license: ProcessRelationshipsLicense.fromJson(json[r'license'])!,
        machine: ProcessRelationshipsMachine.fromJson(json[r'machine'])!,
      );
    }
    return null;
  }

  static List<ProcessRelationships> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessRelationships>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessRelationships.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProcessRelationships> mapFromJson(dynamic json) {
    final map = <String, ProcessRelationships>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProcessRelationships.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProcessRelationships-objects as value to a dart map
  static Map<String, List<ProcessRelationships>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProcessRelationships>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProcessRelationships.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'product',
    'license',
    'machine',
  };
}

