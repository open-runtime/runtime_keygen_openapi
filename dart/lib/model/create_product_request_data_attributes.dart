//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateProductRequestDataAttributes {
  /// Returns a new [CreateProductRequestDataAttributes] instance.
  CreateProductRequestDataAttributes({
    required this.name,
    this.url,
    this.distributionStrategy = const CreateProductRequestDataAttributesDistributionStrategyEnum._('LICENSED'),
    this.platforms = const [],
    this.metadata = const {},
  });

  /// The name of the product.
  String name;

  /// A related URL for the product.
  String? url;

  /// The strategy for distributing releases.
  CreateProductRequestDataAttributesDistributionStrategyEnum distributionStrategy;

  /// An array of platforms the product supports.
  List<String> platforms;

  /// Object containing product metadata.
  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateProductRequestDataAttributes &&
    other.name == name &&
    other.url == url &&
    other.distributionStrategy == distributionStrategy &&
    _deepEquality.equals(other.platforms, platforms) &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (distributionStrategy.hashCode) +
    (platforms.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'CreateProductRequestDataAttributes[name=$name, url=$url, distributionStrategy=$distributionStrategy, platforms=$platforms, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
      json[r'distributionStrategy'] = this.distributionStrategy;
      json[r'platforms'] = this.platforms;
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [CreateProductRequestDataAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateProductRequestDataAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateProductRequestDataAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateProductRequestDataAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateProductRequestDataAttributes(
        name: mapValueOfType<String>(json, r'name')!,
        url: mapValueOfType<String>(json, r'url'),
        // BEGIN MANUALLY MODIFIED AFTER OPENAPI-GENERATOR RAN
        distributionStrategy: CreateProductRequestDataAttributesDistributionStrategyEnum.fromJson(json[r'distributionStrategy']) ?? CreateProductRequestDataAttributesDistributionStrategyEnum.LICENSED,
        // END MANUALLY MODIFIED AFTER OPENAPI-GENERATOR RAN
        platforms: json[r'platforms'] is Iterable
            ? (json[r'platforms'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<CreateProductRequestDataAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateProductRequestDataAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateProductRequestDataAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateProductRequestDataAttributes> mapFromJson(dynamic json) {
    final map = <String, CreateProductRequestDataAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateProductRequestDataAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateProductRequestDataAttributes-objects as value to a dart map
  static Map<String, List<CreateProductRequestDataAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateProductRequestDataAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateProductRequestDataAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

/// The strategy for distributing releases.
class CreateProductRequestDataAttributesDistributionStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateProductRequestDataAttributesDistributionStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LICENSED = CreateProductRequestDataAttributesDistributionStrategyEnum._(r'LICENSED');
  static const OPEN = CreateProductRequestDataAttributesDistributionStrategyEnum._(r'OPEN');
  static const CLOSED = CreateProductRequestDataAttributesDistributionStrategyEnum._(r'CLOSED');

  /// List of all possible values in this [enum][CreateProductRequestDataAttributesDistributionStrategyEnum].
  static const values = <CreateProductRequestDataAttributesDistributionStrategyEnum>[
    LICENSED,
    OPEN,
    CLOSED,
  ];

  static CreateProductRequestDataAttributesDistributionStrategyEnum? fromJson(dynamic value) => CreateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer().decode(value);

  static List<CreateProductRequestDataAttributesDistributionStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateProductRequestDataAttributesDistributionStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateProductRequestDataAttributesDistributionStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateProductRequestDataAttributesDistributionStrategyEnum] to String,
/// and [decode] dynamic data back to [CreateProductRequestDataAttributesDistributionStrategyEnum].
class CreateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer {
  factory CreateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer() => _instance ??= const CreateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer._();

  const CreateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer._();

  String encode(CreateProductRequestDataAttributesDistributionStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateProductRequestDataAttributesDistributionStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateProductRequestDataAttributesDistributionStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LICENSED': return CreateProductRequestDataAttributesDistributionStrategyEnum.LICENSED;
        case r'OPEN': return CreateProductRequestDataAttributesDistributionStrategyEnum.OPEN;
        case r'CLOSED': return CreateProductRequestDataAttributesDistributionStrategyEnum.CLOSED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer] instance.
  static CreateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer? _instance;
}


