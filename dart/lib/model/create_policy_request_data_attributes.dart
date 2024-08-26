//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePolicyRequestDataAttributes {
  /// Returns a new [CreatePolicyRequestDataAttributes] instance.
  CreatePolicyRequestDataAttributes({
    required this.name,
    this.duration,
    this.scheme,
    this.strict = false,
    this.floating = false,
    this.requireProductScope = false,
    this.requirePolicyScope = false,
    this.requireMachineScope = false,
    this.requireFingerprintScope = false,
    this.requireUserScope = false,
    this.requireChecksumScope = false,
    this.requireVersionScope = false,
    this.requireCheckIn,
    this.checkInInterval,
    this.checkInIntervalCount,
    this.usePool = false,
    this.maxMachines,
    this.maxProcesses,
    this.maxCores,
    this.maxUses,
    this.protected,
    this.requireHeartbeat = false,
    this.heartbeatDuration,
    this.heartbeatCullStrategy = const CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum._('DEACTIVATE_DEAD'),
    this.heartbeatResurrectionStrategy = const CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._('NO_REVIVE'),
    this.heartbeatBasis,
    this.machineUniquenessStrategy = const CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum._('UNIQUE_PER_LICENSE'),
    this.machineMatchingStrategy = const CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum._('MATCH_ANY'),
    this.expirationStrategy = const CreatePolicyRequestDataAttributesExpirationStrategyEnum._('RESTRICT_ACCESS'),
    this.expirationBasis = const CreatePolicyRequestDataAttributesExpirationBasisEnum._('FROM_CREATION'),
    this.transferStrategy = const CreatePolicyRequestDataAttributesTransferStrategyEnum._('KEEP_EXPIRY'),
    this.authenticationStrategy = const CreatePolicyRequestDataAttributesAuthenticationStrategyEnum._('TOKEN'),
    this.machineLeasingStrategy,
    this.processLeasingStrategy,
    this.overageStrategy = const CreatePolicyRequestDataAttributesOverageStrategyEnum._('NO_OVERAGE'),
    this.metadata,
  });

  /// The name of the policy.
  String name;

  /// The duration for the policy in seconds.
  int? duration;

  CreatePolicyRequestDataAttributesSchemeEnum? scheme;

  /// When enabled, a license that implements the policy will be considered invalid if its machine limit, machine core limit, or processes limit is surpassed. 
  bool strict;

  /// When enabled, a license that implements the policy will be valid across multiple machines. 
  bool floating;

  /// When enabled, validating a license that implements the policy will require a product scope that matches the license's product relationship by its identifier (UUID). 
  bool requireProductScope;

  /// When enabled, validating a license that implements the policy will require a policy scope that matches the license's policy relationship by its identifier (UUID). 
  bool requirePolicyScope;

  /// When enabled, validating a license that implements the policy will require a machine scope that matches at least 1 of the license's machine relationships by its identifier (UUID). 
  bool requireMachineScope;

  /// When enabled, validating a license that implements the policy will require a fingerprint scope that matches at least 1 of the license's machine relationships by its fingerprint. 
  bool requireFingerprintScope;

  /// When enabled, validating a license that implements the policy will require a user scope that matches the license's user relationship. 
  bool requireUserScope;

  /// When enabled, validating a license that implements the policy will require a checksum scope to be provided, matching an accessible artifact for the license. 
  bool requireChecksumScope;

  /// When enabled, validating a license that implements the policy will require a version scope to be provided, matching an accessible release for the license. 
  bool requireVersionScope;

  /// When enabled, a license that implements the policy will require check-in at a predefined interval to continue to pass validation i.e. if a license misses a check-in, it will be invalidated. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requireCheckIn;

  /// The frequency at which a license should check-in.
  CreatePolicyRequestDataAttributesCheckInIntervalEnum? checkInInterval;

  /// The number of intervals (specified in the check-in interval property) between each required check-in. 
  int? checkInIntervalCount;

  /// Whether or not to pull license keys from a finite pool of pre-determined keys.
  bool usePool;

  /// The maximum number of machines a license implementing the policy can have associated with it. 
  int? maxMachines;

  /// The maximum number of machine processes a license implementing the policy can have associated with it, also depending on the policy's leasing strategy. 
  int? maxProcesses;

  /// The maximum number of machine CPU cores a license implementing the policy can have associated with it. 
  int? maxCores;

  /// The maximum number of uses a license implementing the policy can have.
  int? maxUses;

  /// Whether or not the policy is protected.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? protected;

  /// Whether or not the policy requires its machines to maintain a heartbeat.
  bool requireHeartbeat;

  /// The heartbeat duration for the policy, in seconds.
  int? heartbeatDuration;

  /// The strategy used for culling dead machines and processes.
  CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum heartbeatCullStrategy;

  /// The strategy used for controlling whether or not dead machines and processes can be resurrected shortly after death. 
  CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum heartbeatResurrectionStrategy;

  /// Control when a machine's initial heartbeat is started.
  CreatePolicyRequestDataAttributesHeartbeatBasisEnum? heartbeatBasis;

  /// The uniqueness validation strategy for machine fingerprints.
  CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum machineUniquenessStrategy;

  /// The matching strategy for machine fingerprints supplied during a license validation. 
  CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum machineMatchingStrategy;

  /// The strategy for expired licenses during a license validation and when accessing releases. 
  CreatePolicyRequestDataAttributesExpirationStrategyEnum expirationStrategy;

  /// Control when a license's initial expiry is set.
  CreatePolicyRequestDataAttributesExpirationBasisEnum expirationBasis;

  /// Control whether a license's expiration is reset when transferred to this policy.
  CreatePolicyRequestDataAttributesTransferStrategyEnum transferStrategy;

  /// The strategy used for authenticating as a license, for client-side integrations.
  CreatePolicyRequestDataAttributesAuthenticationStrategyEnum authenticationStrategy;

  /// The strategy used for leasing machines.  ### Options  - **`PER_LICENSE`**:   Machine processes are counted per-license, i.e. collectively across all of a license's machines. - **`PER_USER`**:   Machines are counted per-user, per-license. For example, with a max machines value of 2, each user could have 2 machines per-license. 
  CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum? machineLeasingStrategy;

  /// The strategy used for leasing machine processes.  ### Options  - **`PER_MACHINE`**:   Processes are counted per-machine. For example, given a policy with a max processes value of 5, each license could have up to 5 processes for each machine. This is the default.  - **`PER_LICENSE`**:   Processes are counted per-license. For example, with a max processes value of 5, each license could have up to 5 processes combined across all machines. - **`PER_USER`**:   Processes are counted per-user, per-license. For example, with a max processes value of 5, each user could have up to 5 processes combined across all owned machines per-license. 
  CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum? processLeasingStrategy;

  /// The strategy used for allowing machine, core and process overages.
  CreatePolicyRequestDataAttributesOverageStrategyEnum overageStrategy;

  /// Object containing policy metadata.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePolicyRequestDataAttributes &&
    other.name == name &&
    other.duration == duration &&
    other.scheme == scheme &&
    other.strict == strict &&
    other.floating == floating &&
    other.requireProductScope == requireProductScope &&
    other.requirePolicyScope == requirePolicyScope &&
    other.requireMachineScope == requireMachineScope &&
    other.requireFingerprintScope == requireFingerprintScope &&
    other.requireUserScope == requireUserScope &&
    other.requireChecksumScope == requireChecksumScope &&
    other.requireVersionScope == requireVersionScope &&
    other.requireCheckIn == requireCheckIn &&
    other.checkInInterval == checkInInterval &&
    other.checkInIntervalCount == checkInIntervalCount &&
    other.usePool == usePool &&
    other.maxMachines == maxMachines &&
    other.maxProcesses == maxProcesses &&
    other.maxCores == maxCores &&
    other.maxUses == maxUses &&
    other.protected == protected &&
    other.requireHeartbeat == requireHeartbeat &&
    other.heartbeatDuration == heartbeatDuration &&
    other.heartbeatCullStrategy == heartbeatCullStrategy &&
    other.heartbeatResurrectionStrategy == heartbeatResurrectionStrategy &&
    other.heartbeatBasis == heartbeatBasis &&
    other.machineUniquenessStrategy == machineUniquenessStrategy &&
    other.machineMatchingStrategy == machineMatchingStrategy &&
    other.expirationStrategy == expirationStrategy &&
    other.expirationBasis == expirationBasis &&
    other.transferStrategy == transferStrategy &&
    other.authenticationStrategy == authenticationStrategy &&
    other.machineLeasingStrategy == machineLeasingStrategy &&
    other.processLeasingStrategy == processLeasingStrategy &&
    other.overageStrategy == overageStrategy &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (scheme == null ? 0 : scheme!.hashCode) +
    (strict.hashCode) +
    (floating.hashCode) +
    (requireProductScope.hashCode) +
    (requirePolicyScope.hashCode) +
    (requireMachineScope.hashCode) +
    (requireFingerprintScope.hashCode) +
    (requireUserScope.hashCode) +
    (requireChecksumScope.hashCode) +
    (requireVersionScope.hashCode) +
    (requireCheckIn == null ? 0 : requireCheckIn!.hashCode) +
    (checkInInterval == null ? 0 : checkInInterval!.hashCode) +
    (checkInIntervalCount == null ? 0 : checkInIntervalCount!.hashCode) +
    (usePool.hashCode) +
    (maxMachines == null ? 0 : maxMachines!.hashCode) +
    (maxProcesses == null ? 0 : maxProcesses!.hashCode) +
    (maxCores == null ? 0 : maxCores!.hashCode) +
    (maxUses == null ? 0 : maxUses!.hashCode) +
    (protected == null ? 0 : protected!.hashCode) +
    (requireHeartbeat.hashCode) +
    (heartbeatDuration == null ? 0 : heartbeatDuration!.hashCode) +
    (heartbeatCullStrategy.hashCode) +
    (heartbeatResurrectionStrategy.hashCode) +
    (heartbeatBasis == null ? 0 : heartbeatBasis!.hashCode) +
    (machineUniquenessStrategy.hashCode) +
    (machineMatchingStrategy.hashCode) +
    (expirationStrategy.hashCode) +
    (expirationBasis.hashCode) +
    (transferStrategy.hashCode) +
    (authenticationStrategy.hashCode) +
    (machineLeasingStrategy == null ? 0 : machineLeasingStrategy!.hashCode) +
    (processLeasingStrategy == null ? 0 : processLeasingStrategy!.hashCode) +
    (overageStrategy.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'CreatePolicyRequestDataAttributes[name=$name, duration=$duration, scheme=$scheme, strict=$strict, floating=$floating, requireProductScope=$requireProductScope, requirePolicyScope=$requirePolicyScope, requireMachineScope=$requireMachineScope, requireFingerprintScope=$requireFingerprintScope, requireUserScope=$requireUserScope, requireChecksumScope=$requireChecksumScope, requireVersionScope=$requireVersionScope, requireCheckIn=$requireCheckIn, checkInInterval=$checkInInterval, checkInIntervalCount=$checkInIntervalCount, usePool=$usePool, maxMachines=$maxMachines, maxProcesses=$maxProcesses, maxCores=$maxCores, maxUses=$maxUses, protected=$protected, requireHeartbeat=$requireHeartbeat, heartbeatDuration=$heartbeatDuration, heartbeatCullStrategy=$heartbeatCullStrategy, heartbeatResurrectionStrategy=$heartbeatResurrectionStrategy, heartbeatBasis=$heartbeatBasis, machineUniquenessStrategy=$machineUniquenessStrategy, machineMatchingStrategy=$machineMatchingStrategy, expirationStrategy=$expirationStrategy, expirationBasis=$expirationBasis, transferStrategy=$transferStrategy, authenticationStrategy=$authenticationStrategy, machineLeasingStrategy=$machineLeasingStrategy, processLeasingStrategy=$processLeasingStrategy, overageStrategy=$overageStrategy, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.scheme != null) {
      json[r'scheme'] = this.scheme;
    } else {
      json[r'scheme'] = null;
    }
      json[r'strict'] = this.strict;
      json[r'floating'] = this.floating;
      json[r'requireProductScope'] = this.requireProductScope;
      json[r'requirePolicyScope'] = this.requirePolicyScope;
      json[r'requireMachineScope'] = this.requireMachineScope;
      json[r'requireFingerprintScope'] = this.requireFingerprintScope;
      json[r'requireUserScope'] = this.requireUserScope;
      json[r'requireChecksumScope'] = this.requireChecksumScope;
      json[r'requireVersionScope'] = this.requireVersionScope;
    if (this.requireCheckIn != null) {
      json[r'requireCheckIn'] = this.requireCheckIn;
    } else {
      json[r'requireCheckIn'] = null;
    }
    if (this.checkInInterval != null) {
      json[r'checkInInterval'] = this.checkInInterval;
    } else {
      json[r'checkInInterval'] = null;
    }
    if (this.checkInIntervalCount != null) {
      json[r'checkInIntervalCount'] = this.checkInIntervalCount;
    } else {
      json[r'checkInIntervalCount'] = null;
    }
      json[r'usePool'] = this.usePool;
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
    if (this.protected != null) {
      json[r'protected'] = this.protected;
    } else {
      json[r'protected'] = null;
    }
      json[r'requireHeartbeat'] = this.requireHeartbeat;
    if (this.heartbeatDuration != null) {
      json[r'heartbeatDuration'] = this.heartbeatDuration;
    } else {
      json[r'heartbeatDuration'] = null;
    }
      json[r'heartbeatCullStrategy'] = this.heartbeatCullStrategy;
      json[r'heartbeatResurrectionStrategy'] = this.heartbeatResurrectionStrategy;
    if (this.heartbeatBasis != null) {
      json[r'heartbeatBasis'] = this.heartbeatBasis;
    } else {
      json[r'heartbeatBasis'] = null;
    }
      json[r'machineUniquenessStrategy'] = this.machineUniquenessStrategy;
      json[r'machineMatchingStrategy'] = this.machineMatchingStrategy;
      json[r'expirationStrategy'] = this.expirationStrategy;
      json[r'expirationBasis'] = this.expirationBasis;
      json[r'transferStrategy'] = this.transferStrategy;
      json[r'authenticationStrategy'] = this.authenticationStrategy;
    if (this.machineLeasingStrategy != null) {
      json[r'machineLeasingStrategy'] = this.machineLeasingStrategy;
    } else {
      json[r'machineLeasingStrategy'] = null;
    }
    if (this.processLeasingStrategy != null) {
      json[r'processLeasingStrategy'] = this.processLeasingStrategy;
    } else {
      json[r'processLeasingStrategy'] = null;
    }
      json[r'overageStrategy'] = this.overageStrategy;
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [CreatePolicyRequestDataAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePolicyRequestDataAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePolicyRequestDataAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePolicyRequestDataAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePolicyRequestDataAttributes(
        name: mapValueOfType<String>(json, r'name')!,
        duration: mapValueOfType<int>(json, r'duration'),
        scheme: CreatePolicyRequestDataAttributesSchemeEnum.fromJson(json[r'scheme']),
        strict: mapValueOfType<bool>(json, r'strict') ?? false,
        floating: mapValueOfType<bool>(json, r'floating') ?? false,
        requireProductScope: mapValueOfType<bool>(json, r'requireProductScope') ?? false,
        requirePolicyScope: mapValueOfType<bool>(json, r'requirePolicyScope') ?? false,
        requireMachineScope: mapValueOfType<bool>(json, r'requireMachineScope') ?? false,
        requireFingerprintScope: mapValueOfType<bool>(json, r'requireFingerprintScope') ?? false,
        requireUserScope: mapValueOfType<bool>(json, r'requireUserScope') ?? false,
        requireChecksumScope: mapValueOfType<bool>(json, r'requireChecksumScope') ?? false,
        requireVersionScope: mapValueOfType<bool>(json, r'requireVersionScope') ?? false,
        requireCheckIn: mapValueOfType<bool>(json, r'requireCheckIn'),
        checkInInterval: CreatePolicyRequestDataAttributesCheckInIntervalEnum.fromJson(json[r'checkInInterval']),
        checkInIntervalCount: mapValueOfType<int>(json, r'checkInIntervalCount'),
        usePool: mapValueOfType<bool>(json, r'usePool') ?? false,
        maxMachines: mapValueOfType<int>(json, r'maxMachines'),
        maxProcesses: mapValueOfType<int>(json, r'maxProcesses'),
        maxCores: mapValueOfType<int>(json, r'maxCores'),
        maxUses: mapValueOfType<int>(json, r'maxUses'),
        protected: mapValueOfType<bool>(json, r'protected'),
        requireHeartbeat: mapValueOfType<bool>(json, r'requireHeartbeat') ?? false,
        heartbeatDuration: mapValueOfType<int>(json, r'heartbeatDuration'),
        // BEGIN MANUALLY MODIFIED AFTER OPENAPI-GENERATOR RAN
        heartbeatCullStrategy: CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum.fromJson(json[r'heartbeatCullStrategy']) ?? CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum.DEACTIVATE_DEAD,
        heartbeatResurrectionStrategy: CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.fromJson(json[r'heartbeatResurrectionStrategy']) ?? CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.NO_REVIVE,
        heartbeatBasis: CreatePolicyRequestDataAttributesHeartbeatBasisEnum.fromJson(json[r'heartbeatBasis']),
        machineUniquenessStrategy: CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.fromJson(json[r'machineUniquenessStrategy']) ?? CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.UNIQUE_PER_LICENSE,
        machineMatchingStrategy: CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum.fromJson(json[r'machineMatchingStrategy']) ?? CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum.MATCH_ANY,
        expirationStrategy: CreatePolicyRequestDataAttributesExpirationStrategyEnum.fromJson(json[r'expirationStrategy']) ?? CreatePolicyRequestDataAttributesExpirationStrategyEnum.RESTRICT_ACCESS,
        expirationBasis: CreatePolicyRequestDataAttributesExpirationBasisEnum.fromJson(json[r'expirationBasis']) ?? CreatePolicyRequestDataAttributesExpirationBasisEnum.FROM_CREATION,
        transferStrategy: CreatePolicyRequestDataAttributesTransferStrategyEnum.fromJson(json[r'transferStrategy']) ?? CreatePolicyRequestDataAttributesTransferStrategyEnum.KEEP_EXPIRY,
        authenticationStrategy: CreatePolicyRequestDataAttributesAuthenticationStrategyEnum.fromJson(json[r'authenticationStrategy']) ?? CreatePolicyRequestDataAttributesAuthenticationStrategyEnum.TOKEN,
        machineLeasingStrategy: CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum.fromJson(json[r'machineLeasingStrategy']),
        processLeasingStrategy: CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum.fromJson(json[r'processLeasingStrategy']),
        overageStrategy: CreatePolicyRequestDataAttributesOverageStrategyEnum.fromJson(json[r'overageStrategy']) ?? CreatePolicyRequestDataAttributesOverageStrategyEnum.NO_OVERAGE,
        // END MANUALLY MODIFIED AFTER OPENAPI-GENERATOR RAN
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<CreatePolicyRequestDataAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePolicyRequestDataAttributes> mapFromJson(dynamic json) {
    final map = <String, CreatePolicyRequestDataAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePolicyRequestDataAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePolicyRequestDataAttributes-objects as value to a dart map
  static Map<String, List<CreatePolicyRequestDataAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePolicyRequestDataAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePolicyRequestDataAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}


class CreatePolicyRequestDataAttributesSchemeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesSchemeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const eD25519SIGN = CreatePolicyRequestDataAttributesSchemeEnum._(r'ED25519_SIGN');
  static const rSA2048PKCS1PSSSIGNV2 = CreatePolicyRequestDataAttributesSchemeEnum._(r'RSA_2048_PKCS1_PSS_SIGN_V2');
  static const rSA2048PKCS1SIGNV2 = CreatePolicyRequestDataAttributesSchemeEnum._(r'RSA_2048_PKCS1_SIGN_V2');
  static const rSA2048PKCS1ENCRYPT = CreatePolicyRequestDataAttributesSchemeEnum._(r'RSA_2048_PKCS1_ENCRYPT');
  static const rSA2048JWTRS256 = CreatePolicyRequestDataAttributesSchemeEnum._(r'RSA_2048_JWT_RS256');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesSchemeEnum].
  static const values = <CreatePolicyRequestDataAttributesSchemeEnum>[
    eD25519SIGN,
    rSA2048PKCS1PSSSIGNV2,
    rSA2048PKCS1SIGNV2,
    rSA2048PKCS1ENCRYPT,
    rSA2048JWTRS256,
  ];

  static CreatePolicyRequestDataAttributesSchemeEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesSchemeEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesSchemeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesSchemeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesSchemeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesSchemeEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesSchemeEnum].
