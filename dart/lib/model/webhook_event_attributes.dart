//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookEventAttributes {
  /// Returns a new [WebhookEventAttributes] instance.
  WebhookEventAttributes({
    required this.endpoint,
    required this.payload,
    required this.event,
    required this.status,
    required this.lastResponseCode,
    required this.lastResponseBody,
    required this.created,
    required this.updated,
  });

  /// The endpoint that the event will be sent to.
  String endpoint;

  /// The event payload in serialized JSON format.
  Object payload;

  WebhookEventAttributesEventEnum event;

  /// The current status of the event. Possible statuses are: `DELIVERING`, `DELIVERED`, `FAILING`, and `FAILED`. 
  WebhookEventAttributesStatusEnum status;

  /// The last HTTP response code that your webhook endpoint sent in response to the webhook.
  int? lastResponseCode;

  /// The last HTTP response body that your webhook endpoint sent in response to the webhook.
  String? lastResponseBody;

  /// When the event was created.
  DateTime created;

  /// When the event was last updated.
  DateTime updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookEventAttributes &&
    other.endpoint == endpoint &&
    other.payload == payload &&
    other.event == event &&
    other.status == status &&
    other.lastResponseCode == lastResponseCode &&
    other.lastResponseBody == lastResponseBody &&
    other.created == created &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (endpoint.hashCode) +
    (payload.hashCode) +
    (event.hashCode) +
    (status.hashCode) +
    (lastResponseCode == null ? 0 : lastResponseCode!.hashCode) +
    (lastResponseBody == null ? 0 : lastResponseBody!.hashCode) +
    (created.hashCode) +
    (updated.hashCode);

  @override
  String toString() => 'WebhookEventAttributes[endpoint=$endpoint, payload=$payload, event=$event, status=$status, lastResponseCode=$lastResponseCode, lastResponseBody=$lastResponseBody, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'endpoint'] = this.endpoint;
      json[r'payload'] = this.payload;
      json[r'event'] = this.event;
      json[r'status'] = this.status;
    if (this.lastResponseCode != null) {
      json[r'lastResponseCode'] = this.lastResponseCode;
    } else {
      json[r'lastResponseCode'] = null;
    }
    if (this.lastResponseBody != null) {
      json[r'lastResponseBody'] = this.lastResponseBody;
    } else {
      json[r'lastResponseBody'] = null;
    }
      json[r'created'] = this.created.toUtc().toIso8601String();
      json[r'updated'] = this.updated.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [WebhookEventAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookEventAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookEventAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookEventAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookEventAttributes(
        endpoint: mapValueOfType<String>(json, r'endpoint')!,
        payload: mapValueOfType<Object>(json, r'payload')!,
        event: WebhookEventAttributesEventEnum.fromJson(json[r'event'])!,
        status: WebhookEventAttributesStatusEnum.fromJson(json[r'status'])!,
        lastResponseCode: mapValueOfType<int>(json, r'lastResponseCode'),
        lastResponseBody: mapValueOfType<String>(json, r'lastResponseBody'),
        created: mapDateTime(json, r'created', r'')!,
        updated: mapDateTime(json, r'updated', r'')!,
      );
    }
    return null;
  }

  static List<WebhookEventAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEventAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEventAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookEventAttributes> mapFromJson(dynamic json) {
    final map = <String, WebhookEventAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookEventAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookEventAttributes-objects as value to a dart map
  static Map<String, List<WebhookEventAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookEventAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookEventAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'endpoint',
    'payload',
    'event',
    'status',
    'lastResponseCode',
    'lastResponseBody',
    'created',
    'updated',
  };
}


class WebhookEventAttributesEventEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookEventAttributesEventEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const accountPeriodUpdated = WebhookEventAttributesEventEnum._(r'account.updated');
  static const accountPeriodSubscriptionPeriodPaused = WebhookEventAttributesEventEnum._(r'account.subscription.paused');
  static const accountPeriodSubscriptionPeriodResumed = WebhookEventAttributesEventEnum._(r'account.subscription.resumed');
  static const accountPeriodSubscriptionPeriodCanceled = WebhookEventAttributesEventEnum._(r'account.subscription.canceled');
  static const accountPeriodSubscriptionPeriodRenewed = WebhookEventAttributesEventEnum._(r'account.subscription.renewed');
  static const accountPeriodPlanPeriodUpdated = WebhookEventAttributesEventEnum._(r'account.plan.updated');
  static const accountPeriodBillingPeriodUpdated = WebhookEventAttributesEventEnum._(r'account.billing.updated');
  static const userPeriodCreated = WebhookEventAttributesEventEnum._(r'user.created');
  static const userPeriodUpdated = WebhookEventAttributesEventEnum._(r'user.updated');
  static const userPeriodDeleted = WebhookEventAttributesEventEnum._(r'user.deleted');
  static const userPeriodPasswordReset = WebhookEventAttributesEventEnum._(r'user.password-reset');
  static const userPeriodBanned = WebhookEventAttributesEventEnum._(r'user.banned');
  static const userPeriodUnbanned = WebhookEventAttributesEventEnum._(r'user.unbanned');
  static const userPeriodGroupPeriodUpdated = WebhookEventAttributesEventEnum._(r'user.group.updated');
  static const productPeriodCreated = WebhookEventAttributesEventEnum._(r'product.created');
  static const productPeriodUpdated = WebhookEventAttributesEventEnum._(r'product.updated');
  static const productPeriodDeleted = WebhookEventAttributesEventEnum._(r'product.deleted');
  static const policyPeriodCreated = WebhookEventAttributesEventEnum._(r'policy.created');
  static const policyPeriodUpdated = WebhookEventAttributesEventEnum._(r'policy.updated');
  static const policyPeriodDeleted = WebhookEventAttributesEventEnum._(r'policy.deleted');
  static const policyPeriodPoolPeriodPopped = WebhookEventAttributesEventEnum._(r'policy.pool.popped');
  static const policyPeriodEntitlementsPeriodAttached = WebhookEventAttributesEventEnum._(r'policy.entitlements.attached');
  static const policyPeriodEntitlementsPeriodDetached = WebhookEventAttributesEventEnum._(r'policy.entitlements.detached');
  static const licensePeriodCreated = WebhookEventAttributesEventEnum._(r'license.created');
  static const licensePeriodUpdated = WebhookEventAttributesEventEnum._(r'license.updated');
  static const licensePeriodDeleted = WebhookEventAttributesEventEnum._(r'license.deleted');
  static const licensePeriodExpiringSoon = WebhookEventAttributesEventEnum._(r'license.expiring-soon');
  static const licensePeriodExpired = WebhookEventAttributesEventEnum._(r'license.expired');
  static const licensePeriodCheckedOut = WebhookEventAttributesEventEnum._(r'license.checked-out');
  static const licensePeriodCheckedIn = WebhookEventAttributesEventEnum._(r'license.checked-in');
  static const licensePeriodCheckInRequiredSoon = WebhookEventAttributesEventEnum._(r'license.check-in-required-soon');
  static const licensePeriodCheckInOverdue = WebhookEventAttributesEventEnum._(r'license.check-in-overdue');
  static const licensePeriodValidationPeriodSucceeded = WebhookEventAttributesEventEnum._(r'license.validation.succeeded');
  static const licensePeriodValidationPeriodFailed = WebhookEventAttributesEventEnum._(r'license.validation.failed');
  static const licensePeriodUsagePeriodIncremented = WebhookEventAttributesEventEnum._(r'license.usage.incremented');
  static const licensePeriodUsagePeriodDecremented = WebhookEventAttributesEventEnum._(r'license.usage.decremented');
  static const licensePeriodUsagePeriodReset = WebhookEventAttributesEventEnum._(r'license.usage.reset');
  static const licensePeriodRenewed = WebhookEventAttributesEventEnum._(r'license.renewed');
  static const licensePeriodRevoked = WebhookEventAttributesEventEnum._(r'license.revoked');
  static const licensePeriodSuspended = WebhookEventAttributesEventEnum._(r'license.suspended');
  static const licensePeriodReinstated = WebhookEventAttributesEventEnum._(r'license.reinstated');
  static const licensePeriodPolicyPeriodUpdated = WebhookEventAttributesEventEnum._(r'license.policy.updated');
  static const licensePeriodUserPeriodUpdated = WebhookEventAttributesEventEnum._(r'license.user.updated');
  static const licensePeriodGroupPeriodUpdated = WebhookEventAttributesEventEnum._(r'license.group.updated');
  static const licensePeriodEntitlementsPeriodAttached = WebhookEventAttributesEventEnum._(r'license.entitlements.attached');
  static const licensePeriodEntitlementsPeriodDetached = WebhookEventAttributesEventEnum._(r'license.entitlements.detached');
  static const machinePeriodCreated = WebhookEventAttributesEventEnum._(r'machine.created');
  static const machinePeriodUpdated = WebhookEventAttributesEventEnum._(r'machine.updated');
  static const machinePeriodDeleted = WebhookEventAttributesEventEnum._(r'machine.deleted');
  static const machinePeriodCheckedOut = WebhookEventAttributesEventEnum._(r'machine.checked-out');
  static const machinePeriodHeartbeatPeriodPing = WebhookEventAttributesEventEnum._(r'machine.heartbeat.ping');
  static const machinePeriodHeartbeatPeriodDead = WebhookEventAttributesEventEnum._(r'machine.heartbeat.dead');
  static const machinePeriodHeartbeatPeriodResurrected = WebhookEventAttributesEventEnum._(r'machine.heartbeat.resurrected');
  static const machinePeriodHeartbeatPeriodReset = WebhookEventAttributesEventEnum._(r'machine.heartbeat.reset');
  static const machinePeriodGroupPeriodUpdated = WebhookEventAttributesEventEnum._(r'machine.group.updated');
  static const packagePeriodCreated = WebhookEventAttributesEventEnum._(r'package.created');
  static const packagePeriodUpdated = WebhookEventAttributesEventEnum._(r'package.updated');
  static const packagePeriodDeleted = WebhookEventAttributesEventEnum._(r'package.deleted');
  static const processPeriodCreated = WebhookEventAttributesEventEnum._(r'process.created');
  static const processPeriodUpdated = WebhookEventAttributesEventEnum._(r'process.updated');
  static const processPeriodDeleted = WebhookEventAttributesEventEnum._(r'process.deleted');
  static const processPeriodHeartbeatPeriodPing = WebhookEventAttributesEventEnum._(r'process.heartbeat.ping');
  static const processPeriodHeartbeatPeriodDead = WebhookEventAttributesEventEnum._(r'process.heartbeat.dead');
  static const processPeriodHeartbeatPeriodResurrected = WebhookEventAttributesEventEnum._(r'process.heartbeat.resurrected');
  static const tokenPeriodGenerated = WebhookEventAttributesEventEnum._(r'token.generated');
  static const tokenPeriodRegenerated = WebhookEventAttributesEventEnum._(r'token.regenerated');
  static const tokenPeriodRevoked = WebhookEventAttributesEventEnum._(r'token.revoked');
  static const secondFactorPeriodCreated = WebhookEventAttributesEventEnum._(r'second-factor.created');
  static const secondFactorPeriodEnabled = WebhookEventAttributesEventEnum._(r'second-factor.enabled');
  static const secondFactorPeriodDisabled = WebhookEventAttributesEventEnum._(r'second-factor.disabled');
  static const secondFactorPeriodDeleted = WebhookEventAttributesEventEnum._(r'second-factor.deleted');
  static const entitlementPeriodCreated = WebhookEventAttributesEventEnum._(r'entitlement.created');
  static const entitlementPeriodUpdated = WebhookEventAttributesEventEnum._(r'entitlement.updated');
  static const entitlementPeriodDeleted = WebhookEventAttributesEventEnum._(r'entitlement.deleted');
  static const releasePeriodCreated = WebhookEventAttributesEventEnum._(r'release.created');
  static const releasePeriodUpdated = WebhookEventAttributesEventEnum._(r'release.updated');
  static const releasePeriodDeleted = WebhookEventAttributesEventEnum._(r'release.deleted');
  static const releasePeriodUpgraded = WebhookEventAttributesEventEnum._(r'release.upgraded');
  static const releasePeriodPackagePeriodUpdated = WebhookEventAttributesEventEnum._(r'release.package.updated');
  static const releasePeriodPublished = WebhookEventAttributesEventEnum._(r'release.published');
  static const releasePeriodYanked = WebhookEventAttributesEventEnum._(r'release.yanked');
  static const releasePeriodConstraintsPeriodAttached = WebhookEventAttributesEventEnum._(r'release.constraints.attached');
  static const releasePeriodConstraintsPeriodDetached = WebhookEventAttributesEventEnum._(r'release.constraints.detached');
  static const artifactPeriodCreated = WebhookEventAttributesEventEnum._(r'artifact.created');
  static const artifactPeriodUpdated = WebhookEventAttributesEventEnum._(r'artifact.updated');
  static const artifactPeriodDeleted = WebhookEventAttributesEventEnum._(r'artifact.deleted');
  static const artifactPeriodDownloaded = WebhookEventAttributesEventEnum._(r'artifact.downloaded');
  static const artifactPeriodUploaded = WebhookEventAttributesEventEnum._(r'artifact.uploaded');
  static const groupPeriodCreated = WebhookEventAttributesEventEnum._(r'group.created');
  static const groupPeriodUpdated = WebhookEventAttributesEventEnum._(r'group.updated');
  static const groupPeriodDeleted = WebhookEventAttributesEventEnum._(r'group.deleted');
  static const groupPeriodOwnersPeriodAttached = WebhookEventAttributesEventEnum._(r'group.owners.attached');
  static const groupPeriodOwnersPeriodDetached = WebhookEventAttributesEventEnum._(r'group.owners.detached');

  /// List of all possible values in this [enum][WebhookEventAttributesEventEnum].
  static const values = <WebhookEventAttributesEventEnum>[
    accountPeriodUpdated,
    accountPeriodSubscriptionPeriodPaused,
    accountPeriodSubscriptionPeriodResumed,
    accountPeriodSubscriptionPeriodCanceled,
    accountPeriodSubscriptionPeriodRenewed,
    accountPeriodPlanPeriodUpdated,
    accountPeriodBillingPeriodUpdated,
    userPeriodCreated,
    userPeriodUpdated,
    userPeriodDeleted,
    userPeriodPasswordReset,
    userPeriodBanned,
    userPeriodUnbanned,
    userPeriodGroupPeriodUpdated,
    productPeriodCreated,
    productPeriodUpdated,
    productPeriodDeleted,
    policyPeriodCreated,
    policyPeriodUpdated,
    policyPeriodDeleted,
    policyPeriodPoolPeriodPopped,
    policyPeriodEntitlementsPeriodAttached,
    policyPeriodEntitlementsPeriodDetached,
    licensePeriodCreated,
    licensePeriodUpdated,
    licensePeriodDeleted,
    licensePeriodExpiringSoon,
    licensePeriodExpired,
    licensePeriodCheckedOut,
    licensePeriodCheckedIn,
    licensePeriodCheckInRequiredSoon,
    licensePeriodCheckInOverdue,
    licensePeriodValidationPeriodSucceeded,
    licensePeriodValidationPeriodFailed,
    licensePeriodUsagePeriodIncremented,
    licensePeriodUsagePeriodDecremented,
    licensePeriodUsagePeriodReset,
    licensePeriodRenewed,
    licensePeriodRevoked,
    licensePeriodSuspended,
    licensePeriodReinstated,
    licensePeriodPolicyPeriodUpdated,
    licensePeriodUserPeriodUpdated,
    licensePeriodGroupPeriodUpdated,
    licensePeriodEntitlementsPeriodAttached,
    licensePeriodEntitlementsPeriodDetached,
    machinePeriodCreated,
    machinePeriodUpdated,
    machinePeriodDeleted,
    machinePeriodCheckedOut,
    machinePeriodHeartbeatPeriodPing,
    machinePeriodHeartbeatPeriodDead,
    machinePeriodHeartbeatPeriodResurrected,
    machinePeriodHeartbeatPeriodReset,
    machinePeriodGroupPeriodUpdated,
    packagePeriodCreated,
    packagePeriodUpdated,
    packagePeriodDeleted,
    processPeriodCreated,
    processPeriodUpdated,
    processPeriodDeleted,
    processPeriodHeartbeatPeriodPing,
    processPeriodHeartbeatPeriodDead,
    processPeriodHeartbeatPeriodResurrected,
    tokenPeriodGenerated,
    tokenPeriodRegenerated,
    tokenPeriodRevoked,
    secondFactorPeriodCreated,
    secondFactorPeriodEnabled,
    secondFactorPeriodDisabled,
    secondFactorPeriodDeleted,
    entitlementPeriodCreated,
    entitlementPeriodUpdated,
    entitlementPeriodDeleted,
    releasePeriodCreated,
    releasePeriodUpdated,
    releasePeriodDeleted,
    releasePeriodUpgraded,
    releasePeriodPackagePeriodUpdated,
    releasePeriodPublished,
    releasePeriodYanked,
    releasePeriodConstraintsPeriodAttached,
    releasePeriodConstraintsPeriodDetached,
    artifactPeriodCreated,
    artifactPeriodUpdated,
    artifactPeriodDeleted,
    artifactPeriodDownloaded,
    artifactPeriodUploaded,
    groupPeriodCreated,
    groupPeriodUpdated,
    groupPeriodDeleted,
    groupPeriodOwnersPeriodAttached,
    groupPeriodOwnersPeriodDetached,
  ];

  static WebhookEventAttributesEventEnum? fromJson(dynamic value) => WebhookEventAttributesEventEnumTypeTransformer().decode(value);

  static List<WebhookEventAttributesEventEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEventAttributesEventEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEventAttributesEventEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookEventAttributesEventEnum] to String,
