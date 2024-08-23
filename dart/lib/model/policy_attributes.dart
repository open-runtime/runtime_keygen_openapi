//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PolicyAttributes {
  /// Returns a new [PolicyAttributes] instance.
  PolicyAttributes({
    required this.name,
    this.duration,
    required this.strict,
    required this.floating,
    this.scheme,
    required this.requireProductScope,
    required this.requirePolicyScope,
    this.requireMachineScope = false,
    required this.requireFingerprintScope,
    required this.requireUserScope,
    required this.requireChecksumScope,
    required this.requireVersionScope,
    required this.requireCheckIn,
    this.checkInInterval,
    this.checkInIntervalCount,
    required this.usePool,
    this.maxMachines,
    this.maxProcesses,
    this.maxCores,
    this.maxUses,
    required this.protected,
    required this.requireHeartbeat,
    this.heartbeatDuration,
    required this.heartbeatCullStrategy,
    required this.heartbeatResurrectionStrategy,
    required this.heartbeatBasis,
    required this.machineUniquenessStrategy,
    required this.machineMatchingStrategy,
    required this.expirationStrategy,
    required this.transferStrategy,
    required this.authenticationStrategy,
    required this.machineLeasingStrategy,
    required this.processLeasingStrategy,
    required this.overageStrategy,
    this.metadata = const {},
    required this.created,
    required this.updated,
  });

  /// The name of the policy.
  String name;

  /// The duration for the policy in seconds. When a new license implements the policy, the license's expiry is calculated with this value (i.e. `time.now + policy.duration`). If `null`, licenses will never expire. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? duration;

  /// When enabled, a license that implements the policy will be considered invalid if its machine limit, machine core limit, or processes limit is surpassed. In addition, strict requires a license to have at least 1 machine associated with it in order to pass validation. 
  bool strict;

  /// When enabled, a license that implements the policy will be valid across multiple machines. Though this is not enforced i.e. it does not invalidate a license if it's associated with more than 1 machine unless the policy is strict. 
  bool floating;

  /// The cryptographic encryption/signature scheme used on license keys. Can be used to implement offline licensing by storing tamper-proof data within a license's key. When `null` or omitted, the license's key will be stored unchanged.  ### Options  - **`ED25519_SIGN`**:   Sign license keys with your account's Ed25519 signing key, using elliptic curve cryptography and   SHA512. The given license key data will be base64url encoded and then prefixed with `key/` before   signing, and the signing data's signature will be base64url encoded and then appended onto the end of   the signing data, delimited by the `.` character, e.g.   `key/{URLBASE64URL_KEY}.{URLBASE64URL_SIGNATURE}`. This is our recommended signing scheme, but it may   not be supported in your preferred programming language. - **`RSA_2048_PKCS1_PSS_SIGN_V2**`:   Sign license keys with your account's 2048-bit RSA private key using RSA PKCS1-PSS padding, with a   SHA256 digest, max salt length, and a SHA256 MGF1. The provided embedded dataset will be base64url   encoded and then prefixed with `key/` before signing, and the signing data's signature will be   base64url encoded and then appended onto the end of the signing data, delimited by the `.` character,   e.g. `key/{URLBASE64URL_KEY}.{URLBASE64URL_SIGNATURE}`, resulting in the final key. This is our   recommended RSA scheme, but it may not be supported in your preferred programming language. - **`RSA_2048_PKCS1_SIGN_V2**`:   Sign license keys with your account's 2048-bit RSA private key using RSA PKCS1 v1.5 padding, with a   SHA256 digest. The provided embedded dataset will be base64url encoded and then prefixed with `key/`   before signing, and the signing data's signature will be base64url encoded and then appended onto the   end of the signing data, delimited by the `.` character, e.g.   `key/{URLBASE64URL_KEY}.{URLBASE64URL_SIGNATURE}`, resulting in the final key. - **`RSA_2048_PKCS1_ENCRYPT**`:   Encrypt license keys with your account's 2048-bit RSA private key using RSA PKCS1 v1.5 padding. The   provided dataset will be encrypted using your account's private key and then base64url encoded,   resulting in the final key. The key can be decrypted using your account's public key. The key must   contain no more than `245` bytes (please note this is *byte length* not *string length*). - **`RSA_2048_JWT_RS256**`:   Encode a license claims payload into a JWT using the RS256 algorithm. The license key must be a valid   JWT claims payload (i.e. a JSON encoded string). The JWT will be signed using your account's 2048-bit   RSA private key and can be verified using your account's public key. The resulting key will be a full   JSON Web Token. We do not modify your claims payload. 
  PolicyAttributesSchemeEnum? scheme;

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
  bool requireCheckIn;

  /// One of `day`, `week`, `month` or `year`. The frequency at which a license should check-in.  ### Options  - **`day`**:   Require a license implementing the policy to check-in at least once every day to remain valid. - **`week`**:   Require a license implementing the policy to check-in at least once every week to remain valid. - **`month`**:   Require a license implementing the policy to check-in at least once every month to remain valid. - **`year`**:   Require a license implementing the policy to check-in at least once every year to remain valid. 
  PolicyAttributesCheckInIntervalEnum? checkInInterval;

  /// The number of intervals (specified in the check-in interval property) between each required check-in. For example, `checkInInterval=week` and `checkInIntervalCount=2` requires check-in every 2 weeks. Must be a number between 1 and 365 inclusive. 
  int? checkInIntervalCount;

  /// Whether or not to pull license keys from a finite pool of pre-determined keys. This is useful for invite-only programs such as a private beta, when you need a limited set of licenses, or when you want to define the keys manually. This cannot be changed later on. 
  bool usePool;

  /// The maximum number of machines a license implementing the policy can have associated with it. This is only enforced when the policy is strict. When `null`, an unlimited number of machines may be associated with a license if the policy is floating. Must be a number greater than 0, and must be equal to 1 for non-floating policies. 
  int? maxMachines;

  /// The maximum number of machine processes a license implementing the policy can have associated with it, also depending on the policy's leasing strategy. When `null`, an unlimited number of machine processes may be associated with a license. Must be a number greater than 0. 
  int? maxProcesses;

  /// The maximum number of machine CPU cores a license implementing the policy can have associated with it. The count is the sum of all cores for the license's machines. This is inherited from the policy. When `null`, a license which implements the policy can have an unlimited number of CPU cores. 
  int? maxCores;

  /// The maximum number of uses a license implementing the policy can have. Cannot exceed `2,147,483,647`, which is the maximum value of a 4 byte integer. When `null`, a license which implements the policy can have an unlimited number of uses. This attribute is not taken into account during license validation. See the license's usage-related actions for more details. 
  int? maxUses;

  /// Whether or not the policy is protected. A protected policy disallows users the ability to create and manage licenses themselves, useful in situations where Keygen is only managed server-side or when you aren't listening for the appropriate user-initiated webhook events. If the account is protected, all policies automatically inherit that value when left blank. 
  bool protected;

  /// Whether or not the policy requires its machines to maintain a heartbeat. When enabled, machines that do not have a heartbeat will fail validation with a `HEARTBEAT_NOT_STARTED` validation code. In addition, when enabled, new machines will automatically have their first heartbeat set upon creation. When disabled, heartbeats are optional. 
  bool requireHeartbeat;

  /// The heartbeat duration for the policy, in seconds. When a machine has an active heartbeat monitor, the machine must send heartbeat pings within this timeframe to remain activated. Must be greater than or equal to 1 minute (60). 
  int? heartbeatDuration;

  /// The strategy used for culling dead machines and processes.  ### Options  - **`DEACTIVATE_DEAD`**:   Automatically deactivate machines that fail to maintain their heartbeat pings. This is the default. - **`KEEP_DEAD`**:   Mark machines that fail to maintain their heartbeat pings as dead, but do not deactivate. 
  PolicyAttributesHeartbeatCullStrategyEnum heartbeatCullStrategy;

  /// The strategy used for controlling whether or not dead machines and processes can be resurrected shortly after death. A resurrection occurs when a heartbeat ping is sent to a dead machine or process that is within its resurrection window.  ### Options  - **`NO_REVIVE`**: Do not allow dead machines and processes to be revived. This is the default. - **`1_MINUTE_REVIVE`**:   A machine or process can be revived if it sends a ping within 1 minute from its time of death. - **`2_MINUTE_REVIVE`**:   A machine or process can be revived if it sends a ping within 2 minutes from its time of death. - **`5_MINUTE_REVIVE`**:   A machine or process can be revived if it sends a ping within 5 minutes from its time of death. - **`10_MINUTE_REVIVE`**:   A machine or process can be revived if it sends a ping within 10 minutes from its time of death. - **`15_MINUTE_REVIVE`**:   A machine or process can be revived if it sends a ping within 15 minutes from its time of death. - **`ALWAYS_REVIVE`**:   A machine or process can always be revived. Requires a cull strategy of `KEEP_DEAD`. 
  PolicyAttributesHeartbeatResurrectionStrategyEnum heartbeatResurrectionStrategy;

  /// Control when a machine's initial heartbeat is started. By default, a machine's heartbeat is started on creation when its policy requires a heartbeat. Otherwise, it is started on first ping.  ### Options  - **`FROM_CREATION`**: The heartbeat duration is calculated from the machine's creation time. - **`FROM_FIRST_PING`**: The heartbeat duration is calculated from the machine's first heartbeat ping. 
  PolicyAttributesHeartbeatBasisEnum heartbeatBasis;

  /// The matching strategy for machine fingerprints supplied during a license validation.  ### Options  - **`UNIQUE_PER_ACCOUNT`**:   Machine fingerprints must be unique across the entire Keygen account. This will block all duplicate   fingerprints, regardless of whether or not the fingerprint belongs to another product, policy or   license. - **`UNIQUE_PER_PRODUCT`**:   Machine fingerprints must be unique across all licenses belonging to a product. This will block all   duplicate fingerprints of the same product, regardless of whether or not the fingerprint belongs to   another policy or license. - **`UNIQUE_PER_POLICY`**:   Machine fingerprints must be unique across all licenses for the policy. This will block all duplicate   fingerprints of the same policy, regardless of whether or not the fingerprint belongs to another   license. - **`UNIQUE_PER_LICENSE`**:   Machine fingerprints must be unique to the license. This will block all duplicate fingerprints for   same license, but the same fingerprint can exist across different licenses. This is the default. 
  PolicyAttributesMachineUniquenessStrategyEnum machineUniquenessStrategy;

  /// The matching strategy for machine fingerprints supplied during a license validation.  ### Options  - **`MATCH_ANY`**:   At least 1 of the supplied fingerprints must match a fingerprint for the license's associated   machines. E.g. if 3 fingerprints are supplied, at least 1 of them must match. - **`MATCH_TWO`**:   At least 2 of the supplied fingerprints must match a fingerprint for the license's associated   machines. E.g. if 4 fingerprints are supplied, at least 2 of them must match. - **`MATCH_MOST`**:   The majority of supplied fingerprints must match the fingerprints for the license's associated   machines. E.g. if 3 fingerprints are supplied, at least 2 of them must match. - **`MATCH_ALL`**:   All supplied fingerprints must match the fingerprints for the license's associated machines. E.g. if 3   fingerprints are supplied, all 3 of them must match. 
  PolicyAttributesMachineMatchingStrategyEnum machineMatchingStrategy;

  /// The strategy for expired licenses during a license validation and when accessing releases.  ### Options  - **`RESTRICT_ACCESS`**:   Expired licenses can continue to access releases published prior to their expiry, but automatic   upgrades are disabled. Validation scopes take precedence over expiry check during license validation. - **`REVOKE_ACCESS`**:   Expired licenses are no longer able to access any releases, including past releases and upgrades.   Expiry check takes precedence over scopes during license validation. - **`MAINTAIN_ACCESS`**:   Expired licenses can continue to access releases published prior to their expiry, but automatic   upgrades are disabled. Validation scopes take precedence over expiry check during license validation.   In addition, validations with an `EXPIRED` code will return `valid=true`. - **`ALLOW_ACCESS`**:   Expired licenses can access any releases, including past releases and future automatic upgrades.   Validation scopes take precedence over expiry check during license validation. In addition,   validations with an `EXPIRED` code will return `valid=true`. 
  PolicyAttributesExpirationStrategyEnum expirationStrategy;

  /// Control whether a license's expiration is reset when transferred to this policy.  ### Options  - **`RESET_EXPIRY`**:   Reset the transferred license's expiry from the time of transfer. For example, if the license had an   expiry 3 months from now, and the new policy has a duration of 1 year, transferring would reset the   expiry to 1 year from the time of transfer. When the policy has no duration, the license's expiry is   removed. - **`KEEP_EXPIRY`**: Do not change the license's current expiry. This is the default. 
  PolicyAttributesTransferStrategyEnum transferStrategy;

  /// The strategy used for authenticating as a license, for client-side integrations.  ### Options  - **`TOKEN`**:   Allow licenses to authenticate using [a license token](https://keygen.sh/docs/api/authentication/#license-tokens).   This is the default. - **`LICENSE`**: Allow licenses to authenticate using [a license key](https://keygen.sh/docs/api/authentication/#license-authentication). - **`MIXED`**: Allow both license token and license key authentication (each covered above). - **`NONE`**: Disable the ability for licenses to authenticate with the API. 
  PolicyAttributesAuthenticationStrategyEnum authenticationStrategy;

  /// The strategy used for leasing machines.  ### Options  - **`PER_LICENSE`**:   Machine processes are counted per-license, i.e. collectively across all of a license's machines. - **`PER_USER`**:   Machines are counted per-user, per-license. For example, with a max machines value of 2, each user could have 2 machines per-license. 
  PolicyAttributesMachineLeasingStrategyEnum machineLeasingStrategy;

  /// The strategy used for leasing machine processes.  ### Options  - **`PER_MACHINE`**:   Processes are counted per-machine. For example, given a policy with a max processes value of 5, each license could have up to 5 processes for each machine. This is the default. - **`PER_LICENSE`**:   Processes are counted per-license. For example, with a max processes value of 5, each license could have up to 5 processes combined across all machines. - **`PER_USER`**:   Processes are counted per-user, per-license. For example, with a max processes value of 5, each user could have up to 5 processes combined across all owned machines per-license. 
  PolicyAttributesProcessLeasingStrategyEnum processLeasingStrategy;

  /// The strategy used for allowing machine, core and process overages. Set to `NO_OVERAGE` to disable overages altogether (attempts to exceed a limit will then result in an error).  ### Options  - **`ALWAYS_ALLOW_OVERAGE`**:   The license may exceed its limits, and doing so will not effect the licenses validity, i.e. the   following validation codes will return `valid=true`: `TOO_MANY_MACHINES`, `TOO_MANY_CORES`,   `TOO_MANY_PROCESSES`. - **`ALLOW_1_25X_OVERAGE`**:   The license may exceed its limits, up to a maximum of 1.25x. Exceeding a limit will not effect the   license's validity right away, i.e. the following validation codes will return `valid=true`:   `TOO_MANY_MACHINES`, `TOO_MANY_CORES`, `TOO_MANY_PROCESSES`. The license will begin to fail validation   once the 1.25x allowance has been exceeded. When using a 1.25x allowance, all resource limits must be   divisible by 4. - **`ALLOW_1_5X_OVERAGE`**:   The license may exceed its limits, up to a maximum of 1.5x. Exceeding a limit will not effect the   license's validity right away, i.e. the following validation codes will return `valid=true`:   `TOO_MANY_MACHINES`, `TOO_MANY_CORES`, `TOO_MANY_PROCESSES`. The license will begin to fail validation   once the 1.5x allowance has been exceeded. When using a 1.5x allowance, all resource limits must be   divisible by 2. - **`ALLOW_2X_OVERAGE`**:   The license may exceed its limits, up to a maximum of 2x. Exceeding a limit will not effect the   license's validity right away, i.e. the following validation codes will return `valid=true`:   `TOO_MANY_MACHINES`, `TOO_MANY_CORES`, `TOO_MANY_PROCESSES`.   The license will begin to fail validation once the 2x allowance has been exceeded. - **`NO_OVERAGE`**: Do not allow overages. Attempts to exceed limits will fail. This is the default. 
  PolicyAttributesOverageStrategyEnum overageStrategy;

  /// Object containing policy metadata.
  Map<String, Object> metadata;

  /// When the policy was created.
  DateTime created;

  /// When the policy was last updated.
  DateTime updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PolicyAttributes &&
    other.name == name &&
    other.duration == duration &&
    other.strict == strict &&
    other.floating == floating &&
    other.scheme == scheme &&
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
    other.transferStrategy == transferStrategy &&
    other.authenticationStrategy == authenticationStrategy &&
    other.machineLeasingStrategy == machineLeasingStrategy &&
    other.processLeasingStrategy == processLeasingStrategy &&
    other.overageStrategy == overageStrategy &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.created == created &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (strict.hashCode) +
    (floating.hashCode) +
    (scheme == null ? 0 : scheme!.hashCode) +
    (requireProductScope.hashCode) +
    (requirePolicyScope.hashCode) +
    (requireMachineScope.hashCode) +
    (requireFingerprintScope.hashCode) +
    (requireUserScope.hashCode) +
    (requireChecksumScope.hashCode) +
    (requireVersionScope.hashCode) +
    (requireCheckIn.hashCode) +
    (checkInInterval == null ? 0 : checkInInterval!.hashCode) +
    (checkInIntervalCount == null ? 0 : checkInIntervalCount!.hashCode) +
    (usePool.hashCode) +
    (maxMachines == null ? 0 : maxMachines!.hashCode) +
    (maxProcesses == null ? 0 : maxProcesses!.hashCode) +
    (maxCores == null ? 0 : maxCores!.hashCode) +
    (maxUses == null ? 0 : maxUses!.hashCode) +
    (protected.hashCode) +
    (requireHeartbeat.hashCode) +
    (heartbeatDuration == null ? 0 : heartbeatDuration!.hashCode) +
    (heartbeatCullStrategy.hashCode) +
    (heartbeatResurrectionStrategy.hashCode) +
    (heartbeatBasis.hashCode) +
    (machineUniquenessStrategy.hashCode) +
    (machineMatchingStrategy.hashCode) +
    (expirationStrategy.hashCode) +
    (transferStrategy.hashCode) +
    (authenticationStrategy.hashCode) +
    (machineLeasingStrategy.hashCode) +
    (processLeasingStrategy.hashCode) +
    (overageStrategy.hashCode) +
    (metadata.hashCode) +
    (created.hashCode) +
    (updated.hashCode);

  @override
  String toString() => 'PolicyAttributes[name=$name, duration=$duration, strict=$strict, floating=$floating, scheme=$scheme, requireProductScope=$requireProductScope, requirePolicyScope=$requirePolicyScope, requireMachineScope=$requireMachineScope, requireFingerprintScope=$requireFingerprintScope, requireUserScope=$requireUserScope, requireChecksumScope=$requireChecksumScope, requireVersionScope=$requireVersionScope, requireCheckIn=$requireCheckIn, checkInInterval=$checkInInterval, checkInIntervalCount=$checkInIntervalCount, usePool=$usePool, maxMachines=$maxMachines, maxProcesses=$maxProcesses, maxCores=$maxCores, maxUses=$maxUses, protected=$protected, requireHeartbeat=$requireHeartbeat, heartbeatDuration=$heartbeatDuration, heartbeatCullStrategy=$heartbeatCullStrategy, heartbeatResurrectionStrategy=$heartbeatResurrectionStrategy, heartbeatBasis=$heartbeatBasis, machineUniquenessStrategy=$machineUniquenessStrategy, machineMatchingStrategy=$machineMatchingStrategy, expirationStrategy=$expirationStrategy, transferStrategy=$transferStrategy, authenticationStrategy=$authenticationStrategy, machineLeasingStrategy=$machineLeasingStrategy, processLeasingStrategy=$processLeasingStrategy, overageStrategy=$overageStrategy, metadata=$metadata, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
      json[r'strict'] = this.strict;
      json[r'floating'] = this.floating;
    if (this.scheme != null) {
      json[r'scheme'] = this.scheme;
    } else {
      json[r'scheme'] = null;
    }
      json[r'requireProductScope'] = this.requireProductScope;
      json[r'requirePolicyScope'] = this.requirePolicyScope;
      json[r'requireMachineScope'] = this.requireMachineScope;
      json[r'requireFingerprintScope'] = this.requireFingerprintScope;
      json[r'requireUserScope'] = this.requireUserScope;
      json[r'requireChecksumScope'] = this.requireChecksumScope;
      json[r'requireVersionScope'] = this.requireVersionScope;
      json[r'requireCheckIn'] = this.requireCheckIn;
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
      json[r'protected'] = this.protected;
      json[r'requireHeartbeat'] = this.requireHeartbeat;
    if (this.heartbeatDuration != null) {
      json[r'heartbeatDuration'] = this.heartbeatDuration;
    } else {
      json[r'heartbeatDuration'] = null;
    }
      json[r'heartbeatCullStrategy'] = this.heartbeatCullStrategy;
      json[r'heartbeatResurrectionStrategy'] = this.heartbeatResurrectionStrategy;
      json[r'heartbeatBasis'] = this.heartbeatBasis;
      json[r'machineUniquenessStrategy'] = this.machineUniquenessStrategy;
      json[r'machineMatchingStrategy'] = this.machineMatchingStrategy;
      json[r'expirationStrategy'] = this.expirationStrategy;
      json[r'transferStrategy'] = this.transferStrategy;
      json[r'authenticationStrategy'] = this.authenticationStrategy;
      json[r'machineLeasingStrategy'] = this.machineLeasingStrategy;
      json[r'processLeasingStrategy'] = this.processLeasingStrategy;
      json[r'overageStrategy'] = this.overageStrategy;
      json[r'metadata'] = this.metadata;
      json[r'created'] = this.created.toUtc().toIso8601String();
      json[r'updated'] = this.updated.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PolicyAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PolicyAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PolicyAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PolicyAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PolicyAttributes(
        name: mapValueOfType<String>(json, r'name')!,
        duration: mapValueOfType<int>(json, r'duration'),
        strict: mapValueOfType<bool>(json, r'strict')!,
        floating: mapValueOfType<bool>(json, r'floating')!,
        scheme: PolicyAttributesSchemeEnum.fromJson(json[r'scheme']),
        requireProductScope: mapValueOfType<bool>(json, r'requireProductScope')!,
        requirePolicyScope: mapValueOfType<bool>(json, r'requirePolicyScope')!,
        requireMachineScope: mapValueOfType<bool>(json, r'requireMachineScope')!,
        requireFingerprintScope: mapValueOfType<bool>(json, r'requireFingerprintScope')!,
        requireUserScope: mapValueOfType<bool>(json, r'requireUserScope')!,
        requireChecksumScope: mapValueOfType<bool>(json, r'requireChecksumScope')!,
        requireVersionScope: mapValueOfType<bool>(json, r'requireVersionScope')!,
        requireCheckIn: mapValueOfType<bool>(json, r'requireCheckIn')!,
        checkInInterval: PolicyAttributesCheckInIntervalEnum.fromJson(json[r'checkInInterval']),
        checkInIntervalCount: mapValueOfType<int>(json, r'checkInIntervalCount'),
        usePool: mapValueOfType<bool>(json, r'usePool')!,
        maxMachines: mapValueOfType<int>(json, r'maxMachines'),
        maxProcesses: mapValueOfType<int>(json, r'maxProcesses'),
        maxCores: mapValueOfType<int>(json, r'maxCores'),
        maxUses: mapValueOfType<int>(json, r'maxUses'),
        protected: mapValueOfType<bool>(json, r'protected')!,
        requireHeartbeat: mapValueOfType<bool>(json, r'requireHeartbeat')!,
        heartbeatDuration: mapValueOfType<int>(json, r'heartbeatDuration'),
        heartbeatCullStrategy: PolicyAttributesHeartbeatCullStrategyEnum.fromJson(json[r'heartbeatCullStrategy'])!,
        heartbeatResurrectionStrategy: PolicyAttributesHeartbeatResurrectionStrategyEnum.fromJson(json[r'heartbeatResurrectionStrategy'])!,
        heartbeatBasis: PolicyAttributesHeartbeatBasisEnum.fromJson(json[r'heartbeatBasis'])!,
        machineUniquenessStrategy: PolicyAttributesMachineUniquenessStrategyEnum.fromJson(json[r'machineUniquenessStrategy'])!,
        machineMatchingStrategy: PolicyAttributesMachineMatchingStrategyEnum.fromJson(json[r'machineMatchingStrategy'])!,
        expirationStrategy: PolicyAttributesExpirationStrategyEnum.fromJson(json[r'expirationStrategy'])!,
        transferStrategy: PolicyAttributesTransferStrategyEnum.fromJson(json[r'transferStrategy'])!,
        authenticationStrategy: PolicyAttributesAuthenticationStrategyEnum.fromJson(json[r'authenticationStrategy'])!,
        machineLeasingStrategy: PolicyAttributesMachineLeasingStrategyEnum.fromJson(json[r'machineLeasingStrategy'])!,
        processLeasingStrategy: PolicyAttributesProcessLeasingStrategyEnum.fromJson(json[r'processLeasingStrategy'])!,
        overageStrategy: PolicyAttributesOverageStrategyEnum.fromJson(json[r'overageStrategy'])!,
        metadata: mapCastOfType<String, Object>(json, r'metadata')!,
        created: mapDateTime(json, r'created', r'')!,
        updated: mapDateTime(json, r'updated', r'')!,
      );
    }
    return null;
  }

  static List<PolicyAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PolicyAttributes> mapFromJson(dynamic json) {
    final map = <String, PolicyAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PolicyAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PolicyAttributes-objects as value to a dart map
  static Map<String, List<PolicyAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PolicyAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PolicyAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'strict',
    'floating',
    'requireProductScope',
    'requirePolicyScope',
    'requireMachineScope',
    'requireFingerprintScope',
    'requireUserScope',
    'requireChecksumScope',
    'requireVersionScope',
    'requireCheckIn',
    'usePool',
    'protected',
    'requireHeartbeat',
    'heartbeatCullStrategy',
    'heartbeatResurrectionStrategy',
    'heartbeatBasis',
    'machineUniquenessStrategy',
    'machineMatchingStrategy',
    'expirationStrategy',
    'transferStrategy',
    'authenticationStrategy',
    'machineLeasingStrategy',
    'processLeasingStrategy',
    'overageStrategy',
    'metadata',
    'created',
    'updated',
  };
}

