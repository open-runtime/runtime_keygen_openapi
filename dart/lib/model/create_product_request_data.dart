//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateProductRequestData {
  /// Returns a new [CreateProductRequestData] instance.
  CreateProductRequestData({
    required this.type,
    required this.attributes,
  });

  CreateProductRequestDataTypeEnum type;

  CreateProductRequestDataAttributes attributes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateProductRequestData &&
    other.type == type &&
    other.attributes == attributes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (attributes.hashCode);

  @override
  String toString() => 'CreateProductRequestData[type=$type, attributes=$attributes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
    return json;
  }

  /// Returns a new [CreateProductRequestData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateProductRequestData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateProductRequestData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateProductRequestData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateProductRequestData(
        type: CreateProductRequestDataTypeEnum.fromJson(json[r'type'])!,
        attributes: CreateProductRequestDataAttributes.fromJson(json[r'attributes'])!,
      );
    }
    return null;
  }

  static List<CreateProductRequestData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateProductRequestData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateProductRequestData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateProductRequestData> mapFromJson(dynamic json) {
    final map = <String, CreateProductRequestData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateProductRequestData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateProductRequestData-objects as value to a dart map
  static Map<String, List<CreateProductRequestData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateProductRequestData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateProductRequestData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'attributes',
  };
}


class CreateProductRequestDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateProductRequestDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const products = CreateProductRequestDataTypeEnum._(r'products');

  /// List of all possible values in this [enum][CreateProductRequestDataTypeEnum].
  static const values = <CreateProductRequestDataTypeEnum>[
    products,
  ];

  static CreateProductRequestDataTypeEnum? fromJson(dynamic value) => CreateProductRequestDataTypeEnumTypeTransformer().decode(value);

  static List<CreateProductRequestDataTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateProductRequestDataTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateProductRequestDataTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateProductRequestDataTypeEnum] to String,
/// and [decode] dynamic data back to [CreateProductRequestDataTypeEnum].
class CreateProductRequestDataTypeEnumTypeTransformer {
  factory CreateProductRequestDataTypeEnumTypeTransformer() => _instance ??= const CreateProductRequestDataTypeEnumTypeTransformer._();

  const CreateProductRequestDataTypeEnumTypeTransformer._();

  String encode(CreateProductRequestDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateProductRequestDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateProductRequestDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'products': return CreateProductRequestDataTypeEnum.products;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateProductRequestDataTypeEnumTypeTransformer] instance.
  static CreateProductRequestDataTypeEnumTypeTransformer? _instance;
}


