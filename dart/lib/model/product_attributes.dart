//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductAttributes {
  /// Returns a new [ProductAttributes] instance.
  ProductAttributes({
    required this.name,
    this.url,
    this.distributionStrategy,
    this.platforms = const [],
    this.metadata = const {},
    required this.created,
    required this.updated,
  });

  /// The name of the product.
  String name;

  /// A related URL for the product e.g. the marketing website, company website, etc.
  String? url;

  /// The strategy for distributing releases.  ### Options  - **`LICENSED`**:   Only licensed users, with a valid license, can access releases and release artifacts. API   authentication is required. - **`OPEN`**:   Anybody can access releases. No API authentication required, so this is a great option for rendering   releases on a public downloads page, open source projects, or freemium products. - **`CLOSED`**: Only admins can access releases. Download links will need to be generated server-side.   API authentication is required. 
  ProductAttributesDistributionStrategyEnum? distributionStrategy;

  /// An array of platforms the product supports.
  List<String> platforms;

  /// Object containing product metadata.
  Map<String, Object> metadata;

  /// When the product was created.
  DateTime created;

  /// When the product was last updated.
  DateTime updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductAttributes &&
    other.name == name &&
    other.url == url &&
    other.distributionStrategy == distributionStrategy &&
    _deepEquality.equals(other.platforms, platforms) &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.created == created &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (distributionStrategy == null ? 0 : distributionStrategy!.hashCode) +
    (platforms.hashCode) +
    (metadata.hashCode) +
    (created.hashCode) +
    (updated.hashCode);

  @override
  String toString() => 'ProductAttributes[name=$name, url=$url, distributionStrategy=$distributionStrategy, platforms=$platforms, metadata=$metadata, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.distributionStrategy != null) {
      json[r'distributionStrategy'] = this.distributionStrategy;
    } else {
      json[r'distributionStrategy'] = null;
    }
      json[r'platforms'] = this.platforms;
      json[r'metadata'] = this.metadata;
      json[r'created'] = this.created.toUtc().toIso8601String();
      json[r'updated'] = this.updated.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ProductAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductAttributes(
        name: mapValueOfType<String>(json, r'name')!,
        url: mapValueOfType<String>(json, r'url'),
        distributionStrategy: ProductAttributesDistributionStrategyEnum.fromJson(json[r'distributionStrategy']),
        platforms: json[r'platforms'] is Iterable
            ? (json[r'platforms'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapCastOfType<String, Object>(json, r'metadata')!,
        created: mapDateTime(json, r'created', r'')!,
        updated: mapDateTime(json, r'updated', r'')!,
      );
    }
    return null;
  }

  static List<ProductAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductAttributes> mapFromJson(dynamic json) {
    final map = <String, ProductAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductAttributes-objects as value to a dart map
  static Map<String, List<ProductAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'platforms',
    'metadata',
    'created',
    'updated',
  };
}

/// The strategy for distributing releases.  ### Options  - **`LICENSED`**:   Only licensed users, with a valid license, can access releases and release artifacts. API   authentication is required. - **`OPEN`**:   Anybody can access releases. No API authentication required, so this is a great option for rendering   releases on a public downloads page, open source projects, or freemium products. - **`CLOSED`**: Only admins can access releases. Download links will need to be generated server-side.   API authentication is required. 
class ProductAttributesDistributionStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const ProductAttributesDistributionStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LICENSED = ProductAttributesDistributionStrategyEnum._(r'LICENSED');
  static const OPEN = ProductAttributesDistributionStrategyEnum._(r'OPEN');
  static const CLOSED = ProductAttributesDistributionStrategyEnum._(r'CLOSED');

  /// List of all possible values in this [enum][ProductAttributesDistributionStrategyEnum].
  static const values = <ProductAttributesDistributionStrategyEnum>[
    LICENSED,
    OPEN,
    CLOSED,
  ];

  static ProductAttributesDistributionStrategyEnum? fromJson(dynamic value) => ProductAttributesDistributionStrategyEnumTypeTransformer().decode(value);

  static List<ProductAttributesDistributionStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductAttributesDistributionStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductAttributesDistributionStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProductAttributesDistributionStrategyEnum] to String,
/// and [decode] dynamic data back to [ProductAttributesDistributionStrategyEnum].
class ProductAttributesDistributionStrategyEnumTypeTransformer {
  factory ProductAttributesDistributionStrategyEnumTypeTransformer() => _instance ??= const ProductAttributesDistributionStrategyEnumTypeTransformer._();

  const ProductAttributesDistributionStrategyEnumTypeTransformer._();

  String encode(ProductAttributesDistributionStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProductAttributesDistributionStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProductAttributesDistributionStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LICENSED': return ProductAttributesDistributionStrategyEnum.LICENSED;
        case r'OPEN': return ProductAttributesDistributionStrategyEnum.OPEN;
        case r'CLOSED': return ProductAttributesDistributionStrategyEnum.CLOSED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProductAttributesDistributionStrategyEnumTypeTransformer] instance.
  static ProductAttributesDistributionStrategyEnumTypeTransformer? _instance;
}