/// The cryptographic encryption/signature scheme used on license keys. Can be used to implement offline licensing by storing tamper-proof data within a license's key. When `null` or omitted, the license's key will be stored unchanged.  ### Options  - **`ED25519_SIGN`**:   Sign license keys with your account's Ed25519 signing key, using elliptic curve cryptography and   SHA512. The given license key data will be base64url encoded and then prefixed with `key/` before   signing, and the signing data's signature will be base64url encoded and then appended onto the end of   the signing data, delimited by the `.` character, e.g.   `key/{URLBASE64URL_KEY}.{URLBASE64URL_SIGNATURE}`. This is our recommended signing scheme, but it may   not be supported in your preferred programming language. - **`RSA_2048_PKCS1_PSS_SIGN_V2**`:   Sign license keys with your account's 2048-bit RSA private key using RSA PKCS1-PSS padding, with a   SHA256 digest, max salt length, and a SHA256 MGF1. The provided embedded dataset will be base64url   encoded and then prefixed with `key/` before signing, and the signing data's signature will be   base64url encoded and then appended onto the end of the signing data, delimited by the `.` character,   e.g. `key/{URLBASE64URL_KEY}.{URLBASE64URL_SIGNATURE}`, resulting in the final key. This is our   recommended RSA scheme, but it may not be supported in your preferred programming language. - **`RSA_2048_PKCS1_SIGN_V2**`:   Sign license keys with your account's 2048-bit RSA private key using RSA PKCS1 v1.5 padding, with a   SHA256 digest. The provided embedded dataset will be base64url encoded and then prefixed with `key/`   before signing, and the signing data's signature will be base64url encoded and then appended onto the   end of the signing data, delimited by the `.` character, e.g.   `key/{URLBASE64URL_KEY}.{URLBASE64URL_SIGNATURE}`, resulting in the final key. - **`RSA_2048_PKCS1_ENCRYPT**`:   Encrypt license keys with your account's 2048-bit RSA private key using RSA PKCS1 v1.5 padding. The   provided dataset will be encrypted using your account's private key and then base64url encoded,   resulting in the final key. The key can be decrypted using your account's public key. The key must   contain no more than `245` bytes (please note this is *byte length* not *string length*). - **`RSA_2048_JWT_RS256**`:   Encode a license claims payload into a JWT using the RS256 algorithm. The license key must be a valid   JWT claims payload (i.e. a JSON encoded string). The JWT will be signed using your account's 2048-bit   RSA private key and can be verified using your account's public key. The resulting key will be a full   JSON Web Token. We do not modify your claims payload. 
class PolicyAttributesSchemeEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyAttributesSchemeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const eD25519SIGN = PolicyAttributesSchemeEnum._(r'ED25519_SIGN');
  static const rSA2048PKCS1PSSSIGNV2 = PolicyAttributesSchemeEnum._(r'RSA_2048_PKCS1_PSS_SIGN_V2');
  static const rSA2048PKCS1SIGNV2 = PolicyAttributesSchemeEnum._(r'RSA_2048_PKCS1_SIGN_V2');
  static const rSA2048PKCS1ENCRYPT = PolicyAttributesSchemeEnum._(r'RSA_2048_PKCS1_ENCRYPT');
  static const rSA2048JWTRS256 = PolicyAttributesSchemeEnum._(r'RSA_2048_JWT_RS256');

  /// List of all possible values in this [enum][PolicyAttributesSchemeEnum].
  static const values = <PolicyAttributesSchemeEnum>[
    eD25519SIGN,
    rSA2048PKCS1PSSSIGNV2,
    rSA2048PKCS1SIGNV2,
    rSA2048PKCS1ENCRYPT,
    rSA2048JWTRS256,
  ];

  static PolicyAttributesSchemeEnum? fromJson(dynamic value) => PolicyAttributesSchemeEnumTypeTransformer().decode(value);

  static List<PolicyAttributesSchemeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributesSchemeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributesSchemeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyAttributesSchemeEnum] to String,
