//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MachineAttributes {
  /// Returns a new [MachineAttributes] instance.
  MachineAttributes({
    required this.fingerprint,
    this.cores,
    this.name,
    this.ip,
    this.hostname,
    this.platform,
    this.maxProcesses,
    this.requireHeartbeat,
    this.heartbeatStatus,
    this.heartbeatDuration,
    this.lastHeartbeat,
    this.nextHeartbeat,
    this.lastCheckOut,
    this.metadata = const {},
    this.created,
    this.updated,
  });

  /// The fingerprint of the machine.
  String fingerprint;

  /// The number of CPU cores for the machine.
  int? cores;

  /// The human-readable name of the machine.
  String? name;

  /// The IP of the machine.
  String? ip;

  /// The hostname of the machine.
  String? hostname;

  /// The platform of the machine.
  String? platform;

  /// The maximum number of processes the machine can have associated with it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxProcesses;

  /// Whether or not the machine requires heartbeat pings, i.e. the policy requires heartbeats, or the machine has an active heartbeat monitor. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? requireHeartbeat;

  /// The status of the machine's heartbeat.
  MachineAttributesHeartbeatStatusEnum? heartbeatStatus;

  /// The policy's heartbeat duration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? heartbeatDuration;

  /// When the machine last sent a heartbeat ping.
  DateTime? lastHeartbeat;

  /// The time at which the machine is required to send a heartbeat ping by.
  DateTime? nextHeartbeat;

  /// When the machine was last checked-out.
  DateTime? lastCheckOut;

  /// Object containing machine metadata.
  Map<String, Object> metadata;

  /// When the machine was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? created;

  /// When the machine was last updated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MachineAttributes &&
    other.fingerprint == fingerprint &&
    other.cores == cores &&
    other.name == name &&
    other.ip == ip &&
    other.hostname == hostname &&
    other.platform == platform &&
    other.maxProcesses == maxProcesses &&
    other.requireHeartbeat == requireHeartbeat &&
    other.heartbeatStatus == heartbeatStatus &&
    other.heartbeatDuration == heartbeatDuration &&
    other.lastHeartbeat == lastHeartbeat &&
    other.nextHeartbeat == nextHeartbeat &&
    other.lastCheckOut == lastCheckOut &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.created == created &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fingerprint.hashCode) +
    (cores == null ? 0 : cores!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (ip == null ? 0 : ip!.hashCode) +
    (hostname == null ? 0 : hostname!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (maxProcesses == null ? 0 : maxProcesses!.hashCode) +
    (requireHeartbeat == null ? 0 : requireHeartbeat!.hashCode) +
    (heartbeatStatus == null ? 0 : heartbeatStatus!.hashCode) +
    (heartbeatDuration == null ? 0 : heartbeatDuration!.hashCode) +
    (lastHeartbeat == null ? 0 : lastHeartbeat!.hashCode) +
    (nextHeartbeat == null ? 0 : nextHeartbeat!.hashCode) +
    (lastCheckOut == null ? 0 : lastCheckOut!.hashCode) +
    (metadata.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'MachineAttributes[fingerprint=$fingerprint, cores=$cores, name=$name, ip=$ip, hostname=$hostname, platform=$platform, maxProcesses=$maxProcesses, requireHeartbeat=$requireHeartbeat, heartbeatStatus=$heartbeatStatus, heartbeatDuration=$heartbeatDuration, lastHeartbeat=$lastHeartbeat, nextHeartbeat=$nextHeartbeat, lastCheckOut=$lastCheckOut, metadata=$metadata, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fingerprint'] = this.fingerprint;
    if (this.cores != null) {
      json[r'cores'] = this.cores;
    } else {
      json[r'cores'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
    if (this.hostname != null) {
      json[r'hostname'] = this.hostname;
    } else {
      json[r'hostname'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.maxProcesses != null) {
      json[r'maxProcesses'] = this.maxProcesses;
    } else {
      json[r'maxProcesses'] = null;
    }
    if (this.requireHeartbeat != null) {
      json[r'requireHeartbeat'] = this.requireHeartbeat;
    } else {
      json[r'requireHeartbeat'] = null;
    }
    if (this.heartbeatStatus != null) {
      json[r'heartbeatStatus'] = this.heartbeatStatus;
    } else {
      json[r'heartbeatStatus'] = null;
    }
    if (this.heartbeatDuration != null) {
      json[r'heartbeatDuration'] = this.heartbeatDuration;
    } else {
      json[r'heartbeatDuration'] = null;
    }
    if (this.lastHeartbeat != null) {
      json[r'lastHeartbeat'] = this.lastHeartbeat!.toUtc().toIso8601String();
    } else {
      json[r'lastHeartbeat'] = null;
    }
    if (this.nextHeartbeat != null) {
      json[r'nextHeartbeat'] = this.nextHeartbeat!.toUtc().toIso8601String();
    } else {
      json[r'nextHeartbeat'] = null;
    }
    if (this.lastCheckOut != null) {
      json[r'lastCheckOut'] = this.lastCheckOut!.toUtc().toIso8601String();
    } else {
      json[r'lastCheckOut'] = null;
    }
      json[r'metadata'] = this.metadata;
    if (this.created != null) {
      json[r'created'] = this.created!.toUtc().toIso8601String();
    } else {
      json[r'created'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated!.toUtc().toIso8601String();
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [MachineAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MachineAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MachineAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MachineAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MachineAttributes(
        fingerprint: mapValueOfType<String>(json, r'fingerprint')!,
        cores: mapValueOfType<int>(json, r'cores'),
        name: mapValueOfType<String>(json, r'name'),
        ip: mapValueOfType<String>(json, r'ip'),
        hostname: mapValueOfType<String>(json, r'hostname'),
        platform: mapValueOfType<String>(json, r'platform'),
        maxProcesses: mapValueOfType<int>(json, r'maxProcesses'),
        requireHeartbeat: mapValueOfType<bool>(json, r'requireHeartbeat'),
        heartbeatStatus: MachineAttributesHeartbeatStatusEnum.fromJson(json[r'heartbeatStatus']),
        heartbeatDuration: mapValueOfType<int>(json, r'heartbeatDuration'),
        lastHeartbeat: mapDateTime(json, r'lastHeartbeat', r''),
        nextHeartbeat: mapDateTime(json, r'nextHeartbeat', r''),
        lastCheckOut: mapDateTime(json, r'lastCheckOut', r''),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        created: mapDateTime(json, r'created', r''),
        updated: mapDateTime(json, r'updated', r''),
      );
    }
    return null;
  }

  static List<MachineAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MachineAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MachineAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MachineAttributes> mapFromJson(dynamic json) {
    final map = <String, MachineAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MachineAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MachineAttributes-objects as value to a dart map
  static Map<String, List<MachineAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MachineAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MachineAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fingerprint',
  };
}

/// The status of the machine's heartbeat.
class MachineAttributesHeartbeatStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const MachineAttributesHeartbeatStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NOT_STARTED = MachineAttributesHeartbeatStatusEnum._(r'NOT_STARTED');
  static const ALIVE = MachineAttributesHeartbeatStatusEnum._(r'ALIVE');
  static const DEAD = MachineAttributesHeartbeatStatusEnum._(r'DEAD');
  static const RESURRECTED = MachineAttributesHeartbeatStatusEnum._(r'RESURRECTED');

  /// List of all possible values in this [enum][MachineAttributesHeartbeatStatusEnum].
  static const values = <MachineAttributesHeartbeatStatusEnum>[
    NOT_STARTED,
    ALIVE,
    DEAD,
    RESURRECTED,
  ];

  static MachineAttributesHeartbeatStatusEnum? fromJson(dynamic value) => MachineAttributesHeartbeatStatusEnumTypeTransformer().decode(value);

  static List<MachineAttributesHeartbeatStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MachineAttributesHeartbeatStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MachineAttributesHeartbeatStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MachineAttributesHeartbeatStatusEnum] to String,
/// and [decode] dynamic data back to [MachineAttributesHeartbeatStatusEnum].
class MachineAttributesHeartbeatStatusEnumTypeTransformer {
  factory MachineAttributesHeartbeatStatusEnumTypeTransformer() => _instance ??= const MachineAttributesHeartbeatStatusEnumTypeTransformer._();

  const MachineAttributesHeartbeatStatusEnumTypeTransformer._();

  String encode(MachineAttributesHeartbeatStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MachineAttributesHeartbeatStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MachineAttributesHeartbeatStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NOT_STARTED': return MachineAttributesHeartbeatStatusEnum.NOT_STARTED;
        case r'ALIVE': return MachineAttributesHeartbeatStatusEnum.ALIVE;
        case r'DEAD': return MachineAttributesHeartbeatStatusEnum.DEAD;
        case r'RESURRECTED': return MachineAttributesHeartbeatStatusEnum.RESURRECTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MachineAttributesHeartbeatStatusEnumTypeTransformer] instance.
  static MachineAttributesHeartbeatStatusEnumTypeTransformer? _instance;
}


