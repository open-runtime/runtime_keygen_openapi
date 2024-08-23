//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdatePolicyRequestDataAttributes {
  /// Returns a new [UpdatePolicyRequestDataAttributes] instance.
  UpdatePolicyRequestDataAttributes({
    this.name,
    this.duration,
    this.strict,
    this.floating,
    this.requireProductScope,
    this.requirePolicyScope,
    this.requireMachineScope,
    this.requireFingerprintScope,
    this.requireUserScope,
    this.requireChecksumScope,
    this.requireVersionScope,
    this.requireCheckIn,
    this.checkInInterval,
    this.checkInIntervalCount,
    this.maxMachines,
    this.maxProcesses,
    this.maxCores,
    this.maxUses,
    this.protected,
    this.requireHeartbeat,
    this.heartbeatDuration,
    this.heartbeatCullStrategy,
    this.heartbeatResurrectionStrategy,
    this.heartbeatBasis,
    this.machineUniquenessStrategy,
    this.machineMatchingStrategy,
    this.expirationStrategy,
    this.expirationBasis,
    this.transferStrategy,
    this.authenticationStrategy,
    this.machineLeasingStrategy,
    this.processLeasingStrategy,
    this.overageStrategy,
    this.metadata,
  });

  /// The name of the policy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The duration for the policy in seconds.
  int? duration;

  /// When enabled, a license that implements the policy will be considered invalid if its machine limit, machine core limit, or processes limit is surpassed. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? strict;

  /// When enabled, a license that implements the policy will be valid across multiple machines. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? floating;

  /// When enabled, validating a license that implements the policy will require a product scope that matches the license's product relationship by its identifier (UUID). 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requireProductScope;

  /// When enabled, validating a license that implements the policy will require a policy scope that matches the license's policy relationship by its identifier (UUID). 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requirePolicyScope;

  /// When enabled, validating a license that implements the policy will require a machine scope that matches at least 1 of the license's machine relationships by its identifier (UUID). 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requireMachineScope;

  /// When enabled, validating a license that implements the policy will require a fingerprint scope that matches at least 1 of the license's machine relationships by its fingerprint. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requireFingerprintScope;

  /// When enabled, validating a license that implements the policy will require a user scope that matches the license's user relationship. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requireUserScope;

  /// When enabled, validating a license that implements the policy will require a checksum scope to be provided, matching an accessible artifact for the license. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requireChecksumScope;

  /// When enabled, validating a license that implements the policy will require a version scope to be provided, matching an accessible release for the license. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requireVersionScope;

  /// When enabled, a license that implements the policy will require check-in at a predefined interval to continue to pass validation i.e. if a license misses a check-in, it will be invalidated. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requireCheckIn;

  /// The frequency at which a license should check-in.
  UpdatePolicyRequestDataAttributesCheckInIntervalEnum? checkInInterval;

  /// The number of intervals (specified in the check-in interval property) between each required check-in. 
  int? checkInIntervalCount;

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
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requireHeartbeat;

  /// The heartbeat duration for the policy, in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? heartbeatDuration;

  /// The strategy used for culling dead machines and processes.
  UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum? heartbeatCullStrategy;

  /// The strategy used for controlling whether or not dead machines and processes can be resurrected shortly after death. 
  UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum? heartbeatResurrectionStrategy;

  /// Control when a machine's initial heartbeat is started.
  UpdatePolicyRequestDataAttributesHeartbeatBasisEnum? heartbeatBasis;

  /// The uniqueness validation strategy for machine fingerprints.
  UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum? machineUniquenessStrategy;

  /// The matching strategy for machine fingerprints supplied during a license validation. 
  UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum? machineMatchingStrategy;

  /// The strategy for expired licenses during a license validation and when accessing releases. 
  UpdatePolicyRequestDataAttributesExpirationStrategyEnum? expirationStrategy;

  /// Control when a license's initial expiry is set.
  UpdatePolicyRequestDataAttributesExpirationBasisEnum? expirationBasis;

  /// Control whether a license's expiration is reset when transferred to this policy.
  UpdatePolicyRequestDataAttributesTransferStrategyEnum? transferStrategy;

  /// The strategy used for authenticating as a license, for client-side integrations.
  UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum? authenticationStrategy;

  /// The strategy used for leasing machines.  ### Options  - **`PER_LICENSE`**:   Machine processes are counted per-license, i.e. collectively across all of a license's machines. - **`PER_USER`**:   Machines are counted per-user, per-license. For example, with a max machines value of 2, each user could have 2 machines per-license. 
  UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum? machineLeasingStrategy;

  /// The strategy used for leasing machine processes.  ### Options  - **`PER_MACHINE`**:   Processes are counted per-machine. For example, given a policy with a max processes value of 5, each license could have up to 5 processes for each machine. This is the default.  - **`PER_LICENSE`**:   Processes are counted per-license. For example, with a max processes value of 5, each license could have up to 5 processes combined across all machines. - **`PER_USER`**:   Processes are counted per-user, per-license. For example, with a max processes value of 5, each user could have up to 5 processes combined across all owned machines per-license. 
  UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum? processLeasingStrategy;

  /// The strategy used for allowing machine, core and process overages.
  UpdatePolicyRequestDataAttributesOverageStrategyEnum? overageStrategy;

  /// Object containing policy metadata.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdatePolicyRequestDataAttributes &&
    other.name == name &&
    other.duration == duration &&
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
    (name == null ? 0 : name!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (strict == null ? 0 : strict!.hashCode) +
    (floating == null ? 0 : floating!.hashCode) +
    (requireProductScope == null ? 0 : requireProductScope!.hashCode) +
    (requirePolicyScope == null ? 0 : requirePolicyScope!.hashCode) +
    (requireMachineScope == null ? 0 : requireMachineScope!.hashCode) +
    (requireFingerprintScope == null ? 0 : requireFingerprintScope!.hashCode) +
    (requireUserScope == null ? 0 : requireUserScope!.hashCode) +
    (requireChecksumScope == null ? 0 : requireChecksumScope!.hashCode) +
    (requireVersionScope == null ? 0 : requireVersionScope!.hashCode) +
    (requireCheckIn == null ? 0 : requireCheckIn!.hashCode) +
    (checkInInterval == null ? 0 : checkInInterval!.hashCode) +
    (checkInIntervalCount == null ? 0 : checkInIntervalCount!.hashCode) +
    (maxMachines == null ? 0 : maxMachines!.hashCode) +
    (maxProcesses == null ? 0 : maxProcesses!.hashCode) +
    (maxCores == null ? 0 : maxCores!.hashCode) +
    (maxUses == null ? 0 : maxUses!.hashCode) +
    (protected == null ? 0 : protected!.hashCode) +
    (requireHeartbeat == null ? 0 : requireHeartbeat!.hashCode) +
    (heartbeatDuration == null ? 0 : heartbeatDuration!.hashCode) +
    (heartbeatCullStrategy == null ? 0 : heartbeatCullStrategy!.hashCode) +
    (heartbeatResurrectionStrategy == null ? 0 : heartbeatResurrectionStrategy!.hashCode) +
    (heartbeatBasis == null ? 0 : heartbeatBasis!.hashCode) +
    (machineUniquenessStrategy == null ? 0 : machineUniquenessStrategy!.hashCode) +
    (machineMatchingStrategy == null ? 0 : machineMatchingStrategy!.hashCode) +
    (expirationStrategy == null ? 0 : expirationStrategy!.hashCode) +
    (expirationBasis == null ? 0 : expirationBasis!.hashCode) +
    (transferStrategy == null ? 0 : transferStrategy!.hashCode) +
    (authenticationStrategy == null ? 0 : authenticationStrategy!.hashCode) +
    (machineLeasingStrategy == null ? 0 : machineLeasingStrategy!.hashCode) +
    (processLeasingStrategy == null ? 0 : processLeasingStrategy!.hashCode) +
    (overageStrategy == null ? 0 : overageStrategy!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'UpdatePolicyRequestDataAttributes[name=$name, duration=$duration, strict=$strict, floating=$floating, requireProductScope=$requireProductScope, requirePolicyScope=$requirePolicyScope, requireMachineScope=$requireMachineScope, requireFingerprintScope=$requireFingerprintScope, requireUserScope=$requireUserScope, requireChecksumScope=$requireChecksumScope, requireVersionScope=$requireVersionScope, requireCheckIn=$requireCheckIn, checkInInterval=$checkInInterval, checkInIntervalCount=$checkInIntervalCount, maxMachines=$maxMachines, maxProcesses=$maxProcesses, maxCores=$maxCores, maxUses=$maxUses, protected=$protected, requireHeartbeat=$requireHeartbeat, heartbeatDuration=$heartbeatDuration, heartbeatCullStrategy=$heartbeatCullStrategy, heartbeatResurrectionStrategy=$heartbeatResurrectionStrategy, heartbeatBasis=$heartbeatBasis, machineUniquenessStrategy=$machineUniquenessStrategy, machineMatchingStrategy=$machineMatchingStrategy, expirationStrategy=$expirationStrategy, expirationBasis=$expirationBasis, transferStrategy=$transferStrategy, authenticationStrategy=$authenticationStrategy, machineLeasingStrategy=$machineLeasingStrategy, processLeasingStrategy=$processLeasingStrategy, overageStrategy=$overageStrategy, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.strict != null) {
      json[r'strict'] = this.strict;
    } else {
      json[r'strict'] = null;
    }
    if (this.floating != null) {
      json[r'floating'] = this.floating;
    } else {
      json[r'floating'] = null;
    }
    if (this.requireProductScope != null) {
      json[r'requireProductScope'] = this.requireProductScope;
    } else {
      json[r'requireProductScope'] = null;
    }
    if (this.requirePolicyScope != null) {
      json[r'requirePolicyScope'] = this.requirePolicyScope;
    } else {
      json[r'requirePolicyScope'] = null;
    }
    if (this.requireMachineScope != null) {
      json[r'requireMachineScope'] = this.requireMachineScope;
    } else {
      json[r'requireMachineScope'] = null;
    }
    if (this.requireFingerprintScope != null) {
      json[r'requireFingerprintScope'] = this.requireFingerprintScope;
    } else {
      json[r'requireFingerprintScope'] = null;
    }
    if (this.requireUserScope != null) {
      json[r'requireUserScope'] = this.requireUserScope;
    } else {
      json[r'requireUserScope'] = null;
    }
    if (this.requireChecksumScope != null) {
      json[r'requireChecksumScope'] = this.requireChecksumScope;
    } else {
      json[r'requireChecksumScope'] = null;
    }
    if (this.requireVersionScope != null) {
      json[r'requireVersionScope'] = this.requireVersionScope;
    } else {
      json[r'requireVersionScope'] = null;
    }
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
    if (this.requireHeartbeat != null) {
      json[r'requireHeartbeat'] = this.requireHeartbeat;
    } else {
      json[r'requireHeartbeat'] = null;
    }
    if (this.heartbeatDuration != null) {
      json[r'heartbeatDuration'] = this.heartbeatDuration;
    } else {
      json[r'heartbeatDuration'] = null;
    }
    if (this.heartbeatCullStrategy != null) {
      json[r'heartbeatCullStrategy'] = this.heartbeatCullStrategy;
    } else {
      json[r'heartbeatCullStrategy'] = null;
    }
    if (this.heartbeatResurrectionStrategy != null) {
      json[r'heartbeatResurrectionStrategy'] = this.heartbeatResurrectionStrategy;
    } else {
      json[r'heartbeatResurrectionStrategy'] = null;
    }
    if (this.heartbeatBasis != null) {
      json[r'heartbeatBasis'] = this.heartbeatBasis;
    } else {
      json[r'heartbeatBasis'] = null;
    }
    if (this.machineUniquenessStrategy != null) {
      json[r'machineUniquenessStrategy'] = this.machineUniquenessStrategy;
    } else {
      json[r'machineUniquenessStrategy'] = null;
    }
    if (this.machineMatchingStrategy != null) {
      json[r'machineMatchingStrategy'] = this.machineMatchingStrategy;
    } else {
      json[r'machineMatchingStrategy'] = null;
    }
    if (this.expirationStrategy != null) {
      json[r'expirationStrategy'] = this.expirationStrategy;
    } else {
      json[r'expirationStrategy'] = null;
    }
    if (this.expirationBasis != null) {
      json[r'expirationBasis'] = this.expirationBasis;
    } else {
      json[r'expirationBasis'] = null;
    }
    if (this.transferStrategy != null) {
      json[r'transferStrategy'] = this.transferStrategy;
    } else {
      json[r'transferStrategy'] = null;
    }
    if (this.authenticationStrategy != null) {
      json[r'authenticationStrategy'] = this.authenticationStrategy;
    } else {
      json[r'authenticationStrategy'] = null;
    }
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
    if (this.overageStrategy != null) {
      json[r'overageStrategy'] = this.overageStrategy;
    } else {
      json[r'overageStrategy'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [UpdatePolicyRequestDataAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdatePolicyRequestDataAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdatePolicyRequestDataAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdatePolicyRequestDataAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdatePolicyRequestDataAttributes(
        name: mapValueOfType<String>(json, r'name'),
        duration: mapValueOfType<int>(json, r'duration'),
        strict: mapValueOfType<bool>(json, r'strict'),
        floating: mapValueOfType<bool>(json, r'floating'),
        requireProductScope: mapValueOfType<bool>(json, r'requireProductScope'),
        requirePolicyScope: mapValueOfType<bool>(json, r'requirePolicyScope'),
        requireMachineScope: mapValueOfType<bool>(json, r'requireMachineScope'),
        requireFingerprintScope: mapValueOfType<bool>(json, r'requireFingerprintScope'),
        requireUserScope: mapValueOfType<bool>(json, r'requireUserScope'),
        requireChecksumScope: mapValueOfType<bool>(json, r'requireChecksumScope'),
        requireVersionScope: mapValueOfType<bool>(json, r'requireVersionScope'),
        requireCheckIn: mapValueOfType<bool>(json, r'requireCheckIn'),
        checkInInterval: UpdatePolicyRequestDataAttributesCheckInIntervalEnum.fromJson(json[r'checkInInterval']),
        checkInIntervalCount: mapValueOfType<int>(json, r'checkInIntervalCount'),
        maxMachines: mapValueOfType<int>(json, r'maxMachines'),
        maxProcesses: mapValueOfType<int>(json, r'maxProcesses'),
        maxCores: mapValueOfType<int>(json, r'maxCores'),
        maxUses: mapValueOfType<int>(json, r'maxUses'),
        protected: mapValueOfType<bool>(json, r'protected'),
        requireHeartbeat: mapValueOfType<bool>(json, r'requireHeartbeat'),
        heartbeatDuration: mapValueOfType<int>(json, r'heartbeatDuration'),
        heartbeatCullStrategy: UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum.fromJson(json[r'heartbeatCullStrategy']),
        heartbeatResurrectionStrategy: UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.fromJson(json[r'heartbeatResurrectionStrategy']),
        heartbeatBasis: UpdatePolicyRequestDataAttributesHeartbeatBasisEnum.fromJson(json[r'heartbeatBasis']),
        machineUniquenessStrategy: UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.fromJson(json[r'machineUniquenessStrategy']),
        machineMatchingStrategy: UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum.fromJson(json[r'machineMatchingStrategy']),
        expirationStrategy: UpdatePolicyRequestDataAttributesExpirationStrategyEnum.fromJson(json[r'expirationStrategy']),
        expirationBasis: UpdatePolicyRequestDataAttributesExpirationBasisEnum.fromJson(json[r'expirationBasis']),
        transferStrategy: UpdatePolicyRequestDataAttributesTransferStrategyEnum.fromJson(json[r'transferStrategy']),
        authenticationStrategy: UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum.fromJson(json[r'authenticationStrategy']),
        machineLeasingStrategy: UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum.fromJson(json[r'machineLeasingStrategy']),
        processLeasingStrategy: UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum.fromJson(json[r'processLeasingStrategy']),
        overageStrategy: UpdatePolicyRequestDataAttributesOverageStrategyEnum.fromJson(json[r'overageStrategy']),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<UpdatePolicyRequestDataAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdatePolicyRequestDataAttributes> mapFromJson(dynamic json) {
    final map = <String, UpdatePolicyRequestDataAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdatePolicyRequestDataAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdatePolicyRequestDataAttributes-objects as value to a dart map
  static Map<String, List<UpdatePolicyRequestDataAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdatePolicyRequestDataAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdatePolicyRequestDataAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// The frequency at which a license should check-in.
class UpdatePolicyRequestDataAttributesCheckInIntervalEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePolicyRequestDataAttributesCheckInIntervalEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const day = UpdatePolicyRequestDataAttributesCheckInIntervalEnum._(r'day');
  static const week = UpdatePolicyRequestDataAttributesCheckInIntervalEnum._(r'week');
  static const month = UpdatePolicyRequestDataAttributesCheckInIntervalEnum._(r'month');
  static const year = UpdatePolicyRequestDataAttributesCheckInIntervalEnum._(r'year');

  /// List of all possible values in this [enum][UpdatePolicyRequestDataAttributesCheckInIntervalEnum].
  static const values = <UpdatePolicyRequestDataAttributesCheckInIntervalEnum>[
    day,
    week,
    month,
    year,
  ];

  static UpdatePolicyRequestDataAttributesCheckInIntervalEnum? fromJson(dynamic value) => UpdatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer().decode(value);

  static List<UpdatePolicyRequestDataAttributesCheckInIntervalEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributesCheckInIntervalEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributesCheckInIntervalEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePolicyRequestDataAttributesCheckInIntervalEnum] to String,
/// and [decode] dynamic data back to [UpdatePolicyRequestDataAttributesCheckInIntervalEnum].
class UpdatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer {
  factory UpdatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer() => _instance ??= const UpdatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer._();

  const UpdatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer._();

  String encode(UpdatePolicyRequestDataAttributesCheckInIntervalEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePolicyRequestDataAttributesCheckInIntervalEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePolicyRequestDataAttributesCheckInIntervalEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'day': return UpdatePolicyRequestDataAttributesCheckInIntervalEnum.day;
        case r'week': return UpdatePolicyRequestDataAttributesCheckInIntervalEnum.week;
        case r'month': return UpdatePolicyRequestDataAttributesCheckInIntervalEnum.month;
        case r'year': return UpdatePolicyRequestDataAttributesCheckInIntervalEnum.year;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer] instance.
  static UpdatePolicyRequestDataAttributesCheckInIntervalEnumTypeTransformer? _instance;
}


/// The strategy used for culling dead machines and processes.
class UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEACTIVATE_DEAD = UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum._(r'DEACTIVATE_DEAD');
  static const KEEP_DEAD = UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum._(r'KEEP_DEAD');

  /// List of all possible values in this [enum][UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum].
  static const values = <UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum>[
    DEACTIVATE_DEAD,
    KEEP_DEAD,
  ];

  static UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum? fromJson(dynamic value) => UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer().decode(value);

  static List<UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum] to String,
/// and [decode] dynamic data back to [UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum].
class UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer {
  factory UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer() => _instance ??= const UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer._();

  const UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer._();

  String encode(UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEACTIVATE_DEAD': return UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum.DEACTIVATE_DEAD;
        case r'KEEP_DEAD': return UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnum.KEEP_DEAD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer] instance.
  static UpdatePolicyRequestDataAttributesHeartbeatCullStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for controlling whether or not dead machines and processes can be resurrected shortly after death. 
class UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NO_REVIVE = UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'NO_REVIVE');
  static const n1mINUTEREVIVE = UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'1_MINUTE_REVIVE');
  static const n2mINUTEREVIVE = UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'2_MINUTE_REVIVE');
  static const n5mINUTEREVIVE = UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'5_MINUTE_REVIVE');
  static const n10mINUTEREVIVE = UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'10_MINUTE_REVIVE');
  static const n15mINUTEREVIVE = UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'15_MINUTE_REVIVE');
  static const ALWAYS_REVIVE = UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum._(r'ALWAYS_REVIVE');

  /// List of all possible values in this [enum][UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum].
  static const values = <UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum>[
    NO_REVIVE,
    n1mINUTEREVIVE,
    n2mINUTEREVIVE,
    n5mINUTEREVIVE,
    n10mINUTEREVIVE,
    n15mINUTEREVIVE,
    ALWAYS_REVIVE,
  ];

  static UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum? fromJson(dynamic value) => UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer().decode(value);

  static List<UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum] to String,