/// and [decode] dynamic data back to [PolicyAttributesSchemeEnum].
class PolicyAttributesSchemeEnumTypeTransformer {
  factory PolicyAttributesSchemeEnumTypeTransformer() => _instance ??= const PolicyAttributesSchemeEnumTypeTransformer._();

  const PolicyAttributesSchemeEnumTypeTransformer._();

  String encode(PolicyAttributesSchemeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyAttributesSchemeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyAttributesSchemeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ED25519_SIGN': return PolicyAttributesSchemeEnum.eD25519SIGN;
        case r'RSA_2048_PKCS1_PSS_SIGN_V2': return PolicyAttributesSchemeEnum.rSA2048PKCS1PSSSIGNV2;
        case r'RSA_2048_PKCS1_SIGN_V2': return PolicyAttributesSchemeEnum.rSA2048PKCS1SIGNV2;
        case r'RSA_2048_PKCS1_ENCRYPT': return PolicyAttributesSchemeEnum.rSA2048PKCS1ENCRYPT;
        case r'RSA_2048_JWT_RS256': return PolicyAttributesSchemeEnum.rSA2048JWTRS256;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyAttributesSchemeEnumTypeTransformer] instance.
  static PolicyAttributesSchemeEnumTypeTransformer? _instance;
}


/// One of `day`, `week`, `month` or `year`. The frequency at which a license should check-in.  ### Options  - **`day`**:   Require a license implementing the policy to check-in at least once every day to remain valid. - **`week`**:   Require a license implementing the policy to check-in at least once every week to remain valid. - **`month`**:   Require a license implementing the policy to check-in at least once every month to remain valid. - **`year`**:   Require a license implementing the policy to check-in at least once every year to remain valid. 
class PolicyAttributesCheckInIntervalEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyAttributesCheckInIntervalEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const day = PolicyAttributesCheckInIntervalEnum._(r'day');
  static const week = PolicyAttributesCheckInIntervalEnum._(r'week');
  static const month = PolicyAttributesCheckInIntervalEnum._(r'month');
  static const year = PolicyAttributesCheckInIntervalEnum._(r'year');

  /// List of all possible values in this [enum][PolicyAttributesCheckInIntervalEnum].
  static const values = <PolicyAttributesCheckInIntervalEnum>[
    day,
    week,
    month,
    year,
  ];

  static PolicyAttributesCheckInIntervalEnum? fromJson(dynamic value) => PolicyAttributesCheckInIntervalEnumTypeTransformer().decode(value);

  static List<PolicyAttributesCheckInIntervalEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributesCheckInIntervalEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributesCheckInIntervalEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyAttributesCheckInIntervalEnum] to String,
/// and [decode] dynamic data back to [PolicyAttributesCheckInIntervalEnum].
class PolicyAttributesCheckInIntervalEnumTypeTransformer {
  factory PolicyAttributesCheckInIntervalEnumTypeTransformer() => _instance ??= const PolicyAttributesCheckInIntervalEnumTypeTransformer._();

  const PolicyAttributesCheckInIntervalEnumTypeTransformer._();

  String encode(PolicyAttributesCheckInIntervalEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyAttributesCheckInIntervalEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyAttributesCheckInIntervalEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'day': return PolicyAttributesCheckInIntervalEnum.day;
        case r'week': return PolicyAttributesCheckInIntervalEnum.week;
        case r'month': return PolicyAttributesCheckInIntervalEnum.month;
        case r'year': return PolicyAttributesCheckInIntervalEnum.year;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyAttributesCheckInIntervalEnumTypeTransformer] instance.
  static PolicyAttributesCheckInIntervalEnumTypeTransformer? _instance;
}


/// The strategy used for culling dead machines and processes.  ### Options  - **`DEACTIVATE_DEAD`**:   Automatically deactivate machines that fail to maintain their heartbeat pings. This is the default. - **`KEEP_DEAD`**:   Mark machines that fail to maintain their heartbeat pings as dead, but do not deactivate. 
class PolicyAttributesHeartbeatCullStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyAttributesHeartbeatCullStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEACTIVATE_DEAD = PolicyAttributesHeartbeatCullStrategyEnum._(r'DEACTIVATE_DEAD');
  static const KEEP_DEAD = PolicyAttributesHeartbeatCullStrategyEnum._(r'KEEP_DEAD');

  /// List of all possible values in this [enum][PolicyAttributesHeartbeatCullStrategyEnum].
  static const values = <PolicyAttributesHeartbeatCullStrategyEnum>[
    DEACTIVATE_DEAD,
    KEEP_DEAD,
  ];

  static PolicyAttributesHeartbeatCullStrategyEnum? fromJson(dynamic value) => PolicyAttributesHeartbeatCullStrategyEnumTypeTransformer().decode(value);

  static List<PolicyAttributesHeartbeatCullStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributesHeartbeatCullStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributesHeartbeatCullStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyAttributesHeartbeatCullStrategyEnum] to String,
