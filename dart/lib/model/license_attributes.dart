//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LicenseAttributes {
  /// Returns a new [LicenseAttributes] instance.
  LicenseAttributes({
    this.name,
    required this.key,
    this.expiry,
    required this.status,
    required this.uses,
    required this.protected,
    this.version,
    required this.suspended,
    required this.floating,
    this.scheme,
    required this.strict,
    required this.maxMachines,
    this.maxProcesses,
    this.maxCores,
    this.maxUses,
    required this.requireHeartbeat,
    required this.requireCheckIn,
    this.lastValidated,
    this.lastCheckOut,
    this.lastCheckIn,
    this.nextCheckIn,
    this.metadata = const {},
    required this.created,
    required this.updated,
  });

  /// The name of the license. This can be used to distinguish licenses from each other.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// A unique pre-determined key for the license. License keys are immutable values. Cannot be used on legacy encrypted licenses. This attribute will be automatically generated or popped from the remaining pool if left blank and the chosen scheme supports auto-generated keys. Depending on the policy's [cryptographic scheme](https://keygen.sh/docs/api/cryptography/#cryptographic-keys) (if any), the key attribute may be required for a 'seed' dataset to embed into the final key, and the key may have other requirements that must be met regarding dataset length and formatting. The key and its signature may be [`base64url` encoded](https://keygen.sh/docs/api/signatures/), depending on the chosen scheme. 
  String key;

  /// When the license will expire. Calculated from the license's policy, i.e. `time.now + policy.duration`, at the time of creation and/or renewal. 
  DateTime? expiry;

  /// The license's status, for filtering purposes and to ascertain overall status at-a-glance. An active license is a license that has been created, validated, checked out, or checked in within the last 90 days. An expiring license is a license that is expiring within the next 3 days. One of: `ACTIVE`, `INACTIVE`, `EXPIRING`, `EXPIRED`, `SUSPENDED`, or `BANNED`. 
  LicenseAttributesStatusEnum status;

  /// The license's current usage count. This can be incremented, decremented, or reset using the license's usage-related actions. Cannot exceed `2,147,483,647`, which is the maximum value of a 4 byte integer. 
  int uses;

  /// The license's last validated release version.
  bool protected;

  /// The version of the license. This is useful for versioning your licenses, e.g. for a beta program. This attribute is not taken into account during license validation. See the license's usage-related actions for more details. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  /// Whether or not the license is suspended. A suspended license will always fail validation.
  bool suspended;

  /// Whether or not the license is floating. This is inherited from the policy.
  bool floating;

  /// The cryptographic encryption/signature scheme used on the license's key. Can be used to implement offline licensing by securely storing arbitrary data within a license's key. 
  LicenseAttributesSchemeEnum? scheme;

  /// Whether or not the policy is strict. This is inherited from the policy.
  bool strict;

  /// The maximum number of machines the license can have associated with it. This is by default inherited from the policy, but can be overridden on a per-license basis. 
  int? maxMachines;

  /// The maximum number of machine processes the license can have associated with it. This is by default inherited from the policy, but can be overridden on a per-license basis. 
  int? maxProcesses;

  /// The maximum number of machine CPU cores the license can have associated with it. The count is the sum of all cores for the license's machines. This is by default inherited from the policy, but can be overridden on a per-license basis. 
  int? maxCores;

  /// The maximum number of uses the license is allowed to have. This is by default inherited from the policy, but can be overridden on a per-license basis. 
  int? maxUses;

  /// Whether or not machines require heartbeat pings. This is inherited from the policy.
  bool requireHeartbeat;

  /// Whether or not the license will require check-in at a predefined interval to continue to pass validation i.e. if a license misses a check-in, it will be invalidated. This is inherited from the policy. 
  bool requireCheckIn;

  /// When the license was last validated.
  DateTime? lastValidated;

  /// When the license was last checked-out.
  DateTime? lastCheckOut;

  /// When the license was last checked-in. This is `null` if the policy does not require check-ins. 
  DateTime? lastCheckIn;

  /// The time at which the license is required to check-in by. This is `null` if the policy does not require check-ins. 
  DateTime? nextCheckIn;

  /// Object containing license metadata.
  Map<String, Object> metadata;

  /// When the license was created.
  DateTime created;

  /// When the license was last updated.
  DateTime updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseAttributes &&
    other.name == name &&
    other.key == key &&
    other.expiry == expiry &&
    other.status == status &&
    other.uses == uses &&
    other.protected == protected &&
    other.version == version &&
    other.suspended == suspended &&
    other.floating == floating &&
    other.scheme == scheme &&
    other.strict == strict &&
    other.maxMachines == maxMachines &&
    other.maxProcesses == maxProcesses &&
    other.maxCores == maxCores &&
    other.maxUses == maxUses &&
    other.requireHeartbeat == requireHeartbeat &&
    other.requireCheckIn == requireCheckIn &&
    other.lastValidated == lastValidated &&
    other.lastCheckOut == lastCheckOut &&
    other.lastCheckIn == lastCheckIn &&
    other.nextCheckIn == nextCheckIn &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.created == created &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (key.hashCode) +
    (expiry == null ? 0 : expiry!.hashCode) +
    (status.hashCode) +
    (uses.hashCode) +
    (protected.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (suspended.hashCode) +
    (floating.hashCode) +
    (scheme == null ? 0 : scheme!.hashCode) +
    (strict.hashCode) +
    (maxMachines == null ? 0 : maxMachines!.hashCode) +
    (maxProcesses == null ? 0 : maxProcesses!.hashCode) +
    (maxCores == null ? 0 : maxCores!.hashCode) +
    (maxUses == null ? 0 : maxUses!.hashCode) +
    (requireHeartbeat.hashCode) +
    (requireCheckIn.hashCode) +
    (lastValidated == null ? 0 : lastValidated!.hashCode) +
    (lastCheckOut == null ? 0 : lastCheckOut!.hashCode) +
    (lastCheckIn == null ? 0 : lastCheckIn!.hashCode) +
    (nextCheckIn == null ? 0 : nextCheckIn!.hashCode) +
    (metadata.hashCode) +
    (created.hashCode) +
    (updated.hashCode);

  @override
  String toString() => 'LicenseAttributes[name=$name, key=$key, expiry=$expiry, status=$status, uses=$uses, protected=$protected, version=$version, suspended=$suspended, floating=$floating, scheme=$scheme, strict=$strict, maxMachines=$maxMachines, maxProcesses=$maxProcesses, maxCores=$maxCores, maxUses=$maxUses, requireHeartbeat=$requireHeartbeat, requireCheckIn=$requireCheckIn, lastValidated=$lastValidated, lastCheckOut=$lastCheckOut, lastCheckIn=$lastCheckIn, nextCheckIn=$nextCheckIn, metadata=$metadata, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'key'] = this.key;
    if (this.expiry != null) {
      json[r'expiry'] = this.expiry!.toUtc().toIso8601String();
    } else {
      json[r'expiry'] = null;
    }
      json[r'status'] = this.status;
      json[r'uses'] = this.uses;
      json[r'protected'] = this.protected;
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
      json[r'suspended'] = this.suspended;
      json[r'floating'] = this.floating;
    if (this.scheme != null) {
      json[r'scheme'] = this.scheme;
    } else {
      json[r'scheme'] = null;
    }
      json[r'strict'] = this.strict;
    if (this.maxMachines != null) {
      json[r'maxMachines'] = this.maxMachines;
    } else {
      json[r'maxMachines'] = null;
    }
    if (this.maxProcesses != null) {
      json[r'maxProcesses'] = this.maxProcesses;
    } else {
      json[r'maxProcesses'] = null;
    }
    if (this.maxCores != null) {
      json[r'maxCores'] = this.maxCores;
    } else {
      json[r'maxCores'] = null;
    }
    if (this.maxUses != null) {
      json[r'maxUses'] = this.maxUses;
    } else {
      json[r'maxUses'] = null;
    }
      json[r'requireHeartbeat'] = this.requireHeartbeat;
      json[r'requireCheckIn'] = this.requireCheckIn;
    if (this.lastValidated != null) {
      json[r'lastValidated'] = this.lastValidated!.toUtc().toIso8601String();
    } else {
      json[r'lastValidated'] = null;
    }
    if (this.lastCheckOut != null) {
      json[r'lastCheckOut'] = this.lastCheckOut!.toUtc().toIso8601String();
    } else {
      json[r'lastCheckOut'] = null;
    }
    if (this.lastCheckIn != null) {
      json[r'lastCheckIn'] = this.lastCheckIn!.toUtc().toIso8601String();
    } else {
      json[r'lastCheckIn'] = null;
    }
    if (this.nextCheckIn != null) {
      json[r'nextCheckIn'] = this.nextCheckIn!.toUtc().toIso8601String();
    } else {
      json[r'nextCheckIn'] = null;
    }
      json[r'metadata'] = this.metadata;
      json[r'created'] = this.created.toUtc().toIso8601String();
      json[r'updated'] = this.updated.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [LicenseAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicenseAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicenseAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicenseAttributes(
        name: mapValueOfType<String>(json, r'name'),
        key: mapValueOfType<String>(json, r'key')!,
        expiry: mapDateTime(json, r'expiry', r''),
        status: LicenseAttributesStatusEnum.fromJson(json[r'status'])!,
        uses: mapValueOfType<int>(json, r'uses')!,
        protected: mapValueOfType<bool>(json, r'protected')!,
        version: mapValueOfType<String>(json, r'version'),
        suspended: mapValueOfType<bool>(json, r'suspended')!,
        floating: mapValueOfType<bool>(json, r'floating')!,
        scheme: LicenseAttributesSchemeEnum.fromJson(json[r'scheme']),
        strict: mapValueOfType<bool>(json, r'strict')!,
        maxMachines: mapValueOfType<int>(json, r'maxMachines'),
        maxProcesses: mapValueOfType<int>(json, r'maxProcesses'),
        maxCores: mapValueOfType<int>(json, r'maxCores'),
        maxUses: mapValueOfType<int>(json, r'maxUses'),
        requireHeartbeat: mapValueOfType<bool>(json, r'requireHeartbeat')!,
        requireCheckIn: mapValueOfType<bool>(json, r'requireCheckIn')!,
        lastValidated: mapDateTime(json, r'lastValidated', r''),
        lastCheckOut: mapDateTime(json, r'lastCheckOut', r''),
        lastCheckIn: mapDateTime(json, r'lastCheckIn', r''),
        nextCheckIn: mapDateTime(json, r'nextCheckIn', r''),
        metadata: mapCastOfType<String, Object>(json, r'metadata')!,
        created: mapDateTime(json, r'created', r'')!,
        updated: mapDateTime(json, r'updated', r'')!,
      );
    }
    return null;
  }

  static List<LicenseAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseAttributes> mapFromJson(dynamic json) {
    final map = <String, LicenseAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseAttributes-objects as value to a dart map
  static Map<String, List<LicenseAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicenseAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'status',
    'uses',
    'protected',
    'suspended',
    'floating',
    'strict',
    'maxMachines',
    'requireHeartbeat',
    'requireCheckIn',
    'metadata',
    'created',
    'updated',
  };
}