/// and [decode] dynamic data back to [UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum].
class UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer {
  factory UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer() => _instance ??= const UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer._();

  const UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer._();

  String encode(UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NO_REVIVE': return UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.NO_REVIVE;
        case r'1_MINUTE_REVIVE': return UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.n1mINUTEREVIVE;
        case r'2_MINUTE_REVIVE': return UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.n2mINUTEREVIVE;
        case r'5_MINUTE_REVIVE': return UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.n5mINUTEREVIVE;
        case r'10_MINUTE_REVIVE': return UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.n10mINUTEREVIVE;
        case r'15_MINUTE_REVIVE': return UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.n15mINUTEREVIVE;
        case r'ALWAYS_REVIVE': return UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnum.ALWAYS_REVIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer] instance.
  static UpdatePolicyRequestDataAttributesHeartbeatResurrectionStrategyEnumTypeTransformer? _instance;
}


/// Control when a machine's initial heartbeat is started.
class UpdatePolicyRequestDataAttributesHeartbeatBasisEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePolicyRequestDataAttributesHeartbeatBasisEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FROM_CREATION = UpdatePolicyRequestDataAttributesHeartbeatBasisEnum._(r'FROM_CREATION');
  static const FROM_FIRST_PING = UpdatePolicyRequestDataAttributesHeartbeatBasisEnum._(r'FROM_FIRST_PING');

  /// List of all possible values in this [enum][UpdatePolicyRequestDataAttributesHeartbeatBasisEnum].
  static const values = <UpdatePolicyRequestDataAttributesHeartbeatBasisEnum>[
    FROM_CREATION,
    FROM_FIRST_PING,
  ];

  static UpdatePolicyRequestDataAttributesHeartbeatBasisEnum? fromJson(dynamic value) => UpdatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer().decode(value);

  static List<UpdatePolicyRequestDataAttributesHeartbeatBasisEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributesHeartbeatBasisEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributesHeartbeatBasisEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePolicyRequestDataAttributesHeartbeatBasisEnum] to String,
