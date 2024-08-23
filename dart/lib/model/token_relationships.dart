//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenRelationships {
  /// Returns a new [TokenRelationships] instance.
  TokenRelationships({
    required this.account,
    required this.bearer,
  });

  TokenRelationshipsAccount account;

  TokenRelationshipsBearer bearer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenRelationships &&
    other.account == account &&
    other.bearer == bearer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account.hashCode) +
    (bearer.hashCode);

  @override
  String toString() => 'TokenRelationships[account=$account, bearer=$bearer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account'] = this.account;
      json[r'bearer'] = this.bearer;
    return json;
  }

  /// Returns a new [TokenRelationships] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenRelationships? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenRelationships[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenRelationships[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenRelationships(
        account: TokenRelationshipsAccount.fromJson(json[r'account'])!,
        bearer: TokenRelationshipsBearer.fromJson(json[r'bearer'])!,
      );
    }
    return null;
  }

  static List<TokenRelationships> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenRelationships>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenRelationships.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenRelationships> mapFromJson(dynamic json) {
    final map = <String, TokenRelationships>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenRelationships.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenRelationships-objects as value to a dart map
  static Map<String, List<TokenRelationships>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenRelationships>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenRelationships.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'bearer',
  };
}