/// The license's status, for filtering purposes and to ascertain overall status at-a-glance. An active license is a license that has been created, validated, checked out, or checked in within the last 90 days. An expiring license is a license that is expiring within the next 3 days. One of: `ACTIVE`, `INACTIVE`, `EXPIRING`, `EXPIRED`, `SUSPENDED`, or `BANNED`. 
class LicenseAttributesStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const LicenseAttributesStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = LicenseAttributesStatusEnum._(r'ACTIVE');
  static const INACTIVE = LicenseAttributesStatusEnum._(r'INACTIVE');
  static const EXPIRING = LicenseAttributesStatusEnum._(r'EXPIRING');
  static const EXPIRED = LicenseAttributesStatusEnum._(r'EXPIRED');
  static const SUSPENDED = LicenseAttributesStatusEnum._(r'SUSPENDED');
  static const BANNED = LicenseAttributesStatusEnum._(r'BANNED');

  /// List of all possible values in this [enum][LicenseAttributesStatusEnum].
  static const values = <LicenseAttributesStatusEnum>[
    ACTIVE,
    INACTIVE,
    EXPIRING,
    EXPIRED,
    SUSPENDED,
    BANNED,
  ];

  static LicenseAttributesStatusEnum? fromJson(dynamic value) => LicenseAttributesStatusEnumTypeTransformer().decode(value);

  static List<LicenseAttributesStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseAttributesStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseAttributesStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LicenseAttributesStatusEnum] to String,