/// and [decode] dynamic data back to [UpdatePolicyRequestDataAttributesHeartbeatBasisEnum].
class UpdatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer {
  factory UpdatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer() => _instance ??= const UpdatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer._();

  const UpdatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer._();

  String encode(UpdatePolicyRequestDataAttributesHeartbeatBasisEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePolicyRequestDataAttributesHeartbeatBasisEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePolicyRequestDataAttributesHeartbeatBasisEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FROM_CREATION': return UpdatePolicyRequestDataAttributesHeartbeatBasisEnum.FROM_CREATION;
        case r'FROM_FIRST_PING': return UpdatePolicyRequestDataAttributesHeartbeatBasisEnum.FROM_FIRST_PING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer] instance.
  static UpdatePolicyRequestDataAttributesHeartbeatBasisEnumTypeTransformer? _instance;
}


/// The uniqueness validation strategy for machine fingerprints.
class UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UNIQUE_PER_ACCOUNT = UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum._(r'UNIQUE_PER_ACCOUNT');
  static const UNIQUE_PER_PRODUCT = UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum._(r'UNIQUE_PER_PRODUCT');
  static const UNIQUE_PER_POLICY = UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum._(r'UNIQUE_PER_POLICY');
  static const UNIQUE_PER_LICENSE = UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum._(r'UNIQUE_PER_LICENSE');

  /// List of all possible values in this [enum][UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum].
  static const values = <UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum>[
    UNIQUE_PER_ACCOUNT,
    UNIQUE_PER_PRODUCT,
    UNIQUE_PER_POLICY,
    UNIQUE_PER_LICENSE,
  ];

  static UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum? fromJson(dynamic value) => UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer().decode(value);

  static List<UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum] to String,