/// and [decode] dynamic data back to [WebhookEventAttributesEventEnum].
class WebhookEventAttributesEventEnumTypeTransformer {
  factory WebhookEventAttributesEventEnumTypeTransformer() => _instance ??= const WebhookEventAttributesEventEnumTypeTransformer._();

  const WebhookEventAttributesEventEnumTypeTransformer._();

  String encode(WebhookEventAttributesEventEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookEventAttributesEventEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookEventAttributesEventEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'account.updated': return WebhookEventAttributesEventEnum.accountPeriodUpdated;
        case r'account.subscription.paused': return WebhookEventAttributesEventEnum.accountPeriodSubscriptionPeriodPaused;
        case r'account.subscription.resumed': return WebhookEventAttributesEventEnum.accountPeriodSubscriptionPeriodResumed;
        case r'account.subscription.canceled': return WebhookEventAttributesEventEnum.accountPeriodSubscriptionPeriodCanceled;
        case r'account.subscription.renewed': return WebhookEventAttributesEventEnum.accountPeriodSubscriptionPeriodRenewed;
        case r'account.plan.updated': return WebhookEventAttributesEventEnum.accountPeriodPlanPeriodUpdated;
        case r'account.billing.updated': return WebhookEventAttributesEventEnum.accountPeriodBillingPeriodUpdated;
        case r'user.created': return WebhookEventAttributesEventEnum.userPeriodCreated;
        case r'user.updated': return WebhookEventAttributesEventEnum.userPeriodUpdated;
        case r'user.deleted': return WebhookEventAttributesEventEnum.userPeriodDeleted;
        case r'user.password-reset': return WebhookEventAttributesEventEnum.userPeriodPasswordReset;
        case r'user.banned': return WebhookEventAttributesEventEnum.userPeriodBanned;
        case r'user.unbanned': return WebhookEventAttributesEventEnum.userPeriodUnbanned;
        case r'user.group.updated': return WebhookEventAttributesEventEnum.userPeriodGroupPeriodUpdated;
        case r'product.created': return WebhookEventAttributesEventEnum.productPeriodCreated;
        case r'product.updated': return WebhookEventAttributesEventEnum.productPeriodUpdated;
        case r'product.deleted': return WebhookEventAttributesEventEnum.productPeriodDeleted;
        case r'policy.created': return WebhookEventAttributesEventEnum.policyPeriodCreated;
        case r'policy.updated': return WebhookEventAttributesEventEnum.policyPeriodUpdated;
        case r'policy.deleted': return WebhookEventAttributesEventEnum.policyPeriodDeleted;
        case r'policy.pool.popped': return WebhookEventAttributesEventEnum.policyPeriodPoolPeriodPopped;
        case r'policy.entitlements.attached': return WebhookEventAttributesEventEnum.policyPeriodEntitlementsPeriodAttached;
        case r'policy.entitlements.detached': return WebhookEventAttributesEventEnum.policyPeriodEntitlementsPeriodDetached;
        case r'license.created': return WebhookEventAttributesEventEnum.licensePeriodCreated;
        case r'license.updated': return WebhookEventAttributesEventEnum.licensePeriodUpdated;
        case r'license.deleted': return WebhookEventAttributesEventEnum.licensePeriodDeleted;
        case r'license.expiring-soon': return WebhookEventAttributesEventEnum.licensePeriodExpiringSoon;
        case r'license.expired': return WebhookEventAttributesEventEnum.licensePeriodExpired;
        case r'license.checked-out': return WebhookEventAttributesEventEnum.licensePeriodCheckedOut;
        case r'license.checked-in': return WebhookEventAttributesEventEnum.licensePeriodCheckedIn;
        case r'license.check-in-required-soon': return WebhookEventAttributesEventEnum.licensePeriodCheckInRequiredSoon;
        case r'license.check-in-overdue': return WebhookEventAttributesEventEnum.licensePeriodCheckInOverdue;
        case r'license.validation.succeeded': return WebhookEventAttributesEventEnum.licensePeriodValidationPeriodSucceeded;
        case r'license.validation.failed': return WebhookEventAttributesEventEnum.licensePeriodValidationPeriodFailed;
        case r'license.usage.incremented': return WebhookEventAttributesEventEnum.licensePeriodUsagePeriodIncremented;
        case r'license.usage.decremented': return WebhookEventAttributesEventEnum.licensePeriodUsagePeriodDecremented;
        case r'license.usage.reset': return WebhookEventAttributesEventEnum.licensePeriodUsagePeriodReset;
        case r'license.renewed': return WebhookEventAttributesEventEnum.licensePeriodRenewed;
        case r'license.revoked': return WebhookEventAttributesEventEnum.licensePeriodRevoked;
        case r'license.suspended': return WebhookEventAttributesEventEnum.licensePeriodSuspended;
        case r'license.reinstated': return WebhookEventAttributesEventEnum.licensePeriodReinstated;
        case r'license.policy.updated': return WebhookEventAttributesEventEnum.licensePeriodPolicyPeriodUpdated;
        case r'license.user.updated': return WebhookEventAttributesEventEnum.licensePeriodUserPeriodUpdated;
        case r'license.group.updated': return WebhookEventAttributesEventEnum.licensePeriodGroupPeriodUpdated;
        case r'license.entitlements.attached': return WebhookEventAttributesEventEnum.licensePeriodEntitlementsPeriodAttached;
        case r'license.entitlements.detached': return WebhookEventAttributesEventEnum.licensePeriodEntitlementsPeriodDetached;
        case r'machine.created': return WebhookEventAttributesEventEnum.machinePeriodCreated;
        case r'machine.updated': return WebhookEventAttributesEventEnum.machinePeriodUpdated;
        case r'machine.deleted': return WebhookEventAttributesEventEnum.machinePeriodDeleted;
        case r'machine.checked-out': return WebhookEventAttributesEventEnum.machinePeriodCheckedOut;
        case r'machine.heartbeat.ping': return WebhookEventAttributesEventEnum.machinePeriodHeartbeatPeriodPing;
        case r'machine.heartbeat.dead': return WebhookEventAttributesEventEnum.machinePeriodHeartbeatPeriodDead;
        case r'machine.heartbeat.resurrected': return WebhookEventAttributesEventEnum.machinePeriodHeartbeatPeriodResurrected;
        case r'machine.heartbeat.reset': return WebhookEventAttributesEventEnum.machinePeriodHeartbeatPeriodReset;
        case r'machine.group.updated': return WebhookEventAttributesEventEnum.machinePeriodGroupPeriodUpdated;
        case r'package.created': return WebhookEventAttributesEventEnum.packagePeriodCreated;
        case r'package.updated': return WebhookEventAttributesEventEnum.packagePeriodUpdated;
        case r'package.deleted': return WebhookEventAttributesEventEnum.packagePeriodDeleted;
        case r'process.created': return WebhookEventAttributesEventEnum.processPeriodCreated;
        case r'process.updated': return WebhookEventAttributesEventEnum.processPeriodUpdated;
        case r'process.deleted': return WebhookEventAttributesEventEnum.processPeriodDeleted;
        case r'process.heartbeat.ping': return WebhookEventAttributesEventEnum.processPeriodHeartbeatPeriodPing;
        case r'process.heartbeat.dead': return WebhookEventAttributesEventEnum.processPeriodHeartbeatPeriodDead;
        case r'process.heartbeat.resurrected': return WebhookEventAttributesEventEnum.processPeriodHeartbeatPeriodResurrected;
        case r'token.generated': return WebhookEventAttributesEventEnum.tokenPeriodGenerated;
        case r'token.regenerated': return WebhookEventAttributesEventEnum.tokenPeriodRegenerated;
        case r'token.revoked': return WebhookEventAttributesEventEnum.tokenPeriodRevoked;
        case r'second-factor.created': return WebhookEventAttributesEventEnum.secondFactorPeriodCreated;
        case r'second-factor.enabled': return WebhookEventAttributesEventEnum.secondFactorPeriodEnabled;
        case r'second-factor.disabled': return WebhookEventAttributesEventEnum.secondFactorPeriodDisabled;
        case r'second-factor.deleted': return WebhookEventAttributesEventEnum.secondFactorPeriodDeleted;
        case r'entitlement.created': return WebhookEventAttributesEventEnum.entitlementPeriodCreated;
        case r'entitlement.updated': return WebhookEventAttributesEventEnum.entitlementPeriodUpdated;
        case r'entitlement.deleted': return WebhookEventAttributesEventEnum.entitlementPeriodDeleted;
        case r'release.created': return WebhookEventAttributesEventEnum.releasePeriodCreated;
        case r'release.updated': return WebhookEventAttributesEventEnum.releasePeriodUpdated;
        case r'release.deleted': return WebhookEventAttributesEventEnum.releasePeriodDeleted;
        case r'release.upgraded': return WebhookEventAttributesEventEnum.releasePeriodUpgraded;
        case r'release.package.updated': return WebhookEventAttributesEventEnum.releasePeriodPackagePeriodUpdated;
        case r'release.published': return WebhookEventAttributesEventEnum.releasePeriodPublished;
        case r'release.yanked': return WebhookEventAttributesEventEnum.releasePeriodYanked;
        case r'release.constraints.attached': return WebhookEventAttributesEventEnum.releasePeriodConstraintsPeriodAttached;
        case r'release.constraints.detached': return WebhookEventAttributesEventEnum.releasePeriodConstraintsPeriodDetached;
        case r'artifact.created': return WebhookEventAttributesEventEnum.artifactPeriodCreated;
        case r'artifact.updated': return WebhookEventAttributesEventEnum.artifactPeriodUpdated;
        case r'artifact.deleted': return WebhookEventAttributesEventEnum.artifactPeriodDeleted;
        case r'artifact.downloaded': return WebhookEventAttributesEventEnum.artifactPeriodDownloaded;
        case r'artifact.uploaded': return WebhookEventAttributesEventEnum.artifactPeriodUploaded;
        case r'group.created': return WebhookEventAttributesEventEnum.groupPeriodCreated;
        case r'group.updated': return WebhookEventAttributesEventEnum.groupPeriodUpdated;
        case r'group.deleted': return WebhookEventAttributesEventEnum.groupPeriodDeleted;
        case r'group.owners.attached': return WebhookEventAttributesEventEnum.groupPeriodOwnersPeriodAttached;
        case r'group.owners.detached': return WebhookEventAttributesEventEnum.groupPeriodOwnersPeriodDetached;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookEventAttributesEventEnumTypeTransformer] instance.
  static WebhookEventAttributesEventEnumTypeTransformer? _instance;
}


