//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MachineRelationships {
  /// Returns a new [MachineRelationships] instance.
  MachineRelationships({
    required this.account,
    required this.product,
    required this.license,
    required this.group,
    this.user,
    required this.processes,
  });

  MachineRelationshipsAccount account;

  MachineRelationshipsProduct product;

  MachineRelationshipsLicense license;

  MachineRelationshipsGroup group;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MachineRelationshipsUser? user;

  MachineRelationshipsProcesses processes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MachineRelationships &&
    other.account == account &&
    other.product == product &&
    other.license == license &&
    other.group == group &&
    other.user == user &&
    other.processes == processes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account.hashCode) +
    (product.hashCode) +
    (license.hashCode) +
    (group.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (processes.hashCode);

  @override
  String toString() => 'MachineRelationships[account=$account, product=$product, license=$license, group=$group, user=$user, processes=$processes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account'] = this.account;
      json[r'product'] = this.product;
      json[r'license'] = this.license;
      json[r'group'] = this.group;
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
      json[r'processes'] = this.processes;
    return json;
  }

  /// Returns a new [MachineRelationships] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MachineRelationships? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MachineRelationships[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MachineRelationships[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MachineRelationships(
        account: MachineRelationshipsAccount.fromJson(json[r'account'])!,
        product: MachineRelationshipsProduct.fromJson(json[r'product'])!,
        license: MachineRelationshipsLicense.fromJson(json[r'license'])!,
        group: MachineRelationshipsGroup.fromJson(json[r'group'])!,
        user: MachineRelationshipsUser.fromJson(json[r'user']),
        processes: MachineRelationshipsProcesses.fromJson(json[r'processes'])!,
      );
    }
    return null;
  }

  static List<MachineRelationships> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MachineRelationships>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MachineRelationships.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MachineRelationships> mapFromJson(dynamic json) {
    final map = <String, MachineRelationships>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MachineRelationships.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MachineRelationships-objects as value to a dart map
  static Map<String, List<MachineRelationships>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MachineRelationships>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MachineRelationships.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'product',
    'license',
    'group',
    'processes',
  };
}