/// and [decode] dynamic data back to [UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum].
class UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer {
  factory UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer() => _instance ??= const UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer._();

  const UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer._();

  String encode(UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UNIQUE_PER_ACCOUNT': return UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.UNIQUE_PER_ACCOUNT;
        case r'UNIQUE_PER_PRODUCT': return UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.UNIQUE_PER_PRODUCT;
        case r'UNIQUE_PER_POLICY': return UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.UNIQUE_PER_POLICY;
        case r'UNIQUE_PER_LICENSE': return UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnum.UNIQUE_PER_LICENSE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer] instance.
  static UpdatePolicyRequestDataAttributesMachineUniquenessStrategyEnumTypeTransformer? _instance;
}


/// The matching strategy for machine fingerprints supplied during a license validation. 
class UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MATCH_ANY = UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum._(r'MATCH_ANY');
  static const MATCH_TWO = UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum._(r'MATCH_TWO');
  static const MATCH_MOST = UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum._(r'MATCH_MOST');
  static const MATCH_ALL = UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum._(r'MATCH_ALL');

  /// List of all possible values in this [enum][UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum].
  static const values = <UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum>[
    MATCH_ANY,
    MATCH_TWO,
    MATCH_MOST,
    MATCH_ALL,
  ];

  static UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum? fromJson(dynamic value) => UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer().decode(value);

  static List<UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum] to String,