/// The current status of the event. Possible statuses are: `DELIVERING`, `DELIVERED`, `FAILING`, and `FAILED`. 
class WebhookEventAttributesStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebhookEventAttributesStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DELIVERING = WebhookEventAttributesStatusEnum._(r'DELIVERING');
  static const DELIVERED = WebhookEventAttributesStatusEnum._(r'DELIVERED');
  static const FAILING = WebhookEventAttributesStatusEnum._(r'FAILING');
  static const FAILED = WebhookEventAttributesStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][WebhookEventAttributesStatusEnum].
  static const values = <WebhookEventAttributesStatusEnum>[
    DELIVERING,
    DELIVERED,
    FAILING,
    FAILED,
  ];

  static WebhookEventAttributesStatusEnum? fromJson(dynamic value) => WebhookEventAttributesStatusEnumTypeTransformer().decode(value);

  static List<WebhookEventAttributesStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEventAttributesStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEventAttributesStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookEventAttributesStatusEnum] to String,
/// and [decode] dynamic data back to [WebhookEventAttributesStatusEnum].
class WebhookEventAttributesStatusEnumTypeTransformer {
  factory WebhookEventAttributesStatusEnumTypeTransformer() => _instance ??= const WebhookEventAttributesStatusEnumTypeTransformer._();

  const WebhookEventAttributesStatusEnumTypeTransformer._();

  String encode(WebhookEventAttributesStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookEventAttributesStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookEventAttributesStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DELIVERING': return WebhookEventAttributesStatusEnum.DELIVERING;
        case r'DELIVERED': return WebhookEventAttributesStatusEnum.DELIVERED;
        case r'FAILING': return WebhookEventAttributesStatusEnum.FAILING;
        case r'FAILED': return WebhookEventAttributesStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookEventAttributesStatusEnumTypeTransformer] instance.
  static WebhookEventAttributesStatusEnumTypeTransformer? _instance;
}


