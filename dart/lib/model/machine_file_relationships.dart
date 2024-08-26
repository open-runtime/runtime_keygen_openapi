//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MachineFileRelationships {
  /// Returns a new [MachineFileRelationships] instance.
  MachineFileRelationships({
    required this.account,
    required this.machine,
  });

  PolicyEntitlementRelationshipsAccount account;

  MachineFileRelationshipsMachine machine;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MachineFileRelationships &&
    other.account == account &&
    other.machine == machine;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account.hashCode) +
    (machine.hashCode);

  @override
  String toString() => 'MachineFileRelationships[account=$account, machine=$machine]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account'] = this.account;
      json[r'machine'] = this.machine;
    return json;
  }

  /// Returns a new [MachineFileRelationships] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MachineFileRelationships? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MachineFileRelationships[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MachineFileRelationships[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MachineFileRelationships(
        account: PolicyEntitlementRelationshipsAccount.fromJson(json[r'account'])!,
        machine: MachineFileRelationshipsMachine.fromJson(json[r'machine'])!,
      );
    }
    return null;
  }

  static List<MachineFileRelationships> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MachineFileRelationships>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MachineFileRelationships.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MachineFileRelationships> mapFromJson(dynamic json) {
    final map = <String, MachineFileRelationships>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MachineFileRelationships.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MachineFileRelationships-objects as value to a dart map
  static Map<String, List<MachineFileRelationships>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MachineFileRelationships>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MachineFileRelationships.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'machine',
  };
}