/// and [decode] dynamic data back to [UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum].
class UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer {
  factory UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer() => _instance ??= const UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer._();

  const UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer._();

  String encode(UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MATCH_ANY': return UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum.MATCH_ANY;
        case r'MATCH_TWO': return UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum.MATCH_TWO;
        case r'MATCH_MOST': return UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum.MATCH_MOST;
        case r'MATCH_ALL': return UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnum.MATCH_ALL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer] instance.
  static UpdatePolicyRequestDataAttributesMachineMatchingStrategyEnumTypeTransformer? _instance;
}


/// The strategy for expired licenses during a license validation and when accessing releases. 
class UpdatePolicyRequestDataAttributesExpirationStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePolicyRequestDataAttributesExpirationStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RESTRICT_ACCESS = UpdatePolicyRequestDataAttributesExpirationStrategyEnum._(r'RESTRICT_ACCESS');
  static const REVOKE_ACCESS = UpdatePolicyRequestDataAttributesExpirationStrategyEnum._(r'REVOKE_ACCESS');
  static const MAINTAIN_ACCESS = UpdatePolicyRequestDataAttributesExpirationStrategyEnum._(r'MAINTAIN_ACCESS');
  static const ALLOW_ACCESS = UpdatePolicyRequestDataAttributesExpirationStrategyEnum._(r'ALLOW_ACCESS');

  /// List of all possible values in this [enum][UpdatePolicyRequestDataAttributesExpirationStrategyEnum].
  static const values = <UpdatePolicyRequestDataAttributesExpirationStrategyEnum>[
    RESTRICT_ACCESS,
    REVOKE_ACCESS,
    MAINTAIN_ACCESS,
    ALLOW_ACCESS,
  ];

  static UpdatePolicyRequestDataAttributesExpirationStrategyEnum? fromJson(dynamic value) => UpdatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer().decode(value);

  static List<UpdatePolicyRequestDataAttributesExpirationStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributesExpirationStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributesExpirationStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePolicyRequestDataAttributesExpirationStrategyEnum] to String,
