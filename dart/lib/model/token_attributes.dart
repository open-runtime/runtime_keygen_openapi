//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenAttributes {
  /// Returns a new [TokenAttributes] instance.
  TokenAttributes({
    required this.kind,
    this.token,
    this.name,
    this.expiry,
    this.maxActivations,
    this.activations,
    this.maxDeactivations,
    this.deactivations,
    required this.created,
    required this.updated,
  });

  /// The kind of token, based on its bearer.
  TokenAttributesKindEnum kind;

  /// The raw token of the token. This attribute is only available to read directly after token generation. This is the value you will use to authenticate with when sending requests to our API. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  /// An optional name for the token. This can be used to easily identify tokens at a glance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The timestamp for when the token expires. Requests using an expired token will be rejected.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiry;

  /// The maximum amount of machine activations this token may perform. This attribute is only applicable to license tokens. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxActivations;

  /// The number of machine activations that have been performed by this token. This attribute is only applicable to license tokens. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? activations;

  /// The maximum amount of machine deactivations this token may perform. This attribute is only applicable to license tokens. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxDeactivations;

  /// The number of machine deactivations that have been performed by this token. This attribute is only applicable to license tokens. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deactivations;

  /// When the token was created.
  DateTime created;

  /// When the token was last updated.
  DateTime updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenAttributes &&
    other.kind == kind &&
    other.token == token &&
    other.name == name &&
    other.expiry == expiry &&
    other.maxActivations == maxActivations &&
    other.activations == activations &&
    other.maxDeactivations == maxDeactivations &&
    other.deactivations == deactivations &&
    other.created == created &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kind.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (expiry == null ? 0 : expiry!.hashCode) +
    (maxActivations == null ? 0 : maxActivations!.hashCode) +
    (activations == null ? 0 : activations!.hashCode) +
    (maxDeactivations == null ? 0 : maxDeactivations!.hashCode) +
    (deactivations == null ? 0 : deactivations!.hashCode) +
    (created.hashCode) +
    (updated.hashCode);

  @override
  String toString() => 'TokenAttributes[kind=$kind, token=$token, name=$name, expiry=$expiry, maxActivations=$maxActivations, activations=$activations, maxDeactivations=$maxDeactivations, deactivations=$deactivations, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kind'] = this.kind;
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.expiry != null) {
      json[r'expiry'] = this.expiry!.toUtc().toIso8601String();
    } else {
      json[r'expiry'] = null;
    }
    if (this.maxActivations != null) {
      json[r'maxActivations'] = this.maxActivations;
    } else {
      json[r'maxActivations'] = null;
    }
    if (this.activations != null) {
      json[r'activations'] = this.activations;
    } else {
      json[r'activations'] = null;
    }
    if (this.maxDeactivations != null) {
      json[r'maxDeactivations'] = this.maxDeactivations;
    } else {
      json[r'maxDeactivations'] = null;
    }
    if (this.deactivations != null) {
      json[r'deactivations'] = this.deactivations;
    } else {
      json[r'deactivations'] = null;
    }
      json[r'created'] = this.created.toUtc().toIso8601String();
      json[r'updated'] = this.updated.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [TokenAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenAttributes(
        kind: TokenAttributesKindEnum.fromJson(json[r'kind'])!,
        token: mapValueOfType<String>(json, r'token'),
        name: mapValueOfType<String>(json, r'name'),
        expiry: mapDateTime(json, r'expiry', r''),
        maxActivations: mapValueOfType<int>(json, r'maxActivations'),
        activations: mapValueOfType<int>(json, r'activations'),
        maxDeactivations: mapValueOfType<int>(json, r'maxDeactivations'),
        deactivations: mapValueOfType<int>(json, r'deactivations'),
        created: mapDateTime(json, r'created', r'')!,
        updated: mapDateTime(json, r'updated', r'')!,
      );
    }
    return null;
  }

  static List<TokenAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenAttributes> mapFromJson(dynamic json) {
    final map = <String, TokenAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenAttributes-objects as value to a dart map
  static Map<String, List<TokenAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kind',
    'created',
    'updated',
  };
}

/// The kind of token, based on its bearer.
class TokenAttributesKindEnum {
  /// Instantiate a new enum with the provided [value].
  const TokenAttributesKindEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const activationToken = TokenAttributesKindEnum._(r'activation-token');
  static const productToken = TokenAttributesKindEnum._(r'product-token');
  static const userToken = TokenAttributesKindEnum._(r'user-token');
  static const supportToken = TokenAttributesKindEnum._(r'support-token');
  static const salesToken = TokenAttributesKindEnum._(r'sales-token');
  static const developerToken = TokenAttributesKindEnum._(r'developer-token');
  static const adminToken = TokenAttributesKindEnum._(r'admin-token');

  /// List of all possible values in this [enum][TokenAttributesKindEnum].
  static const values = <TokenAttributesKindEnum>[
    activationToken,
    productToken,
    userToken,
    supportToken,
    salesToken,
    developerToken,
    adminToken,
  ];

  static TokenAttributesKindEnum? fromJson(dynamic value) => TokenAttributesKindEnumTypeTransformer().decode(value);

  static List<TokenAttributesKindEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenAttributesKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenAttributesKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TokenAttributesKindEnum] to String,
/// and [decode] dynamic data back to [TokenAttributesKindEnum].
class TokenAttributesKindEnumTypeTransformer {
  factory TokenAttributesKindEnumTypeTransformer() => _instance ??= const TokenAttributesKindEnumTypeTransformer._();

  const TokenAttributesKindEnumTypeTransformer._();

  String encode(TokenAttributesKindEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TokenAttributesKindEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TokenAttributesKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'activation-token': return TokenAttributesKindEnum.activationToken;
        case r'product-token': return TokenAttributesKindEnum.productToken;
        case r'user-token': return TokenAttributesKindEnum.userToken;
        case r'support-token': return TokenAttributesKindEnum.supportToken;
        case r'sales-token': return TokenAttributesKindEnum.salesToken;
        case r'developer-token': return TokenAttributesKindEnum.developerToken;
        case r'admin-token': return TokenAttributesKindEnum.adminToken;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TokenAttributesKindEnumTypeTransformer] instance.
  static TokenAttributesKindEnumTypeTransformer? _instance;
}


