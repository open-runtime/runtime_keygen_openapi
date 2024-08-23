//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateProductRequestDataAttributes {
  /// Returns a new [UpdateProductRequestDataAttributes] instance.
  UpdateProductRequestDataAttributes({
    this.name,
    this.url,
    this.distributionStrategy,
    this.platforms = const [],
    this.metadata = const {},
  });

  /// The name of the product.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// A related URL for the product e.g. the marketing website, company website, etc.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  /// The strategy for distributing releases.
  UpdateProductRequestDataAttributesDistributionStrategyEnum? distributionStrategy;

  /// An array of platforms the product supports.
  List<String> platforms;

  /// Object containing product metadata.
  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateProductRequestDataAttributes &&
    other.name == name &&
    other.url == url &&
    other.distributionStrategy == distributionStrategy &&
    _deepEquality.equals(other.platforms, platforms) &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (distributionStrategy == null ? 0 : distributionStrategy!.hashCode) +
    (platforms.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'UpdateProductRequestDataAttributes[name=$name, url=$url, distributionStrategy=$distributionStrategy, platforms=$platforms, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
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
    return json;
  }

  /// Returns a new [UpdateProductRequestDataAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateProductRequestDataAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateProductRequestDataAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateProductRequestDataAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateProductRequestDataAttributes(
        name: mapValueOfType<String>(json, r'name'),
        url: mapValueOfType<String>(json, r'url'),
        distributionStrategy: UpdateProductRequestDataAttributesDistributionStrategyEnum.fromJson(json[r'distributionStrategy']),
        platforms: json[r'platforms'] is Iterable
            ? (json[r'platforms'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<UpdateProductRequestDataAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateProductRequestDataAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateProductRequestDataAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateProductRequestDataAttributes> mapFromJson(dynamic json) {
    final map = <String, UpdateProductRequestDataAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateProductRequestDataAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateProductRequestDataAttributes-objects as value to a dart map
  static Map<String, List<UpdateProductRequestDataAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateProductRequestDataAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateProductRequestDataAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// The strategy for distributing releases.
class UpdateProductRequestDataAttributesDistributionStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateProductRequestDataAttributesDistributionStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LICENSED = UpdateProductRequestDataAttributesDistributionStrategyEnum._(r'LICENSED');
  static const OPEN = UpdateProductRequestDataAttributesDistributionStrategyEnum._(r'OPEN');
  static const CLOSED = UpdateProductRequestDataAttributesDistributionStrategyEnum._(r'CLOSED');

  /// List of all possible values in this [enum][UpdateProductRequestDataAttributesDistributionStrategyEnum].
  static const values = <UpdateProductRequestDataAttributesDistributionStrategyEnum>[
    LICENSED,
    OPEN,
    CLOSED,
  ];

  static UpdateProductRequestDataAttributesDistributionStrategyEnum? fromJson(dynamic value) => UpdateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer().decode(value);

  static List<UpdateProductRequestDataAttributesDistributionStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateProductRequestDataAttributesDistributionStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateProductRequestDataAttributesDistributionStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateProductRequestDataAttributesDistributionStrategyEnum] to String,
/// and [decode] dynamic data back to [UpdateProductRequestDataAttributesDistributionStrategyEnum].
class UpdateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer {
  factory UpdateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer() => _instance ??= const UpdateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer._();

  const UpdateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer._();

  String encode(UpdateProductRequestDataAttributesDistributionStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateProductRequestDataAttributesDistributionStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateProductRequestDataAttributesDistributionStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LICENSED': return UpdateProductRequestDataAttributesDistributionStrategyEnum.LICENSED;
        case r'OPEN': return UpdateProductRequestDataAttributesDistributionStrategyEnum.OPEN;
        case r'CLOSED': return UpdateProductRequestDataAttributesDistributionStrategyEnum.CLOSED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer] instance.
  static UpdateProductRequestDataAttributesDistributionStrategyEnumTypeTransformer? _instance;
}