/// and [decode] dynamic data back to [LicenseAttributesStatusEnum].
class LicenseAttributesStatusEnumTypeTransformer {
  factory LicenseAttributesStatusEnumTypeTransformer() => _instance ??= const LicenseAttributesStatusEnumTypeTransformer._();

  const LicenseAttributesStatusEnumTypeTransformer._();

  String encode(LicenseAttributesStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LicenseAttributesStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LicenseAttributesStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACTIVE': return LicenseAttributesStatusEnum.ACTIVE;
        case r'INACTIVE': return LicenseAttributesStatusEnum.INACTIVE;
        case r'EXPIRING': return LicenseAttributesStatusEnum.EXPIRING;
        case r'EXPIRED': return LicenseAttributesStatusEnum.EXPIRED;
        case r'SUSPENDED': return LicenseAttributesStatusEnum.SUSPENDED;
        case r'BANNED': return LicenseAttributesStatusEnum.BANNED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LicenseAttributesStatusEnumTypeTransformer] instance.
  static LicenseAttributesStatusEnumTypeTransformer? _instance;
}


/// The cryptographic encryption/signature scheme used on the license's key. Can be used to implement offline licensing by securely storing arbitrary data within a license's key. 
class LicenseAttributesSchemeEnum {
  /// Instantiate a new enum with the provided [value].
  const LicenseAttributesSchemeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const rSA2048JWTRS256 = LicenseAttributesSchemeEnum._(r'RSA_2048_JWT_RS256');
  static const eD25519JWTEDDSA = LicenseAttributesSchemeEnum._(r'ED25519_JWT_EDDSA');