class CreatePolicyRequestDataAttributesSchemeEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesSchemeEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesSchemeEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesSchemeEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesSchemeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesSchemeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesSchemeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ED25519_SIGN': return CreatePolicyRequestDataAttributesSchemeEnum.eD25519SIGN;
        case r'RSA_2048_PKCS1_PSS_SIGN_V2': return CreatePolicyRequestDataAttributesSchemeEnum.rSA2048PKCS1PSSSIGNV2;
        case r'RSA_2048_PKCS1_SIGN_V2': return CreatePolicyRequestDataAttributesSchemeEnum.rSA2048PKCS1SIGNV2;
        case r'RSA_2048_PKCS1_ENCRYPT': return CreatePolicyRequestDataAttributesSchemeEnum.rSA2048PKCS1ENCRYPT;
        case r'RSA_2048_JWT_RS256': return CreatePolicyRequestDataAttributesSchemeEnum.rSA2048JWTRS256;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesSchemeEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesSchemeEnumTypeTransformer? _instance;
}


/// The frequency at which a license should check-in.
class CreatePolicyRequestDataAttributesCheckInIntervalEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesCheckInIntervalEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const day = CreatePolicyRequestDataAttributesCheckInIntervalEnum._(r'day');
  static const week = CreatePolicyRequestDataAttributesCheckInIntervalEnum._(r'week');
  static const month = CreatePolicyRequestDataAttributesCheckInIntervalEnum._(r'month');
  static const year = CreatePolicyRequestDataAttributesCheckInIntervalEnum._(r'year');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesCheckInIntervalEnum].
  static const values = <CreatePolicyRequestDataAttributesCheckInIntervalEnum>[
    day,
    week,
    month,
    year,
  ];

  static CreatePolicyRequestDataAttributesCheckInIntervalEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesCheckInIntervalEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesCheckInIntervalEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesCheckInIntervalEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesCheckInIntervalEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesCheckInIntervalEnum].
class CreatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesCheckInIntervalEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesCheckInIntervalEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesCheckInIntervalEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'day': return CreatePolicyRequestDataAttributesCheckInIntervalEnum.day;
        case r'week': return CreatePolicyRequestDataAttributesCheckInIntervalEnum.week;
        case r'month': return CreatePolicyRequestDataAttributesCheckInIntervalEnum.month;
        case r'year': return CreatePolicyRequestDataAttributesCheckInIntervalEnum.year;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer? _instance;
}


/// The strategy used for culling dead machines and processes.
class CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEACTIVATE_DEAD = CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum._(r'DEACTIVATE_DEAD');
  static const KEEP_DEAD = CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum._(r'KEEP_DEAD');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum].
  static const values = <CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum>[
    DEACTIVATE_DEAD,
    KEEP_DEAD,
  ];

  static CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum].
class CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEACTIVATE_DEAD': return CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum.DEACTIVATE_DEAD;
        case r'KEEP_DEAD': return CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnum.KEEP_DEAD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for controlling whether or not dead machines and processes can be resurrected shortly after death. 
class CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NO_REVIVE = CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'NO_REVIVE');
  static const n1mINUTEREVIVE = CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'1_MINUTE_REVIVE');
  static const n2mINUTEREVIVE = CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'2_MINUTE_REVIVE');
  static const n5mINUTEREVIVE = CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'5_MINUTE_REVIVE');
  static const n10mINUTEREVIVE = CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'10_MINUTE_REVIVE');
  static const n15mINUTEREVIVE = CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'15_MINUTE_REVIVE');
  static const ALWAYS_REVIVE = CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'ALWAYS_REVIVE');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum].
  static const values = <CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum>[
    NO_REVIVE,
    n1mINUTEREVIVE,
    n2mINUTEREVIVE,
    n5mINUTEREVIVE,
    n10mINUTEREVIVE,
    n15mINUTEREVIVE,
    ALWAYS_REVIVE,
  ];

  static CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum].
class CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NO_REVIVE': return CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.NO_REVIVE;
        case r'1_MINUTE_REVIVE': return CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.n1mINUTEREVIVE;
        case r'2_MINUTE_REVIVE': return CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.n2mINUTEREVIVE;
        case r'5_MINUTE_REVIVE': return CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.n5mINUTEREVIVE;
        case r'10_MINUTE_REVIVE': return CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.n10mINUTEREVIVE;
        case r'15_MINUTE_REVIVE': return CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.n15mINUTEREVIVE;
        case r'ALWAYS_REVIVE': return CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.ALWAYS_REVIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer? _instance;
}


/// Control when a machine's initial heartbeat is started.
class CreatePolicyRequestDataAttributesHeartbeatBasisEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesHeartbeatBasisEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FROM_CREATION = CreatePolicyRequestDataAttributesHeartbeatBasisEnum._(r'FROM_CREATION');
  static const FROM_FIRST_PING = CreatePolicyRequestDataAttributesHeartbeatBasisEnum._(r'FROM_FIRST_PING');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesHeartbeatBasisEnum].
  static const values = <CreatePolicyRequestDataAttributesHeartbeatBasisEnum>[
    FROM_CREATION,
    FROM_FIRST_PING,
  ];

  static CreatePolicyRequestDataAttributesHeartbeatBasisEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesHeartbeatBasisEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesHeartbeatBasisEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesHeartbeatBasisEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesHeartbeatBasisEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesHeartbeatBasisEnum].
class CreatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesHeartbeatBasisEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesHeartbeatBasisEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesHeartbeatBasisEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FROM_CREATION': return CreatePolicyRequestDataAttributesHeartbeatBasisEnum.FROM_CREATION;
        case r'FROM_FIRST_PING': return CreatePolicyRequestDataAttributesHeartbeatBasisEnum.FROM_FIRST_PING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer? _instance;
}


/// The uniqueness validation strategy for machine fingerprints.
class CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UNIQUE_PER_ACCOUNT = CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum._(r'UNIQUE_PER_ACCOUNT');
  static const UNIQUE_PER_PRODUCT = CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum._(r'UNIQUE_PER_PRODUCT');
  static const UNIQUE_PER_POLICY = CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum._(r'UNIQUE_PER_POLICY');
  static const UNIQUE_PER_LICENSE = CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum._(r'UNIQUE_PER_LICENSE');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum].
  static const values = <CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum>[
    UNIQUE_PER_ACCOUNT,
    UNIQUE_PER_PRODUCT,
    UNIQUE_PER_POLICY,
    UNIQUE_PER_LICENSE,
  ];

  static CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum].
class CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UNIQUE_PER_ACCOUNT': return CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.UNIQUE_PER_ACCOUNT;
        case r'UNIQUE_PER_PRODUCT': return CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.UNIQUE_PER_PRODUCT;
        case r'UNIQUE_PER_POLICY': return CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.UNIQUE_PER_POLICY;
        case r'UNIQUE_PER_LICENSE': return CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.UNIQUE_PER_LICENSE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer? _instance;
}


