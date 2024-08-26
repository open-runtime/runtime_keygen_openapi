//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Machine {
  /// Returns a new [Machine] instance.
  Machine({
    required this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
    required this.links,
  });

  String id;

  MachineTypeEnum type;

  MachineAttributes attributes;

  MachineRelationships relationships;

  SelfLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Machine &&
    other.id == id &&
    other.type == type &&
    other.attributes == attributes &&
    other.relationships == relationships &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (attributes.hashCode) +
    (relationships.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'Machine[id=$id, type=$type, attributes=$attributes, relationships=$relationships, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
      json[r'relationships'] = this.relationships;
      json[r'links'] = this.links;
    return json;
  }

  /// Returns a new [Machine] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Machine? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Machine[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Machine[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Machine(
        id: mapValueOfType<String>(json, r'id')!,
        type: MachineTypeEnum.fromJson(json[r'type'])!,
        attributes: MachineAttributes.fromJson(json[r'attributes'])!,
        relationships: MachineRelationships.fromJson(json[r'relationships'])!,
        links: SelfLinks.fromJson(json[r'links'])!,
      );
    }
    return null;
  }

  static List<Machine> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Machine>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Machine.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Machine> mapFromJson(dynamic json) {
    final map = <String, Machine>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Machine.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Machine-objects as value to a dart map
  static Map<String, List<Machine>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Machine>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Machine.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'attributes',
    'relationships',
    'links',
  };
}


class MachineTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MachineTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const machines = MachineTypeEnum._(r'machines');

  /// List of all possible values in this [enum][MachineTypeEnum].
  static const values = <MachineTypeEnum>[
    machines,
  ];

  static MachineTypeEnum? fromJson(dynamic value) => MachineTypeEnumTypeTransformer().decode(value);

  static List<MachineTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MachineTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MachineTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MachineTypeEnum] to String,
/// and [decode] dynamic data back to [MachineTypeEnum].
class MachineTypeEnumTypeTransformer {
  factory MachineTypeEnumTypeTransformer() => _instance ??= const MachineTypeEnumTypeTransformer._();

  const MachineTypeEnumTypeTransformer._();

  String encode(MachineTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MachineTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MachineTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'machines': return MachineTypeEnum.machines;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MachineTypeEnumTypeTransformer] instance.
  static MachineTypeEnumTypeTransformer? _instance;
}