  /// List of all possible values in this [enum][LicenseAttributesSchemeEnum].
  static const values = <LicenseAttributesSchemeEnum>[
    rSA2048JWTRS256,
    eD25519JWTEDDSA,
  ];

  static LicenseAttributesSchemeEnum? fromJson(dynamic value) => LicenseAttributesSchemeEnumTypeTransformer().decode(value);

  static List<LicenseAttributesSchemeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseAttributesSchemeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseAttributesSchemeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LicenseAttributesSchemeEnum] to String,
/// and [decode] dynamic data back to [LicenseAttributesSchemeEnum].
class LicenseAttributesSchemeEnumTypeTransformer {
  factory LicenseAttributesSchemeEnumTypeTransformer() => _instance ??= const LicenseAttributesSchemeEnumTypeTransformer._();

  const LicenseAttributesSchemeEnumTypeTransformer._();

  String encode(LicenseAttributesSchemeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LicenseAttributesSchemeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LicenseAttributesSchemeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RSA_2048_JWT_RS256': return LicenseAttributesSchemeEnum.rSA2048JWTRS256;
        case r'ED25519_JWT_EDDSA': return LicenseAttributesSchemeEnum.eD25519JWTEDDSA;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LicenseAttributesSchemeEnumTypeTransformer] instance.
  static LicenseAttributesSchemeEnumTypeTransformer? _instance;
}