/// The matching strategy for machine fingerprints supplied during a license validation. 
class CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MATCH_ANY = CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum._(r'MATCH_ANY');
  static const MATCH_TWO = CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum._(r'MATCH_TWO');
  static const MATCH_MOST = CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum._(r'MATCH_MOST');
  static const MATCH_ALL = CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum._(r'MATCH_ALL');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum].
  static const values = <CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum>[
    MATCH_ANY,
    MATCH_TWO,
    MATCH_MOST,
    MATCH_ALL,
  ];

  static CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum].
class CreatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MATCH_ANY': return CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum.MATCH_ANY;
        case r'MATCH_TWO': return CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum.MATCH_TWO;
        case r'MATCH_MOST': return CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum.MATCH_MOST;
        case r'MATCH_ALL': return CreatePolicyRequestDataAttributesMachineMatchingStrategyEnum.MATCH_ALL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer? _instance;
}


/// The strategy for expired licenses during a license validation and when accessing releases. 
class CreatePolicyRequestDataAttributesExpirationStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesExpirationStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RESTRICT_ACCESS = CreatePolicyRequestDataAttributesExpirationStrategyEnum._(r'RESTRICT_ACCESS');
  static const REVOKE_ACCESS = CreatePolicyRequestDataAttributesExpirationStrategyEnum._(r'REVOKE_ACCESS');
  static const MAINTAIN_ACCESS = CreatePolicyRequestDataAttributesExpirationStrategyEnum._(r'MAINTAIN_ACCESS');
  static const ALLOW_ACCESS = CreatePolicyRequestDataAttributesExpirationStrategyEnum._(r'ALLOW_ACCESS');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesExpirationStrategyEnum].
  static const values = <CreatePolicyRequestDataAttributesExpirationStrategyEnum>[
    RESTRICT_ACCESS,
    REVOKE_ACCESS,
    MAINTAIN_ACCESS,
    ALLOW_ACCESS,
  ];

  static CreatePolicyRequestDataAttributesExpirationStrategyEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesExpirationStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesExpirationStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesExpirationStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesExpirationStrategyEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesExpirationStrategyEnum].
class CreatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesExpirationStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesExpirationStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesExpirationStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RESTRICT_ACCESS': return CreatePolicyRequestDataAttributesExpirationStrategyEnum.RESTRICT_ACCESS;
        case r'REVOKE_ACCESS': return CreatePolicyRequestDataAttributesExpirationStrategyEnum.REVOKE_ACCESS;
        case r'MAINTAIN_ACCESS': return CreatePolicyRequestDataAttributesExpirationStrategyEnum.MAINTAIN_ACCESS;
        case r'ALLOW_ACCESS': return CreatePolicyRequestDataAttributesExpirationStrategyEnum.ALLOW_ACCESS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer? _instance;
}


/// Control when a license's initial expiry is set.
class CreatePolicyRequestDataAttributesExpirationBasisEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesExpirationBasisEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FROM_CREATION = CreatePolicyRequestDataAttributesExpirationBasisEnum._(r'FROM_CREATION');
  static const FROM_FIRST_VALIDATION = CreatePolicyRequestDataAttributesExpirationBasisEnum._(r'FROM_FIRST_VALIDATION');
  static const FROM_FIRST_ACTIVATION = CreatePolicyRequestDataAttributesExpirationBasisEnum._(r'FROM_FIRST_ACTIVATION');
  static const FROM_FIRST_DOWNLOAD = CreatePolicyRequestDataAttributesExpirationBasisEnum._(r'FROM_FIRST_DOWNLOAD');
  static const FROM_FIRST_USE = CreatePolicyRequestDataAttributesExpirationBasisEnum._(r'FROM_FIRST_USE');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesExpirationBasisEnum].
  static const values = <CreatePolicyRequestDataAttributesExpirationBasisEnum>[
    FROM_CREATION,
    FROM_FIRST_VALIDATION,
    FROM_FIRST_ACTIVATION,
    FROM_FIRST_DOWNLOAD,
    FROM_FIRST_USE,
  ];

  static CreatePolicyRequestDataAttributesExpirationBasisEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesExpirationBasisEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesExpirationBasisEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesExpirationBasisEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesExpirationBasisEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesExpirationBasisEnum].
class CreatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesExpirationBasisEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesExpirationBasisEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesExpirationBasisEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FROM_CREATION': return CreatePolicyRequestDataAttributesExpirationBasisEnum.FROM_CREATION;
        case r'FROM_FIRST_VALIDATION': return CreatePolicyRequestDataAttributesExpirationBasisEnum.FROM_FIRST_VALIDATION;
        case r'FROM_FIRST_ACTIVATION': return CreatePolicyRequestDataAttributesExpirationBasisEnum.FROM_FIRST_ACTIVATION;
        case r'FROM_FIRST_DOWNLOAD': return CreatePolicyRequestDataAttributesExpirationBasisEnum.FROM_FIRST_DOWNLOAD;
        case r'FROM_FIRST_USE': return CreatePolicyRequestDataAttributesExpirationBasisEnum.FROM_FIRST_USE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer? _instance;
}


/// Control whether a license's expiration is reset when transferred to this policy.
class CreatePolicyRequestDataAttributesTransferStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesTransferStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RESET_EXPIRY = CreatePolicyRequestDataAttributesTransferStrategyEnum._(r'RESET_EXPIRY');
  static const KEEP_EXPIRY = CreatePolicyRequestDataAttributesTransferStrategyEnum._(r'KEEP_EXPIRY');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesTransferStrategyEnum].
  static const values = <CreatePolicyRequestDataAttributesTransferStrategyEnum>[
    RESET_EXPIRY,
    KEEP_EXPIRY,
  ];

  static CreatePolicyRequestDataAttributesTransferStrategyEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesTransferStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesTransferStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesTransferStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesTransferStrategyEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesTransferStrategyEnum].
class CreatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesTransferStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesTransferStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesTransferStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RESET_EXPIRY': return CreatePolicyRequestDataAttributesTransferStrategyEnum.RESET_EXPIRY;
        case r'KEEP_EXPIRY': return CreatePolicyRequestDataAttributesTransferStrategyEnum.KEEP_EXPIRY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for authenticating as a license, for client-side integrations.
class CreatePolicyRequestDataAttributesAuthenticationStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesAuthenticationStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TOKEN = CreatePolicyRequestDataAttributesAuthenticationStrategyEnum._(r'TOKEN');
  static const LICENSE = CreatePolicyRequestDataAttributesAuthenticationStrategyEnum._(r'LICENSE');
  static const MIXED = CreatePolicyRequestDataAttributesAuthenticationStrategyEnum._(r'MIXED');
  static const NONE = CreatePolicyRequestDataAttributesAuthenticationStrategyEnum._(r'NONE');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesAuthenticationStrategyEnum].
  static const values = <CreatePolicyRequestDataAttributesAuthenticationStrategyEnum>[
    TOKEN,
    LICENSE,
    MIXED,
    NONE,
  ];

  static CreatePolicyRequestDataAttributesAuthenticationStrategyEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesAuthenticationStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesAuthenticationStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesAuthenticationStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesAuthenticationStrategyEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesAuthenticationStrategyEnum].
class CreatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesAuthenticationStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesAuthenticationStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesAuthenticationStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TOKEN': return CreatePolicyRequestDataAttributesAuthenticationStrategyEnum.TOKEN;
        case r'LICENSE': return CreatePolicyRequestDataAttributesAuthenticationStrategyEnum.LICENSE;
        case r'MIXED': return CreatePolicyRequestDataAttributesAuthenticationStrategyEnum.MIXED;
        case r'NONE': return CreatePolicyRequestDataAttributesAuthenticationStrategyEnum.NONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for leasing machines.  ### Options  - **`PER_LICENSE`**:   Machine processes are counted per-license, i.e. collectively across all of a license's machines. - **`PER_USER`**:   Machines are counted per-user, per-license. For example, with a max machines value of 2, each user could have 2 machines per-license. 
class CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PER_LICENSE = CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum._(r'PER_LICENSE');
  static const PER_USER = CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum._(r'PER_USER');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum].
  static const values = <CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum>[
    PER_LICENSE,
    PER_USER,
  ];

  static CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum].
class CreatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PER_LICENSE': return CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum.PER_LICENSE;
        case r'PER_USER': return CreatePolicyRequestDataAttributesMachineLeasingStrategyEnum.PER_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for leasing machine processes.  ### Options  - **`PER_MACHINE`**:   Processes are counted per-machine. For example, given a policy with a max processes value of 5, each license could have up to 5 processes for each machine. This is the default.  - **`PER_LICENSE`**:   Processes are counted per-license. For example, with a max processes value of 5, each license could have up to 5 processes combined across all machines. - **`PER_USER`**:   Processes are counted per-user, per-license. For example, with a max processes value of 5, each user could have up to 5 processes combined across all owned machines per-license. 
class CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PER_MACHINE = CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum._(r'PER_MACHINE');
  static const PER_LICENSE = CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum._(r'PER_LICENSE');
  static const PER_USER = CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum._(r'PER_USER');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum].
  static const values = <CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum>[
    PER_MACHINE,
    PER_LICENSE,
    PER_USER,
  ];

  static CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum].
class CreatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PER_MACHINE': return CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum.PER_MACHINE;
        case r'PER_LICENSE': return CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum.PER_LICENSE;
        case r'PER_USER': return CreatePolicyRequestDataAttributesProcessLeasingStrategyEnum.PER_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for allowing machine, core and process overages.
class CreatePolicyRequestDataAttributesOverageStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePolicyRequestDataAttributesOverageStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALWAYS_ALLOW_OVERAGE = CreatePolicyRequestDataAttributesOverageStrategyEnum._(r'ALWAYS_ALLOW_OVERAGE');
  static const aLLOW125XOVERAGE = CreatePolicyRequestDataAttributesOverageStrategyEnum._(r'ALLOW_1_25X_OVERAGE');
  static const aLLOW15XOVERAGE = CreatePolicyRequestDataAttributesOverageStrategyEnum._(r'ALLOW_1_5X_OVERAGE');
  static const aLLOW2XOVERAGE = CreatePolicyRequestDataAttributesOverageStrategyEnum._(r'ALLOW_2X_OVERAGE');
  static const NO_OVERAGE = CreatePolicyRequestDataAttributesOverageStrategyEnum._(r'NO_OVERAGE');

  /// List of all possible values in this [enum][CreatePolicyRequestDataAttributesOverageStrategyEnum].
  static const values = <CreatePolicyRequestDataAttributesOverageStrategyEnum>[
    ALWAYS_ALLOW_OVERAGE,
    aLLOW125XOVERAGE,
    aLLOW15XOVERAGE,
    aLLOW2XOVERAGE,
    NO_OVERAGE,
  ];

  static CreatePolicyRequestDataAttributesOverageStrategyEnum? fromJson(dynamic value) => CreatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer().decode(value);

  static List<CreatePolicyRequestDataAttributesOverageStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePolicyRequestDataAttributesOverageStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePolicyRequestDataAttributesOverageStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePolicyRequestDataAttributesOverageStrategyEnum] to String,
/// and [decode] dynamic data back to [CreatePolicyRequestDataAttributesOverageStrategyEnum].
class CreatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer {
  factory CreatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer() => _instance ??= const CreatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer._();

  const CreatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer._();

  String encode(CreatePolicyRequestDataAttributesOverageStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePolicyRequestDataAttributesOverageStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePolicyRequestDataAttributesOverageStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALWAYS_ALLOW_OVERAGE': return CreatePolicyRequestDataAttributesOverageStrategyEnum.ALWAYS_ALLOW_OVERAGE;
        case r'ALLOW_1_25X_OVERAGE': return CreatePolicyRequestDataAttributesOverageStrategyEnum.aLLOW125XOVERAGE;
        case r'ALLOW_1_5X_OVERAGE': return CreatePolicyRequestDataAttributesOverageStrategyEnum.aLLOW15XOVERAGE;
        case r'ALLOW_2X_OVERAGE': return CreatePolicyRequestDataAttributesOverageStrategyEnum.aLLOW2XOVERAGE;
        case r'NO_OVERAGE': return CreatePolicyRequestDataAttributesOverageStrategyEnum.NO_OVERAGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer] instance.
  static CreatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer? _instance;
}


