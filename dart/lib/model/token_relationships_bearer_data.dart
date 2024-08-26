//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenRelationshipsBearerData {
  /// Returns a new [TokenRelationshipsBearerData] instance.
  TokenRelationshipsBearerData({
    required this.type,
    required this.id,
  });

  TokenRelationshipsBearerDataTypeEnum type;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenRelationshipsBearerData &&
    other.type == type &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'TokenRelationshipsBearerData[type=$type, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [TokenRelationshipsBearerData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenRelationshipsBearerData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenRelationshipsBearerData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenRelationshipsBearerData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenRelationshipsBearerData(
        type: TokenRelationshipsBearerDataTypeEnum.fromJson(json[r'type'])!,
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<TokenRelationshipsBearerData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenRelationshipsBearerData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenRelationshipsBearerData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenRelationshipsBearerData> mapFromJson(dynamic json) {
    final map = <String, TokenRelationshipsBearerData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenRelationshipsBearerData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenRelationshipsBearerData-objects as value to a dart map
  static Map<String, List<TokenRelationshipsBearerData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenRelationshipsBearerData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenRelationshipsBearerData.listFromJson(entry.value, growable: growable,);
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


class TokenRelationshipsBearerDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TokenRelationshipsBearerDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const users = TokenRelationshipsBearerDataTypeEnum._(r'users');
  static const products = TokenRelationshipsBearerDataTypeEnum._(r'products');
  static const licenses = TokenRelationshipsBearerDataTypeEnum._(r'licenses');

  /// List of all possible values in this [enum][TokenRelationshipsBearerDataTypeEnum].
  static const values = <TokenRelationshipsBearerDataTypeEnum>[
    users,
    products,
    licenses,
  ];

  static TokenRelationshipsBearerDataTypeEnum? fromJson(dynamic value) => TokenRelationshipsBearerDataTypeEnumTypeTransformer().decode(value);

  static List<TokenRelationshipsBearerDataTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenRelationshipsBearerDataTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenRelationshipsBearerDataTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TokenRelationshipsBearerDataTypeEnum] to String,
/// and [decode] dynamic data back to [TokenRelationshipsBearerDataTypeEnum].
class TokenRelationshipsBearerDataTypeEnumTypeTransformer {
  factory TokenRelationshipsBearerDataTypeEnumTypeTransformer() => _instance ??= const TokenRelationshipsBearerDataTypeEnumTypeTransformer._();

  const TokenRelationshipsBearerDataTypeEnumTypeTransformer._();

  String encode(TokenRelationshipsBearerDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TokenRelationshipsBearerDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TokenRelationshipsBearerDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'users': return TokenRelationshipsBearerDataTypeEnum.users;
        case r'products': return TokenRelationshipsBearerDataTypeEnum.products;
        case r'licenses': return TokenRelationshipsBearerDataTypeEnum.licenses;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TokenRelationshipsBearerDataTypeEnumTypeTransformer] instance.
  static TokenRelationshipsBearerDataTypeEnumTypeTransformer? _instance;
}