/// and [decode] dynamic data back to [PolicyAttributesHeartbeatCullStrategyEnum].
class PolicyAttributesHeartbeatCullStrategyEnumTypeTransformer {
  factory PolicyAttributesHeartbeatCullStrategyEnumTypeTransformer() => _instance ??= const PolicyAttributesHeartbeatCullStrategyEnumTypeTransformer._();

  const PolicyAttributesHeartbeatCullStrategyEnumTypeTransformer._();

  String encode(PolicyAttributesHeartbeatCullStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyAttributesHeartbeatCullStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyAttributesHeartbeatCullStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEACTIVATE_DEAD': return PolicyAttributesHeartbeatCullStrategyEnum.DEACTIVATE_DEAD;
        case r'KEEP_DEAD': return PolicyAttributesHeartbeatCullStrategyEnum.KEEP_DEAD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyAttributesHeartbeatCullStrategyEnumTypeTransformer] instance.
  static PolicyAttributesHeartbeatCullStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for controlling whether or not dead machines and processes can be resurrected shortly after death. A resurrection occurs when a heartbeat ping is sent to a dead machine or process that is within its resurrection window.  ### Options  - **`NO_REVIVE`**: Do not allow dead machines and processes to be revived. This is the default. - **`1_MINUTE_REVIVE`**:   A machine or process can be revived if it sends a ping within 1 minute from its time of death. - **`2_MINUTE_REVIVE`**:   A machine or process can be revived if it sends a ping within 2 minutes from its time of death. - **`5_MINUTE_REVIVE`**:   A machine or process can be revived if it sends a ping within 5 minutes from its time of death. - **`10_MINUTE_REVIVE`**:   A machine or process can be revived if it sends a ping within 10 minutes from its time of death. - **`15_MINUTE_REVIVE`**:   A machine or process can be revived if it sends a ping within 15 minutes from its time of death. - **`ALWAYS_REVIVE`**:   A machine or process can always be revived. Requires a cull strategy of `KEEP_DEAD`. 
class PolicyAttributesHeartbeatResurrectionStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyAttributesHeartbeatResurrectionStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NO_REVIVE = PolicyAttributesHeartbeatResurrectionStrategyEnum._(r'NO_REVIVE');
  static const n1mINUTEREVIVE = PolicyAttributesHeartbeatResurrectionStrategyEnum._(r'1_MINUTE_REVIVE');
  static const n2mINUTEREVIVE = PolicyAttributesHeartbeatResurrectionStrategyEnum._(r'2_MINUTE_REVIVE');
  static const n5mINUTEREVIVE = PolicyAttributesHeartbeatResurrectionStrategyEnum._(r'5_MINUTE_REVIVE');
  static const n10mINUTEREVIVE = PolicyAttributesHeartbeatResurrectionStrategyEnum._(r'10_MINUTE_REVIVE');
  static const n15mINUTEREVIVE = PolicyAttributesHeartbeatResurrectionStrategyEnum._(r'15_MINUTE_REVIVE');
  static const ALWAYS_REVIVE = PolicyAttributesHeartbeatResurrectionStrategyEnum._(r'ALWAYS_REVIVE');

  /// List of all possible values in this [enum][PolicyAttributesHeartbeatResurrectionStrategyEnum].
  static const values = <PolicyAttributesHeartbeatResurrectionStrategyEnum>[
    NO_REVIVE,
    n1mINUTEREVIVE,
    n2mINUTEREVIVE,
    n5mINUTEREVIVE,
    n10mINUTEREVIVE,
    n15mINUTEREVIVE,
    ALWAYS_REVIVE,
  ];

  static PolicyAttributesHeartbeatResurrectionStrategyEnum? fromJson(dynamic value) => PolicyAttributesHeartbeatResurrectionStrategyEnumTypeTransformer().decode(value);

  static List<PolicyAttributesHeartbeatResurrectionStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributesHeartbeatResurrectionStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributesHeartbeatResurrectionStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyAttributesHeartbeatResurrectionStrategyEnum] to String,
/// and [decode] dynamic data back to [PolicyAttributesHeartbeatResurrectionStrategyEnum].
class PolicyAttributesHeartbeatResurrectionStrategyEnumTypeTransformer {
  factory PolicyAttributesHeartbeatResurrectionStrategyEnumTypeTransformer() => _instance ??= const PolicyAttributesHeartbeatResurrectionStrategyEnumTypeTransformer._();

  const PolicyAttributesHeartbeatResurrectionStrategyEnumTypeTransformer._();

  String encode(PolicyAttributesHeartbeatResurrectionStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyAttributesHeartbeatResurrectionStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyAttributesHeartbeatResurrectionStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NO_REVIVE': return PolicyAttributesHeartbeatResurrectionStrategyEnum.NO_REVIVE;
        case r'1_MINUTE_REVIVE': return PolicyAttributesHeartbeatResurrectionStrategyEnum.n1mINUTEREVIVE;
        case r'2_MINUTE_REVIVE': return PolicyAttributesHeartbeatResurrectionStrategyEnum.n2mINUTEREVIVE;
        case r'5_MINUTE_REVIVE': return PolicyAttributesHeartbeatResurrectionStrategyEnum.n5mINUTEREVIVE;
        case r'10_MINUTE_REVIVE': return PolicyAttributesHeartbeatResurrectionStrategyEnum.n10mINUTEREVIVE;
        case r'15_MINUTE_REVIVE': return PolicyAttributesHeartbeatResurrectionStrategyEnum.n15mINUTEREVIVE;
        case r'ALWAYS_REVIVE': return PolicyAttributesHeartbeatResurrectionStrategyEnum.ALWAYS_REVIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyAttributesHeartbeatResurrectionStrategyEnumTypeTransformer] instance.
  static PolicyAttributesHeartbeatResurrectionStrategyEnumTypeTransformer? _instance;
}


/// Control when a machine's initial heartbeat is started. By default, a machine's heartbeat is started on creation when its policy requires a heartbeat. Otherwise, it is started on first ping.  ### Options  - **`FROM_CREATION`**: The heartbeat duration is calculated from the machine's creation time. - **`FROM_FIRST_PING`**: The heartbeat duration is calculated from the machine's first heartbeat ping. 
class PolicyAttributesHeartbeatBasisEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyAttributesHeartbeatBasisEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FROM_CREATION = PolicyAttributesHeartbeatBasisEnum._(r'FROM_CREATION');
  static const FROM_FIRST_PING = PolicyAttributesHeartbeatBasisEnum._(r'FROM_FIRST_PING');

  /// List of all possible values in this [enum][PolicyAttributesHeartbeatBasisEnum].
  static const values = <PolicyAttributesHeartbeatBasisEnum>[
    FROM_CREATION,
    FROM_FIRST_PING,
  ];

  static PolicyAttributesHeartbeatBasisEnum? fromJson(dynamic value) => PolicyAttributesHeartbeatBasisEnumTypeTransformer().decode(value);

  static List<PolicyAttributesHeartbeatBasisEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributesHeartbeatBasisEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributesHeartbeatBasisEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyAttributesHeartbeatBasisEnum] to String,