/// and [decode] dynamic data back to [UpdatePolicyRequestDataAttributesExpirationStrategyEnum].
class UpdatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer {
  factory UpdatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer() => _instance ??= const UpdatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer._();

  const UpdatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer._();

  String encode(UpdatePolicyRequestDataAttributesExpirationStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePolicyRequestDataAttributesExpirationStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePolicyRequestDataAttributesExpirationStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RESTRICT_ACCESS': return UpdatePolicyRequestDataAttributesExpirationStrategyEnum.RESTRICT_ACCESS;
        case r'REVOKE_ACCESS': return UpdatePolicyRequestDataAttributesExpirationStrategyEnum.REVOKE_ACCESS;
        case r'MAINTAIN_ACCESS': return UpdatePolicyRequestDataAttributesExpirationStrategyEnum.MAINTAIN_ACCESS;
        case r'ALLOW_ACCESS': return UpdatePolicyRequestDataAttributesExpirationStrategyEnum.ALLOW_ACCESS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer] instance.
  static UpdatePolicyRequestDataAttributesExpirationStrategyEnumTypeTransformer? _instance;
}


/// Control when a license's initial expiry is set.
class UpdatePolicyRequestDataAttributesExpirationBasisEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePolicyRequestDataAttributesExpirationBasisEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FROM_CREATION = UpdatePolicyRequestDataAttributesExpirationBasisEnum._(r'FROM_CREATION');
  static const FROM_FIRST_VALIDATION = UpdatePolicyRequestDataAttributesExpirationBasisEnum._(r'FROM_FIRST_VALIDATION');
  static const FROM_FIRST_ACTIVATION = UpdatePolicyRequestDataAttributesExpirationBasisEnum._(r'FROM_FIRST_ACTIVATION');
  static const FROM_FIRST_DOWNLOAD = UpdatePolicyRequestDataAttributesExpirationBasisEnum._(r'FROM_FIRST_DOWNLOAD');
  static const FROM_FIRST_USE = UpdatePolicyRequestDataAttributesExpirationBasisEnum._(r'FROM_FIRST_USE');

  /// List of all possible values in this [enum][UpdatePolicyRequestDataAttributesExpirationBasisEnum].
  static const values = <UpdatePolicyRequestDataAttributesExpirationBasisEnum>[
    FROM_CREATION,
    FROM_FIRST_VALIDATION,
    FROM_FIRST_ACTIVATION,
    FROM_FIRST_DOWNLOAD,
    FROM_FIRST_USE,
  ];

  static UpdatePolicyRequestDataAttributesExpirationBasisEnum? fromJson(dynamic value) => UpdatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer().decode(value);

  static List<UpdatePolicyRequestDataAttributesExpirationBasisEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributesExpirationBasisEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributesExpirationBasisEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePolicyRequestDataAttributesExpirationBasisEnum] to String,
