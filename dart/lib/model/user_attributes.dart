//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserAttributes {
  /// Returns a new [UserAttributes] instance.
  UserAttributes({
    this.fullName,
    this.firstName,
    this.lastName,
    required this.email,
    required this.status,
    required this.role,
    this.metadata = const {},
    required this.created,
    required this.updated,
  });

  /// The full name of the user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  /// The first name of the user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  /// The last name of the user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  /// The unique email of the user.
  String email;

  /// The user's status, for filtering purposes and to ascertain overall status at-a-glance. An active user is a user that was created within the last 90 days, or has a license that has been created, validated, checked out, or checked in within the last 90 days. An inactive user is a user that has none of those traits. One of: `ACTIVE`, `INACTIVE`, or `BANNED`. 
  UserAttributesStatusEnum status;

  /// The role for the user.  ### Options  - **`user`**:   A normal user of one or more of your products. Depending on account settings, they can have permission   to manage their own resources, e.g. licenses and machines. They cannot manage other users' resources. - **`support-agent`**:   An internal administrative user of your Keygen account, with a limited subset of permissions. Support   Agents can read most resource data, but cannot create, update or delete resources. - **`sales-agent`**:   An internal administrative user of your Keygen account, with a limited subset of permissions. Sales   Agents can read most resource data, but can only create, update and delete specific resources. - **`developer`**:   An internal administrative user of your Keygen account, with permission to manage all resources, but   they cannot manage account billing. - **`read-only`**:   An internal administrative user of your Keygen account, with permission to read all resources, except   for account billing. - **`admin`**:   An internal administrative user of your Keygen account, with permission to manage the entire account. 
  UserAttributesRoleEnum role;

  /// Object containing user metadata.
  Map<String, Object> metadata;

  /// When the user was created.
  DateTime created;

  /// When the user was last updated.
  DateTime updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserAttributes &&
    other.fullName == fullName &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.email == email &&
    other.status == status &&
    other.role == role &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.created == created &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fullName == null ? 0 : fullName!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (email.hashCode) +
    (status.hashCode) +
    (role.hashCode) +
    (metadata.hashCode) +
    (created.hashCode) +
    (updated.hashCode);

  @override
  String toString() => 'UserAttributes[fullName=$fullName, firstName=$firstName, lastName=$lastName, email=$email, status=$status, role=$role, metadata=$metadata, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fullName != null) {
      json[r'fullName'] = this.fullName;
    } else {
      json[r'fullName'] = null;
    }
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
      json[r'email'] = this.email;
      json[r'status'] = this.status;
      json[r'role'] = this.role;
      json[r'metadata'] = this.metadata;
      json[r'created'] = this.created.toUtc().toIso8601String();
      json[r'updated'] = this.updated.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [UserAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserAttributes(
        fullName: mapValueOfType<String>(json, r'fullName'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        email: mapValueOfType<String>(json, r'email')!,
        status: UserAttributesStatusEnum.fromJson(json[r'status'])!,
        role: UserAttributesRoleEnum.fromJson(json[r'role'])!,
        metadata: mapCastOfType<String, Object>(json, r'metadata')!,
        created: mapDateTime(json, r'created', r'')!,
        updated: mapDateTime(json, r'updated', r'')!,
      );
    }
    return null;
  }

  static List<UserAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserAttributes> mapFromJson(dynamic json) {
    final map = <String, UserAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserAttributes-objects as value to a dart map
  static Map<String, List<UserAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'status',
    'role',
    'metadata',
    'created',
    'updated',
  };
}

