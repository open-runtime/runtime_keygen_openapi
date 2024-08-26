//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProcessAttributes {
  /// Returns a new [ProcessAttributes] instance.
  ProcessAttributes({
    required this.pid,
    required this.status,
    required this.lastHeartbeat,
    required this.nextHeartbeat,
    required this.interval,
    this.metadata = const {},
    required this.created,
    required this.updated,
  });

  /// The pid of the process. This can be an arbitrary string, but must be unique within the scope of the process it belongs to. 
  int pid;

  /// The status of the process's heartbeat. One of: `ALIVE`, `DEAD`, or `RESURRECTED`. 
  ProcessAttributesStatusEnum status;

  /// When the process last sent a heartbeat ping. The initial value of this attribute will be equal to the process's created timestamp. 
  DateTime? lastHeartbeat;

  /// The time at which the process is required to send its next heartbeat ping by. This attribute is calculated using the license policy's heartbeat duration. 
  DateTime? nextHeartbeat;

  /// The heartbeat interval for the process, in seconds. The process must send heartbeat pings within this timeframe to remain alive. This is inherited from the license's policy. 
  int? interval;

  /// Object containing process metadata.
  Map<String, Object> metadata;

  /// When the process was created.
  DateTime created;

  /// When the process was last updated.
  DateTime updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProcessAttributes &&
    other.pid == pid &&
    other.status == status &&
    other.lastHeartbeat == lastHeartbeat &&
    other.nextHeartbeat == nextHeartbeat &&
    other.interval == interval &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.created == created &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pid.hashCode) +
    (status.hashCode) +
    (lastHeartbeat == null ? 0 : lastHeartbeat!.hashCode) +
    (nextHeartbeat == null ? 0 : nextHeartbeat!.hashCode) +
    (interval == null ? 0 : interval!.hashCode) +
    (metadata.hashCode) +
    (created.hashCode) +
    (updated.hashCode);

  @override
  String toString() => 'ProcessAttributes[pid=$pid, status=$status, lastHeartbeat=$lastHeartbeat, nextHeartbeat=$nextHeartbeat, interval=$interval, metadata=$metadata, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pid'] = this.pid;
      json[r'status'] = this.status;
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
    if (this.interval != null) {
      json[r'interval'] = this.interval;
    } else {
      json[r'interval'] = null;
    }
      json[r'metadata'] = this.metadata;
      json[r'created'] = this.created.toUtc().toIso8601String();
      json[r'updated'] = this.updated.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ProcessAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProcessAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProcessAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProcessAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProcessAttributes(
        pid: mapValueOfType<int>(json, r'pid')!,
        status: ProcessAttributesStatusEnum.fromJson(json[r'status'])!,
        lastHeartbeat: mapDateTime(json, r'lastHeartbeat', r''),
        nextHeartbeat: mapDateTime(json, r'nextHeartbeat', r''),
        interval: mapValueOfType<int>(json, r'interval'),
        metadata: mapCastOfType<String, Object>(json, r'metadata')!,
        created: mapDateTime(json, r'created', r'')!,
        updated: mapDateTime(json, r'updated', r'')!,
      );
    }
    return null;
  }

  static List<ProcessAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProcessAttributes> mapFromJson(dynamic json) {
    final map = <String, ProcessAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProcessAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProcessAttributes-objects as value to a dart map
  static Map<String, List<ProcessAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProcessAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProcessAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'pid',
    'status',
    'lastHeartbeat',
    'nextHeartbeat',
    'interval',
    'metadata',
    'created',
    'updated',
  };
}

/// The status of the process's heartbeat. One of: `ALIVE`, `DEAD`, or `RESURRECTED`. 
class ProcessAttributesStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ProcessAttributesStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALIVE = ProcessAttributesStatusEnum._(r'ALIVE');
  static const DEAD = ProcessAttributesStatusEnum._(r'DEAD');
  static const RESURRECTED = ProcessAttributesStatusEnum._(r'RESURRECTED');

  /// List of all possible values in this [enum][ProcessAttributesStatusEnum].
  static const values = <ProcessAttributesStatusEnum>[
    ALIVE,
    DEAD,
    RESURRECTED,
  ];

  static ProcessAttributesStatusEnum? fromJson(dynamic value) => ProcessAttributesStatusEnumTypeTransformer().decode(value);

  static List<ProcessAttributesStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessAttributesStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessAttributesStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProcessAttributesStatusEnum] to String,
/// and [decode] dynamic data back to [ProcessAttributesStatusEnum].
class ProcessAttributesStatusEnumTypeTransformer {
  factory ProcessAttributesStatusEnumTypeTransformer() => _instance ??= const ProcessAttributesStatusEnumTypeTransformer._();

  const ProcessAttributesStatusEnumTypeTransformer._();

  String encode(ProcessAttributesStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProcessAttributesStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProcessAttributesStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALIVE': return ProcessAttributesStatusEnum.ALIVE;
        case r'DEAD': return ProcessAttributesStatusEnum.DEAD;
        case r'RESURRECTED': return ProcessAttributesStatusEnum.RESURRECTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProcessAttributesStatusEnumTypeTransformer] instance.
  static ProcessAttributesStatusEnumTypeTransformer? _instance;
}