/// and [decode] dynamic data back to [PolicyAttributesHeartbeatBasisEnum].
class PolicyAttributesHeartbeatBasisEnumTypeTransformer {
  factory PolicyAttributesHeartbeatBasisEnumTypeTransformer() => _instance ??= const PolicyAttributesHeartbeatBasisEnumTypeTransformer._();

  const PolicyAttributesHeartbeatBasisEnumTypeTransformer._();

  String encode(PolicyAttributesHeartbeatBasisEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyAttributesHeartbeatBasisEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyAttributesHeartbeatBasisEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FROM_CREATION': return PolicyAttributesHeartbeatBasisEnum.FROM_CREATION;
        case r'FROM_FIRST_PING': return PolicyAttributesHeartbeatBasisEnum.FROM_FIRST_PING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyAttributesHeartbeatBasisEnumTypeTransformer] instance.
  static PolicyAttributesHeartbeatBasisEnumTypeTransformer? _instance;
}


/// The matching strategy for machine fingerprints supplied during a license validation.  ### Options  - **`UNIQUE_PER_ACCOUNT`**:   Machine fingerprints must be unique across the entire Keygen account. This will block all duplicate   fingerprints, regardless of whether or not the fingerprint belongs to another product, policy or   license. - **`UNIQUE_PER_PRODUCT`**:   Machine fingerprints must be unique across all licenses belonging to a product. This will block all   duplicate fingerprints of the same product, regardless of whether or not the fingerprint belongs to   another policy or license. - **`UNIQUE_PER_POLICY`**:   Machine fingerprints must be unique across all licenses for the policy. This will block all duplicate   fingerprints of the same policy, regardless of whether or not the fingerprint belongs to another   license. - **`UNIQUE_PER_LICENSE`**:   Machine fingerprints must be unique to the license. This will block all duplicate fingerprints for   same license, but the same fingerprint can exist across different licenses. This is the default. 
class PolicyAttributesMachineUniquenessStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyAttributesMachineUniquenessStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UNIQUE_PER_ACCOUNT = PolicyAttributesMachineUniquenessStrategyEnum._(r'UNIQUE_PER_ACCOUNT');
  static const UNIQUE_PER_PRODUCT = PolicyAttributesMachineUniquenessStrategyEnum._(r'UNIQUE_PER_PRODUCT');
  static const UNIQUE_PER_POLICY = PolicyAttributesMachineUniquenessStrategyEnum._(r'UNIQUE_PER_POLICY');
  static const UNIQUE_PER_LICENSE = PolicyAttributesMachineUniquenessStrategyEnum._(r'UNIQUE_PER_LICENSE');

  /// List of all possible values in this [enum][PolicyAttributesMachineUniquenessStrategyEnum].
  static const values = <PolicyAttributesMachineUniquenessStrategyEnum>[
    UNIQUE_PER_ACCOUNT,
    UNIQUE_PER_PRODUCT,
    UNIQUE_PER_POLICY,
    UNIQUE_PER_LICENSE,
  ];

  static PolicyAttributesMachineUniquenessStrategyEnum? fromJson(dynamic value) => PolicyAttributesMachineUniquenessStrategyEnumTypeTransformer().decode(value);

  static List<PolicyAttributesMachineUniquenessStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributesMachineUniquenessStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributesMachineUniquenessStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyAttributesMachineUniquenessStrategyEnum] to String,
/// and [decode] dynamic data back to [PolicyAttributesMachineUniquenessStrategyEnum].
class PolicyAttributesMachineUniquenessStrategyEnumTypeTransformer {
  factory PolicyAttributesMachineUniquenessStrategyEnumTypeTransformer() => _instance ??= const PolicyAttributesMachineUniquenessStrategyEnumTypeTransformer._();

  const PolicyAttributesMachineUniquenessStrategyEnumTypeTransformer._();

  String encode(PolicyAttributesMachineUniquenessStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyAttributesMachineUniquenessStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyAttributesMachineUniquenessStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UNIQUE_PER_ACCOUNT': return PolicyAttributesMachineUniquenessStrategyEnum.UNIQUE_PER_ACCOUNT;
        case r'UNIQUE_PER_PRODUCT': return PolicyAttributesMachineUniquenessStrategyEnum.UNIQUE_PER_PRODUCT;
        case r'UNIQUE_PER_POLICY': return PolicyAttributesMachineUniquenessStrategyEnum.UNIQUE_PER_POLICY;
        case r'UNIQUE_PER_LICENSE': return PolicyAttributesMachineUniquenessStrategyEnum.UNIQUE_PER_LICENSE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyAttributesMachineUniquenessStrategyEnumTypeTransformer] instance.
  static PolicyAttributesMachineUniquenessStrategyEnumTypeTransformer? _instance;
}


/// The matching strategy for machine fingerprints supplied during a license validation.  ### Options  - **`MATCH_ANY`**:   At least 1 of the supplied fingerprints must match a fingerprint for the license's associated   machines. E.g. if 3 fingerprints are supplied, at least 1 of them must match. - **`MATCH_TWO`**:   At least 2 of the supplied fingerprints must match a fingerprint for the license's associated   machines. E.g. if 4 fingerprints are supplied, at least 2 of them must match. - **`MATCH_MOST`**:   The majority of supplied fingerprints must match the fingerprints for the license's associated   machines. E.g. if 3 fingerprints are supplied, at least 2 of them must match. - **`MATCH_ALL`**:   All supplied fingerprints must match the fingerprints for the license's associated machines. E.g. if 3   fingerprints are supplied, all 3 of them must match. 
class PolicyAttributesMachineMatchingStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyAttributesMachineMatchingStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MATCH_ANY = PolicyAttributesMachineMatchingStrategyEnum._(r'MATCH_ANY');
  static const MATCH_TWO = PolicyAttributesMachineMatchingStrategyEnum._(r'MATCH_TWO');
  static const MATCH_MOST = PolicyAttributesMachineMatchingStrategyEnum._(r'MATCH_MOST');
  static const MATCH_ALL = PolicyAttributesMachineMatchingStrategyEnum._(r'MATCH_ALL');

  /// List of all possible values in this [enum][PolicyAttributesMachineMatchingStrategyEnum].
  static const values = <PolicyAttributesMachineMatchingStrategyEnum>[
    MATCH_ANY,
    MATCH_TWO,
    MATCH_MOST,
    MATCH_ALL,
  ];

  static PolicyAttributesMachineMatchingStrategyEnum? fromJson(dynamic value) => PolicyAttributesMachineMatchingStrategyEnumTypeTransformer().decode(value);

  static List<PolicyAttributesMachineMatchingStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributesMachineMatchingStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributesMachineMatchingStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyAttributesMachineMatchingStrategyEnum] to String,
/// and [decode] dynamic data back to [PolicyAttributesMachineMatchingStrategyEnum].
class PolicyAttributesMachineMatchingStrategyEnumTypeTransformer {
  factory PolicyAttributesMachineMatchingStrategyEnumTypeTransformer() => _instance ??= const PolicyAttributesMachineMatchingStrategyEnumTypeTransformer._();

  const PolicyAttributesMachineMatchingStrategyEnumTypeTransformer._();

  String encode(PolicyAttributesMachineMatchingStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyAttributesMachineMatchingStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyAttributesMachineMatchingStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MATCH_ANY': return PolicyAttributesMachineMatchingStrategyEnum.MATCH_ANY;
        case r'MATCH_TWO': return PolicyAttributesMachineMatchingStrategyEnum.MATCH_TWO;
        case r'MATCH_MOST': return PolicyAttributesMachineMatchingStrategyEnum.MATCH_MOST;
        case r'MATCH_ALL': return PolicyAttributesMachineMatchingStrategyEnum.MATCH_ALL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyAttributesMachineMatchingStrategyEnumTypeTransformer] instance.
  static PolicyAttributesMachineMatchingStrategyEnumTypeTransformer? _instance;
}