/// The user's status, for filtering purposes and to ascertain overall status at-a-glance. An active user is a user that was created within the last 90 days, or has a license that has been created, validated, checked out, or checked in within the last 90 days. An inactive user is a user that has none of those traits. One of: `ACTIVE`, `INACTIVE`, or `BANNED`. 
class UserAttributesStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const UserAttributesStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = UserAttributesStatusEnum._(r'ACTIVE');
  static const INACTIVE = UserAttributesStatusEnum._(r'INACTIVE');
  static const BANNED = UserAttributesStatusEnum._(r'BANNED');

  /// List of all possible values in this [enum][UserAttributesStatusEnum].
  static const values = <UserAttributesStatusEnum>[
    ACTIVE,
    INACTIVE,
    BANNED,
  ];

  static UserAttributesStatusEnum? fromJson(dynamic value) => UserAttributesStatusEnumTypeTransformer().decode(value);

  static List<UserAttributesStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAttributesStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAttributesStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserAttributesStatusEnum] to String,
/// and [decode] dynamic data back to [UserAttributesStatusEnum].
class UserAttributesStatusEnumTypeTransformer {
  factory UserAttributesStatusEnumTypeTransformer() => _instance ??= const UserAttributesStatusEnumTypeTransformer._();

  const UserAttributesStatusEnumTypeTransformer._();

  String encode(UserAttributesStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserAttributesStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserAttributesStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACTIVE': return UserAttributesStatusEnum.ACTIVE;
        case r'INACTIVE': return UserAttributesStatusEnum.INACTIVE;
        case r'BANNED': return UserAttributesStatusEnum.BANNED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserAttributesStatusEnumTypeTransformer] instance.
  static UserAttributesStatusEnumTypeTransformer? _instance;
}


/// The role for the user.  ### Options  - **`user`**:   A normal user of one or more of your products. Depending on account settings, they can have permission   to manage their own resources, e.g. licenses and machines. They cannot manage other users' resources. - **`support-agent`**:   An internal administrative user of your Keygen account, with a limited subset of permissions. Support   Agents can read most resource data, but cannot create, update or delete resources. - **`sales-agent`**:   An internal administrative user of your Keygen account, with a limited subset of permissions. Sales   Agents can read most resource data, but can only create, update and delete specific resources. - **`developer`**:   An internal administrative user of your Keygen account, with permission to manage all resources, but   they cannot manage account billing. - **`read-only`**:   An internal administrative user of your Keygen account, with permission to read all resources, except   for account billing. - **`admin`**:   An internal administrative user of your Keygen account, with permission to manage the entire account. 
class UserAttributesRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const UserAttributesRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const user = UserAttributesRoleEnum._(r'user');
  static const supportAgent = UserAttributesRoleEnum._(r'support-agent');
  static const salesAgent = UserAttributesRoleEnum._(r'sales-agent');
  static const developer = UserAttributesRoleEnum._(r'developer');
  static const readOnly = UserAttributesRoleEnum._(r'read-only');
  static const admin = UserAttributesRoleEnum._(r'admin');

  /// List of all possible values in this [enum][UserAttributesRoleEnum].
  static const values = <UserAttributesRoleEnum>[
    user,
    supportAgent,
    salesAgent,
    developer,
    readOnly,
    admin,
  ];

  static UserAttributesRoleEnum? fromJson(dynamic value) => UserAttributesRoleEnumTypeTransformer().decode(value);

  static List<UserAttributesRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAttributesRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAttributesRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserAttributesRoleEnum] to String,
/// and [decode] dynamic data back to [UserAttributesRoleEnum].
class UserAttributesRoleEnumTypeTransformer {
  factory UserAttributesRoleEnumTypeTransformer() => _instance ??= const UserAttributesRoleEnumTypeTransformer._();

  const UserAttributesRoleEnumTypeTransformer._();

  String encode(UserAttributesRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserAttributesRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserAttributesRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'user': return UserAttributesRoleEnum.user;
        case r'support-agent': return UserAttributesRoleEnum.supportAgent;
        case r'sales-agent': return UserAttributesRoleEnum.salesAgent;
        case r'developer': return UserAttributesRoleEnum.developer;
        case r'read-only': return UserAttributesRoleEnum.readOnly;
        case r'admin': return UserAttributesRoleEnum.admin;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserAttributesRoleEnumTypeTransformer] instance.
  static UserAttributesRoleEnumTypeTransformer? _instance;
}