/// and [decode] dynamic data back to [UpdatePolicyRequestDataAttributesExpirationBasisEnum].
class UpdatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer {
  factory UpdatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer() => _instance ??= const UpdatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer._();

  const UpdatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer._();

  String encode(UpdatePolicyRequestDataAttributesExpirationBasisEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePolicyRequestDataAttributesExpirationBasisEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePolicyRequestDataAttributesExpirationBasisEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FROM_CREATION': return UpdatePolicyRequestDataAttributesExpirationBasisEnum.FROM_CREATION;
        case r'FROM_FIRST_VALIDATION': return UpdatePolicyRequestDataAttributesExpirationBasisEnum.FROM_FIRST_VALIDATION;
        case r'FROM_FIRST_ACTIVATION': return UpdatePolicyRequestDataAttributesExpirationBasisEnum.FROM_FIRST_ACTIVATION;
        case r'FROM_FIRST_DOWNLOAD': return UpdatePolicyRequestDataAttributesExpirationBasisEnum.FROM_FIRST_DOWNLOAD;
        case r'FROM_FIRST_USE': return UpdatePolicyRequestDataAttributesExpirationBasisEnum.FROM_FIRST_USE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer] instance.
  static UpdatePolicyRequestDataAttributesExpirationBasisEnumTypeTransformer? _instance;
}


/// Control whether a license's expiration is reset when transferred to this policy.
class UpdatePolicyRequestDataAttributesTransferStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePolicyRequestDataAttributesTransferStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RESET_EXPIRY = UpdatePolicyRequestDataAttributesTransferStrategyEnum._(r'RESET_EXPIRY');
  static const KEEP_EXPIRY = UpdatePolicyRequestDataAttributesTransferStrategyEnum._(r'KEEP_EXPIRY');

  /// List of all possible values in this [enum][UpdatePolicyRequestDataAttributesTransferStrategyEnum].
  static const values = <UpdatePolicyRequestDataAttributesTransferStrategyEnum>[
    RESET_EXPIRY,
    KEEP_EXPIRY,
  ];

  static UpdatePolicyRequestDataAttributesTransferStrategyEnum? fromJson(dynamic value) => UpdatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer().decode(value);

  static List<UpdatePolicyRequestDataAttributesTransferStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributesTransferStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributesTransferStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePolicyRequestDataAttributesTransferStrategyEnum] to String,
/// and [decode] dynamic data back to [UpdatePolicyRequestDataAttributesTransferStrategyEnum].
class UpdatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer {
  factory UpdatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer() => _instance ??= const UpdatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer._();

  const UpdatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer._();

  String encode(UpdatePolicyRequestDataAttributesTransferStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePolicyRequestDataAttributesTransferStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePolicyRequestDataAttributesTransferStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RESET_EXPIRY': return UpdatePolicyRequestDataAttributesTransferStrategyEnum.RESET_EXPIRY;
        case r'KEEP_EXPIRY': return UpdatePolicyRequestDataAttributesTransferStrategyEnum.KEEP_EXPIRY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer] instance.
  static UpdatePolicyRequestDataAttributesTransferStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for authenticating as a license, for client-side integrations.
class UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TOKEN = UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum._(r'TOKEN');
  static const LICENSE = UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum._(r'LICENSE');
  static const MIXED = UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum._(r'MIXED');
  static const NONE = UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum._(r'NONE');

  /// List of all possible values in this [enum][UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum].
  static const values = <UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum>[
    TOKEN,
    LICENSE,
    MIXED,
    NONE,
  ];

  static UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum? fromJson(dynamic value) => UpdatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer().decode(value);

  static List<UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum] to String,
/// and [decode] dynamic data back to [UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum].
class UpdatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer {
  factory UpdatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer() => _instance ??= const UpdatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer._();

  const UpdatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer._();

  String encode(UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TOKEN': return UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum.TOKEN;
        case r'LICENSE': return UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum.LICENSE;
        case r'MIXED': return UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum.MIXED;
        case r'NONE': return UpdatePolicyRequestDataAttributesAuthenticationStrategyEnum.NONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer] instance.
  static UpdatePolicyRequestDataAttributesAuthenticationStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for leasing machines.  ### Options  - **`PER_LICENSE`**:   Machine processes are counted per-license, i.e. collectively across all of a license's machines. - **`PER_USER`**:   Machines are counted per-user, per-license. For example, with a max machines value of 2, each user could have 2 machines per-license. 
class UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PER_LICENSE = UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum._(r'PER_LICENSE');
  static const PER_USER = UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum._(r'PER_USER');