/// The strategy for expired licenses during a license validation and when accessing releases.  ### Options  - **`RESTRICT_ACCESS`**:   Expired licenses can continue to access releases published prior to their expiry, but automatic   upgrades are disabled. Validation scopes take precedence over expiry check during license validation. - **`REVOKE_ACCESS`**:   Expired licenses are no longer able to access any releases, including past releases and upgrades.   Expiry check takes precedence over scopes during license validation. - **`MAINTAIN_ACCESS`**:   Expired licenses can continue to access releases published prior to their expiry, but automatic   upgrades are disabled. Validation scopes take precedence over expiry check during license validation.   In addition, validations with an `EXPIRED` code will return `valid=true`. - **`ALLOW_ACCESS`**:   Expired licenses can access any releases, including past releases and future automatic upgrades.   Validation scopes take precedence over expiry check during license validation. In addition,   validations with an `EXPIRED` code will return `valid=true`. 
class PolicyAttributesExpirationStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyAttributesExpirationStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RESTRICT_ACCESS = PolicyAttributesExpirationStrategyEnum._(r'RESTRICT_ACCESS');
  static const REVOKE_ACCESS = PolicyAttributesExpirationStrategyEnum._(r'REVOKE_ACCESS');
  static const MAINTAIN_ACCESS = PolicyAttributesExpirationStrategyEnum._(r'MAINTAIN_ACCESS');
  static const ALLOW_ACCESS = PolicyAttributesExpirationStrategyEnum._(r'ALLOW_ACCESS');

  /// List of all possible values in this [enum][PolicyAttributesExpirationStrategyEnum].
  static const values = <PolicyAttributesExpirationStrategyEnum>[
    RESTRICT_ACCESS,
    REVOKE_ACCESS,
    MAINTAIN_ACCESS,
    ALLOW_ACCESS,
  ];

  static PolicyAttributesExpirationStrategyEnum? fromJson(dynamic value) => PolicyAttributesExpirationStrategyEnumTypeTransformer().decode(value);

  static List<PolicyAttributesExpirationStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributesExpirationStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributesExpirationStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyAttributesExpirationStrategyEnum] to String,
/// and [decode] dynamic data back to [PolicyAttributesExpirationStrategyEnum].
class PolicyAttributesExpirationStrategyEnumTypeTransformer {
  factory PolicyAttributesExpirationStrategyEnumTypeTransformer() => _instance ??= const PolicyAttributesExpirationStrategyEnumTypeTransformer._();

  const PolicyAttributesExpirationStrategyEnumTypeTransformer._();

  String encode(PolicyAttributesExpirationStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyAttributesExpirationStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyAttributesExpirationStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RESTRICT_ACCESS': return PolicyAttributesExpirationStrategyEnum.RESTRICT_ACCESS;
        case r'REVOKE_ACCESS': return PolicyAttributesExpirationStrategyEnum.REVOKE_ACCESS;
        case r'MAINTAIN_ACCESS': return PolicyAttributesExpirationStrategyEnum.MAINTAIN_ACCESS;
        case r'ALLOW_ACCESS': return PolicyAttributesExpirationStrategyEnum.ALLOW_ACCESS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyAttributesExpirationStrategyEnumTypeTransformer] instance.
  static PolicyAttributesExpirationStrategyEnumTypeTransformer? _instance;
}


/// Control whether a license's expiration is reset when transferred to this policy.  ### Options  - **`RESET_EXPIRY`**:   Reset the transferred license's expiry from the time of transfer. For example, if the license had an   expiry 3 months from now, and the new policy has a duration of 1 year, transferring would reset the   expiry to 1 year from the time of transfer. When the policy has no duration, the license's expiry is   removed. - **`KEEP_EXPIRY`**: Do not change the license's current expiry. This is the default. 
class PolicyAttributesTransferStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyAttributesTransferStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RESET_EXPIRY = PolicyAttributesTransferStrategyEnum._(r'RESET_EXPIRY');
  static const KEEP_EXPIRY = PolicyAttributesTransferStrategyEnum._(r'KEEP_EXPIRY');

  /// List of all possible values in this [enum][PolicyAttributesTransferStrategyEnum].
  static const values = <PolicyAttributesTransferStrategyEnum>[
    RESET_EXPIRY,
    KEEP_EXPIRY,
  ];

  static PolicyAttributesTransferStrategyEnum? fromJson(dynamic value) => PolicyAttributesTransferStrategyEnumTypeTransformer().decode(value);

  static List<PolicyAttributesTransferStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributesTransferStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributesTransferStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyAttributesTransferStrategyEnum] to String,
/// and [decode] dynamic data back to [PolicyAttributesTransferStrategyEnum].
class PolicyAttributesTransferStrategyEnumTypeTransformer {
  factory PolicyAttributesTransferStrategyEnumTypeTransformer() => _instance ??= const PolicyAttributesTransferStrategyEnumTypeTransformer._();

  const PolicyAttributesTransferStrategyEnumTypeTransformer._();

  String encode(PolicyAttributesTransferStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyAttributesTransferStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyAttributesTransferStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RESET_EXPIRY': return PolicyAttributesTransferStrategyEnum.RESET_EXPIRY;
        case r'KEEP_EXPIRY': return PolicyAttributesTransferStrategyEnum.KEEP_EXPIRY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyAttributesTransferStrategyEnumTypeTransformer] instance.
  static PolicyAttributesTransferStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for authenticating as a license, for client-side integrations.  ### Options  - **`TOKEN`**:   Allow licenses to authenticate using [a license token](https://keygen.sh/docs/api/authentication/#license-tokens).   This is the default. - **`LICENSE`**: Allow licenses to authenticate using [a license key](https://keygen.sh/docs/api/authentication/#license-authentication). - **`MIXED`**: Allow both license token and license key authentication (each covered above). - **`NONE`**: Disable the ability for licenses to authenticate with the API. 
class PolicyAttributesAuthenticationStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyAttributesAuthenticationStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TOKEN = PolicyAttributesAuthenticationStrategyEnum._(r'TOKEN');
  static const LICENSE = PolicyAttributesAuthenticationStrategyEnum._(r'LICENSE');
  static const MIXED = PolicyAttributesAuthenticationStrategyEnum._(r'MIXED');
  static const NONE = PolicyAttributesAuthenticationStrategyEnum._(r'NONE');

  /// List of all possible values in this [enum][PolicyAttributesAuthenticationStrategyEnum].
  static const values = <PolicyAttributesAuthenticationStrategyEnum>[
    TOKEN,
    LICENSE,
    MIXED,
    NONE,
  ];

  static PolicyAttributesAuthenticationStrategyEnum? fromJson(dynamic value) => PolicyAttributesAuthenticationStrategyEnumTypeTransformer().decode(value);

  static List<PolicyAttributesAuthenticationStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributesAuthenticationStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributesAuthenticationStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyAttributesAuthenticationStrategyEnum] to String,
/// and [decode] dynamic data back to [PolicyAttributesAuthenticationStrategyEnum].
class PolicyAttributesAuthenticationStrategyEnumTypeTransformer {
  factory PolicyAttributesAuthenticationStrategyEnumTypeTransformer() => _instance ??= const PolicyAttributesAuthenticationStrategyEnumTypeTransformer._();

  const PolicyAttributesAuthenticationStrategyEnumTypeTransformer._();

  String encode(PolicyAttributesAuthenticationStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyAttributesAuthenticationStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyAttributesAuthenticationStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TOKEN': return PolicyAttributesAuthenticationStrategyEnum.TOKEN;
        case r'LICENSE': return PolicyAttributesAuthenticationStrategyEnum.LICENSE;
        case r'MIXED': return PolicyAttributesAuthenticationStrategyEnum.MIXED;
        case r'NONE': return PolicyAttributesAuthenticationStrategyEnum.NONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyAttributesAuthenticationStrategyEnumTypeTransformer] instance.
  static PolicyAttributesAuthenticationStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for leasing machines.  ### Options  - **`PER_LICENSE`**:   Machine processes are counted per-license, i.e. collectively across all of a license's machines. - **`PER_USER`**:   Machines are counted per-user, per-license. For example, with a max machines value of 2, each user could have 2 machines per-license. 
class PolicyAttributesMachineLeasingStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyAttributesMachineLeasingStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PER_LICENSE = PolicyAttributesMachineLeasingStrategyEnum._(r'PER_LICENSE');
  static const PER_USER = PolicyAttributesMachineLeasingStrategyEnum._(r'PER_USER');

  /// List of all possible values in this [enum][PolicyAttributesMachineLeasingStrategyEnum].
  static const values = <PolicyAttributesMachineLeasingStrategyEnum>[
    PER_LICENSE,
    PER_USER,
  ];

