//
// MANUALLY ADDED AFTER OPENAPI-GENERATOR RAN
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProfilesApi {
  ProfilesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Who Am I?
  ///
  /// Retrieves the details of the currently authenticated bearer i.e. the resource who the current API token belongs to. Utilize this to determine who the current user is, what token they used, to retrieve information on who made the API request. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  Future<Response> retrieveProfileWithHttpInfo(String account,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/me'
      .replaceAll('{account}', account);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Who Am I?
  ///
  /// Retrieves the details of the currently authenticated bearer i.e. the resource who the current API token belongs to. Utilize this to determine who the current user is, what token they used, to retrieve information on who made the API request. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  Future<RetrieveProfileResponse?> retrieveProfile(String account,) async {
    final response = await retrieveProfileWithHttpInfo(account,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveProfileResponse',) as RetrieveProfileResponse;
    
    }
    return null;
  }
}