  /// List of all possible values in this [enum][UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum].
  static const values = <UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum>[
    PER_LICENSE,
    PER_USER,
  ];

  static UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum? fromJson(dynamic value) => UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer().decode(value);

  static List<UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum] to String,
/// and [decode] dynamic data back to [UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum].
class UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer {
  factory UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer() => _instance ??= const UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer._();

  const UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer._();

  String encode(UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PER_LICENSE': return UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum.PER_LICENSE;
        case r'PER_USER': return UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnum.PER_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer] instance.
  static UpdatePolicyRequestDataAttributesMachineLeasingStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for leasing machine processes.  ### Options  - **`PER_MACHINE`**:   Processes are counted per-machine. For example, given a policy with a max processes value of 5, each license could have up to 5 processes for each machine. This is the default.  - **`PER_LICENSE`**:   Processes are counted per-license. For example, with a max processes value of 5, each license could have up to 5 processes combined across all machines. - **`PER_USER`**:   Processes are counted per-user, per-license. For example, with a max processes value of 5, each user could have up to 5 processes combined across all owned machines per-license. 
class UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PER_MACHINE = UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum._(r'PER_MACHINE');
  static const PER_LICENSE = UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum._(r'PER_LICENSE');
  static const PER_USER = UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum._(r'PER_USER');

  /// List of all possible values in this [enum][UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum].
  static const values = <UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum>[
    PER_MACHINE,
    PER_LICENSE,
    PER_USER,
  ];

  static UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum? fromJson(dynamic value) => UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer().decode(value);

  static List<UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum] to String,
/// and [decode] dynamic data back to [UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum].
class UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer {
  factory UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer() => _instance ??= const UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer._();

  const UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer._();

  String encode(UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PER_MACHINE': return UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum.PER_MACHINE;
        case r'PER_LICENSE': return UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum.PER_LICENSE;
        case r'PER_USER': return UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnum.PER_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer] instance.
  static UpdatePolicyRequestDataAttributesProcessLeasingStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for allowing machine, core and process overages.
class UpdatePolicyRequestDataAttributesOverageStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePolicyRequestDataAttributesOverageStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALWAYS_ALLOW_OVERAGE = UpdatePolicyRequestDataAttributesOverageStrategyEnum._(r'ALWAYS_ALLOW_OVERAGE');
  static const aLLOW125XOVERAGE = UpdatePolicyRequestDataAttributesOverageStrategyEnum._(r'ALLOW_1_25X_OVERAGE');
  static const aLLOW15XOVERAGE = UpdatePolicyRequestDataAttributesOverageStrategyEnum._(r'ALLOW_1_5X_OVERAGE');
  static const aLLOW2XOVERAGE = UpdatePolicyRequestDataAttributesOverageStrategyEnum._(r'ALLOW_2X_OVERAGE');
  static const NO_OVERAGE = UpdatePolicyRequestDataAttributesOverageStrategyEnum._(r'NO_OVERAGE');

  /// List of all possible values in this [enum][UpdatePolicyRequestDataAttributesOverageStrategyEnum].
  static const values = <UpdatePolicyRequestDataAttributesOverageStrategyEnum>[
    ALWAYS_ALLOW_OVERAGE,
    aLLOW125XOVERAGE,
    aLLOW15XOVERAGE,
    aLLOW2XOVERAGE,
    NO_OVERAGE,
  ];

  static UpdatePolicyRequestDataAttributesOverageStrategyEnum? fromJson(dynamic value) => UpdatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer().decode(value);

  static List<UpdatePolicyRequestDataAttributesOverageStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePolicyRequestDataAttributesOverageStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePolicyRequestDataAttributesOverageStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePolicyRequestDataAttributesOverageStrategyEnum] to String,
/// and [decode] dynamic data back to [UpdatePolicyRequestDataAttributesOverageStrategyEnum].
class UpdatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer {
  factory UpdatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer() => _instance ??= const UpdatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer._();

  const UpdatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer._();

  String encode(UpdatePolicyRequestDataAttributesOverageStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePolicyRequestDataAttributesOverageStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePolicyRequestDataAttributesOverageStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALWAYS_ALLOW_OVERAGE': return UpdatePolicyRequestDataAttributesOverageStrategyEnum.ALWAYS_ALLOW_OVERAGE;
        case r'ALLOW_1_25X_OVERAGE': return UpdatePolicyRequestDataAttributesOverageStrategyEnum.aLLOW125XOVERAGE;
        case r'ALLOW_1_5X_OVERAGE': return UpdatePolicyRequestDataAttributesOverageStrategyEnum.aLLOW15XOVERAGE;
        case r'ALLOW_2X_OVERAGE': return UpdatePolicyRequestDataAttributesOverageStrategyEnum.aLLOW2XOVERAGE;
        case r'NO_OVERAGE': return UpdatePolicyRequestDataAttributesOverageStrategyEnum.NO_OVERAGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer] instance.
  static UpdatePolicyRequestDataAttributesOverageStrategyEnumTypeTransformer? _instance;
}