  static PolicyAttributesMachineLeasingStrategyEnum? fromJson(dynamic value) => PolicyAttributesMachineLeasingStrategyEnumTypeTransformer().decode(value);

  static List<PolicyAttributesMachineLeasingStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributesMachineLeasingStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributesMachineLeasingStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyAttributesMachineLeasingStrategyEnum] to String,
/// and [decode] dynamic data back to [PolicyAttributesMachineLeasingStrategyEnum].
class PolicyAttributesMachineLeasingStrategyEnumTypeTransformer {
  factory PolicyAttributesMachineLeasingStrategyEnumTypeTransformer() => _instance ??= const PolicyAttributesMachineLeasingStrategyEnumTypeTransformer._();

  const PolicyAttributesMachineLeasingStrategyEnumTypeTransformer._();

  String encode(PolicyAttributesMachineLeasingStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyAttributesMachineLeasingStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyAttributesMachineLeasingStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PER_LICENSE': return PolicyAttributesMachineLeasingStrategyEnum.PER_LICENSE;
        case r'PER_USER': return PolicyAttributesMachineLeasingStrategyEnum.PER_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyAttributesMachineLeasingStrategyEnumTypeTransformer] instance.
  static PolicyAttributesMachineLeasingStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for leasing machine processes.  ### Options  - **`PER_MACHINE`**:   Processes are counted per-machine. For example, given a policy with a max processes value of 5, each license could have up to 5 processes for each machine. This is the default. - **`PER_LICENSE`**:   Processes are counted per-license. For example, with a max processes value of 5, each license could have up to 5 processes combined across all machines. - **`PER_USER`**:   Processes are counted per-user, per-license. For example, with a max processes value of 5, each user could have up to 5 processes combined across all owned machines per-license. 
class PolicyAttributesProcessLeasingStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyAttributesProcessLeasingStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PER_MACHINE = PolicyAttributesProcessLeasingStrategyEnum._(r'PER_MACHINE');
  static const PER_LICENSE = PolicyAttributesProcessLeasingStrategyEnum._(r'PER_LICENSE');
  static const PER_USER = PolicyAttributesProcessLeasingStrategyEnum._(r'PER_USER');

  /// List of all possible values in this [enum][PolicyAttributesProcessLeasingStrategyEnum].
  static const values = <PolicyAttributesProcessLeasingStrategyEnum>[
    PER_MACHINE,
    PER_LICENSE,
    PER_USER,
  ];

  static PolicyAttributesProcessLeasingStrategyEnum? fromJson(dynamic value) => PolicyAttributesProcessLeasingStrategyEnumTypeTransformer().decode(value);

  static List<PolicyAttributesProcessLeasingStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributesProcessLeasingStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributesProcessLeasingStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyAttributesProcessLeasingStrategyEnum] to String,
/// and [decode] dynamic data back to [PolicyAttributesProcessLeasingStrategyEnum].
class PolicyAttributesProcessLeasingStrategyEnumTypeTransformer {
  factory PolicyAttributesProcessLeasingStrategyEnumTypeTransformer() => _instance ??= const PolicyAttributesProcessLeasingStrategyEnumTypeTransformer._();

  const PolicyAttributesProcessLeasingStrategyEnumTypeTransformer._();

  String encode(PolicyAttributesProcessLeasingStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyAttributesProcessLeasingStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyAttributesProcessLeasingStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PER_MACHINE': return PolicyAttributesProcessLeasingStrategyEnum.PER_MACHINE;
        case r'PER_LICENSE': return PolicyAttributesProcessLeasingStrategyEnum.PER_LICENSE;
        case r'PER_USER': return PolicyAttributesProcessLeasingStrategyEnum.PER_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyAttributesProcessLeasingStrategyEnumTypeTransformer] instance.
  static PolicyAttributesProcessLeasingStrategyEnumTypeTransformer? _instance;
}


/// The strategy used for allowing machine, core and process overages. Set to `NO_OVERAGE` to disable overages altogether (attempts to exceed a limit will then result in an error).  ### Options  - **`ALWAYS_ALLOW_OVERAGE`**:   The license may exceed its limits, and doing so will not effect the licenses validity, i.e. the   following validation codes will return `valid=true`: `TOO_MANY_MACHINES`, `TOO_MANY_CORES`,   `TOO_MANY_PROCESSES`. - **`ALLOW_1_25X_OVERAGE`**:   The license may exceed its limits, up to a maximum of 1.25x. Exceeding a limit will not effect the   license's validity right away, i.e. the following validation codes will return `valid=true`:   `TOO_MANY_MACHINES`, `TOO_MANY_CORES`, `TOO_MANY_PROCESSES`. The license will begin to fail validation   once the 1.25x allowance has been exceeded. When using a 1.25x allowance, all resource limits must be   divisible by 4. - **`ALLOW_1_5X_OVERAGE`**:   The license may exceed its limits, up to a maximum of 1.5x. Exceeding a limit will not effect the   license's validity right away, i.e. the following validation codes will return `valid=true`:   `TOO_MANY_MACHINES`, `TOO_MANY_CORES`, `TOO_MANY_PROCESSES`. The license will begin to fail validation   once the 1.5x allowance has been exceeded. When using a 1.5x allowance, all resource limits must be   divisible by 2. - **`ALLOW_2X_OVERAGE`**:   The license may exceed its limits, up to a maximum of 2x. Exceeding a limit will not effect the   license's validity right away, i.e. the following validation codes will return `valid=true`:   `TOO_MANY_MACHINES`, `TOO_MANY_CORES`, `TOO_MANY_PROCESSES`.   The license will begin to fail validation once the 2x allowance has been exceeded. - **`NO_OVERAGE`**: Do not allow overages. Attempts to exceed limits will fail. This is the default. 
class PolicyAttributesOverageStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const PolicyAttributesOverageStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALWAYS_ALLOW_OVERAGE = PolicyAttributesOverageStrategyEnum._(r'ALWAYS_ALLOW_OVERAGE');
  static const aLLOW125XOVERAGE = PolicyAttributesOverageStrategyEnum._(r'ALLOW_1_25X_OVERAGE');
  static const aLLOW15XOVERAGE = PolicyAttributesOverageStrategyEnum._(r'ALLOW_1_5X_OVERAGE');
  static const aLLOW2XOVERAGE = PolicyAttributesOverageStrategyEnum._(r'ALLOW_2X_OVERAGE');
  static const NO_OVERAGE = PolicyAttributesOverageStrategyEnum._(r'NO_OVERAGE');

  /// List of all possible values in this [enum][PolicyAttributesOverageStrategyEnum].
  static const values = <PolicyAttributesOverageStrategyEnum>[
    ALWAYS_ALLOW_OVERAGE,
    aLLOW125XOVERAGE,
    aLLOW15XOVERAGE,
    aLLOW2XOVERAGE,
    NO_OVERAGE,
  ];

  static PolicyAttributesOverageStrategyEnum? fromJson(dynamic value) => PolicyAttributesOverageStrategyEnumTypeTransformer().decode(value);

  static List<PolicyAttributesOverageStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyAttributesOverageStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyAttributesOverageStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PolicyAttributesOverageStrategyEnum] to String,
/// and [decode] dynamic data back to [PolicyAttributesOverageStrategyEnum].
class PolicyAttributesOverageStrategyEnumTypeTransformer {
  factory PolicyAttributesOverageStrategyEnumTypeTransformer() => _instance ??= const PolicyAttributesOverageStrategyEnumTypeTransformer._();

  const PolicyAttributesOverageStrategyEnumTypeTransformer._();

  String encode(PolicyAttributesOverageStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PolicyAttributesOverageStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PolicyAttributesOverageStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALWAYS_ALLOW_OVERAGE': return PolicyAttributesOverageStrategyEnum.ALWAYS_ALLOW_OVERAGE;
        case r'ALLOW_1_25X_OVERAGE': return PolicyAttributesOverageStrategyEnum.aLLOW125XOVERAGE;
        case r'ALLOW_1_5X_OVERAGE': return PolicyAttributesOverageStrategyEnum.aLLOW15XOVERAGE;
        case r'ALLOW_2X_OVERAGE': return PolicyAttributesOverageStrategyEnum.aLLOW2XOVERAGE;
        case r'NO_OVERAGE': return PolicyAttributesOverageStrategyEnum.NO_OVERAGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PolicyAttributesOverageStrategyEnumTypeTransformer] instance.
  static PolicyAttributesOverageStrategyEnumTypeTransformer? _instance;
}


