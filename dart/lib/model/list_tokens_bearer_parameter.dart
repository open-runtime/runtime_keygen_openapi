//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListTokensBearerParameter {
  /// Returns a new [ListTokensBearerParameter] instance.
  ListTokensBearerParameter({
    required this.type,
    required this.id,
  });

  ListTokensBearerParameterTypeEnum type;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListTokensBearerParameter &&
    other.type == type &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'ListTokensBearerParameter[type=$type, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [ListTokensBearerParameter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListTokensBearerParameter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListTokensBearerParameter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListTokensBearerParameter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListTokensBearerParameter(
        type: ListTokensBearerParameterTypeEnum.fromJson(json[r'type'])!,
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<ListTokensBearerParameter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListTokensBearerParameter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListTokensBearerParameter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListTokensBearerParameter> mapFromJson(dynamic json) {
    final map = <String, ListTokensBearerParameter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListTokensBearerParameter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListTokensBearerParameter-objects as value to a dart map
  static Map<String, List<ListTokensBearerParameter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListTokensBearerParameter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListTokensBearerParameter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'id',
  };
}


class ListTokensBearerParameterTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ListTokensBearerParameterTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const products = ListTokensBearerParameterTypeEnum._(r'products');
  static const licenses = ListTokensBearerParameterTypeEnum._(r'licenses');
  static const users = ListTokensBearerParameterTypeEnum._(r'users');

  /// List of all possible values in this [enum][ListTokensBearerParameterTypeEnum].
  static const values = <ListTokensBearerParameterTypeEnum>[
    products,
    licenses,
    users,
  ];

  static ListTokensBearerParameterTypeEnum? fromJson(dynamic value) => ListTokensBearerParameterTypeEnumTypeTransformer().decode(value);

  static List<ListTokensBearerParameterTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListTokensBearerParameterTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListTokensBearerParameterTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ListTokensBearerParameterTypeEnum] to String,
/// and [decode] dynamic data back to [ListTokensBearerParameterTypeEnum].
class ListTokensBearerParameterTypeEnumTypeTransformer {
  factory ListTokensBearerParameterTypeEnumTypeTransformer() => _instance ??= const ListTokensBearerParameterTypeEnumTypeTransformer._();

  const ListTokensBearerParameterTypeEnumTypeTransformer._();

  String encode(ListTokensBearerParameterTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ListTokensBearerParameterTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ListTokensBearerParameterTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'products': return ListTokensBearerParameterTypeEnum.products;
        case r'licenses': return ListTokensBearerParameterTypeEnum.licenses;
        case r'users': return ListTokensBearerParameterTypeEnum.users;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ListTokensBearerParameterTypeEnumTypeTransformer] instance.
  static ListTokensBearerParameterTypeEnumTypeTransformer? _instance;
}


