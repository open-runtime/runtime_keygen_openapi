//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Token {
  /// Returns a new [Token] instance.
  Token({
    required this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  String id;

  TokenTypeEnum type;

  TokenAttributes attributes;

  TokenRelationships relationships;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Token &&
    other.id == id &&
    other.type == type &&
    other.attributes == attributes &&
    other.relationships == relationships;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (attributes.hashCode) +
    (relationships.hashCode);

  @override
  String toString() => 'Token[id=$id, type=$type, attributes=$attributes, relationships=$relationships]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'attributes'] = this.attributes;
      json[r'relationships'] = this.relationships;
    return json;
  }

  /// Returns a new [Token] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Token? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Token[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Token[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Token(
        id: mapValueOfType<String>(json, r'id')!,
        type: TokenTypeEnum.fromJson(json[r'type'])!,
        attributes: TokenAttributes.fromJson(json[r'attributes'])!,
        relationships: TokenRelationships.fromJson(json[r'relationships'])!,
      );
    }
    return null;
  }

  static List<Token> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Token>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Token.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Token> mapFromJson(dynamic json) {
    final map = <String, Token>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Token.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Token-objects as value to a dart map
  static Map<String, List<Token>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Token>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Token.listFromJson(entry.value, growable: growable,);
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
  };
}


class TokenTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TokenTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const tokens = TokenTypeEnum._(r'tokens');

  /// List of all possible values in this [enum][TokenTypeEnum].
  static const values = <TokenTypeEnum>[
    tokens,
  ];

  static TokenTypeEnum? fromJson(dynamic value) => TokenTypeEnumTypeTransformer().decode(value);

  static List<TokenTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TokenTypeEnum] to String,
/// and [decode] dynamic data back to [TokenTypeEnum].
class TokenTypeEnumTypeTransformer {
  factory TokenTypeEnumTypeTransformer() => _instance ??= const TokenTypeEnumTypeTransformer._();

  const TokenTypeEnumTypeTransformer._();

  String encode(TokenTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TokenTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TokenTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'tokens': return TokenTypeEnum.tokens;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TokenTypeEnumTypeTransformer] instance.
  static TokenTypeEnumTypeTransformer? _instance;
}


