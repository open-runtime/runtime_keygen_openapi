//
// MANUALLY ADDED AFTER OPENAPI-GENERATOR RAN
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveProfileResponse {
  /// Returns a new [RetrieveProfileResponse] instance.
  RetrieveProfileResponse({
    required this.data,
  });

  dynamic data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveProfileResponse &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode);

  @override
  String toString() => 'RetrieveProfileResponse[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [RetrieveProfileResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveProfileResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveProfileResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveProfileResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      //
      // Why not use switch?
      //
      // trying to do:
      //
      // switch (type) {
      //   case UserTypeEnum.users.toString():
      //     break;
      // }
      //
      // gives "Methods can't be invoked in constant expressions." error
      //

      String type = json[r'data'][r'type'];

      if (type == UserTypeEnum.users.toString()) {

        return RetrieveProfileResponse(
          data: User.fromJson(json[r'data'])!,
        );

      } else if (type == LicenseTypeEnum.licenses.toString()) {

        return RetrieveProfileResponse(
          data: License.fromJson(json[r'data'])!,
        );

      } else if (type == ProductTypeEnum.products.toString()) {

        return RetrieveProfileResponse(
          data: Product.fromJson(json[r'data'])!,
        );

      }
    }
    return null;
  }

  static List<RetrieveProfileResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveProfileResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveProfileResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveProfileResponse> mapFromJson(dynamic json) {
    final map = <String, RetrieveProfileResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveProfileResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveProfileResponse-objects as value to a dart map
  static Map<String, List<RetrieveProfileResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveProfileResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveProfileResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
  };
}

