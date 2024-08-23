//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePolicyRequestDataRelationshipsProductData {
  /// Returns a new [CreatePolicyRequestDataRelationshipsProductData] instance.
  CreatePolicyRequestDataRelationshipsProductData({
    required this.type,
    required this.id,
  });

  CreatePolicyRequestDataRelationshipsProductDataTypeEnum type;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePolicyRequestDataRelationshipsProductData &&
    other.type == type &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'CreatePolicyRequestDataRelationshipsProductData[type=$type, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [CreatePolicyRequestDataRelationshipsProductData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePolicyRequestDataRelationshipsProductData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePolicyRequestDataRelationshipsProductData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePolicyRequestDataRelationshipsProductData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePolicyRequestDataRelationshipsProductData(
        type: CreatePolicyRequestDataRelationshipsProductDataTypeEnum.fromJson(json[r'type'])!,
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<CreatePolicyRequestDataRelationshipsProductData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataRelationshipsProductData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataRelationshipsProductData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePolicyRequestDataRelationshipsProductData> mapFromJson(dynamic json) {
    final map = <String, CreatePolicyRequestDataRelationshipsProductData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePolicyRequestDataRelationshipsProductData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePolicyRequestDataRelationshipsProductData-objects as value to a dart map
  static Map<String, List<CreatePolicyRequestDataRelationshipsProductData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePolicyRequestDataRelationshipsProductData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePolicyRequestDataRelationshipsProductData.listFromJson(entry.value, growable: growable,);
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


class CreatePolicyRequestDataRelationshipsProductDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataRelationshipsProductDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const products = CreatePolicyRequestDataRelationshipsProductDataTypeEnum._(r'products');

  /// List of all possible values in this [enum][CreatePolicyRequestDataRelationshipsProductDataTypeEnum].
  static const values = <CreatePolicyRequestDataRelationshipsProductDataTypeEnum>[
    products,
  ];

  static CreatePolicyRequestDataRelationshipsProductDataTypeEnum? fromJson(dynamic value) => CreatePolicyRequestDataRelationshipsProductDataTypeEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataRelationshipsProductDataTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataRelationshipsProductDataTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataRelationshipsProductDataTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataRelationshipsProductDataTypeEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataRelationshipsProductDataTypeEnum].
class CreatePolicyRequestDataRelationshipsProductDataTypeEnumTypeTransformer {
  factory CreatePolicyRequestDataRelationshipsProductDataTypeEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataRelationshipsProductDataTypeEnumTypeTransformer._();

  const CreatePolicyRequestDataRelationshipsProductDataTypeEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataRelationshipsProductDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataRelationshipsProductDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataRelationshipsProductDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'products': return CreatePolicyRequestDataRelationshipsProductDataTypeEnum.products;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataRelationshipsProductDataTypeEnumTypeTransformer] instance.
  static CreatePolicyRequestDataRelationshipsProductDataTypeEnumTypeTransformer? _instance;
}


