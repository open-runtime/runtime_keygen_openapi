//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SecondFactorsApi {
  SecondFactorsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a second factor
  ///
  /// Adds a new second factor for the user. After adding the second factor, it must be enabled via [an update](https://keygen.sh/docs/api/users/#second-factors-update). To enable the second factor, a valid OTP must be provided. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user the second factor is for.
  ///
  /// * [AddSecondFactorRequest] addSecondFactorRequest:
  Future<Response> addSecondFactorWithHttpInfo(String account, String user, { AddSecondFactorRequest? addSecondFactorRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}/second-factors'
      .replaceAll('{account}', account)
      .replaceAll('{user}', user);

    // ignore: prefer_final_locals
    Object? postBody = addSecondFactorRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/vnd.api+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Add a second factor
  ///
  /// Adds a new second factor for the user. After adding the second factor, it must be enabled via [an update](https://keygen.sh/docs/api/users/#second-factors-update). To enable the second factor, a valid OTP must be provided. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user the second factor is for.
  ///
  /// * [AddSecondFactorRequest] addSecondFactorRequest:
  Future<AddSecondFactorResponse?> addSecondFactor(String account, String user, { AddSecondFactorRequest? addSecondFactorRequest, }) async {
    final response = await addSecondFactorWithHttpInfo(account, user,  addSecondFactorRequest: addSecondFactorRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddSecondFactorResponse',) as AddSecondFactorResponse;
    
    }
    return null;
  }

  /// Delete a second factor
  ///
  /// Permanently deletes a second factor. It cannot be undone.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of a user the second factor belongs to.
  ///
  /// * [String] secondFactor (required):
  ///   The identifier (UUID) of the second factor to be deleted.
  Future<Response> deleteSecondFactorWithHttpInfo(String account, String user, String secondFactor,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}/second-factors/{second-factor}'
      .replaceAll('{account}', account)
      .replaceAll('{user}', user)
      .replaceAll('{second-factor}', secondFactor);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a second factor
  ///
  /// Permanently deletes a second factor. It cannot be undone.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of a user the second factor belongs to.
  ///
  /// * [String] secondFactor (required):
  ///   The identifier (UUID) of the second factor to be deleted.
  Future<void> deleteSecondFactor(String account, String user, String secondFactor,) async {
    final response = await deleteSecondFactorWithHttpInfo(account, user, secondFactor,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List second factors
  ///
  /// Returns a list of second factors. The second factors are returned sorted by creation date, with the most recent second factors appearing first. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user the second factors are for.
  Future<Response> listSecondFactorsWithHttpInfo(String account, String user,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}/second-factors'
      .replaceAll('{account}', account)
      .replaceAll('{user}', user);

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

  /// List second factors
  ///
  /// Returns a list of second factors. The second factors are returned sorted by creation date, with the most recent second factors appearing first. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user the second factors are for.
  Future<ListSecondFactorsResponse?> listSecondFactors(String account, String user,) async {
    final response = await listSecondFactorsWithHttpInfo(account, user,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListSecondFactorsResponse',) as ListSecondFactorsResponse;
    
    }
    return null;
  }

  /// Retrieve a second factor
  ///
  /// Retrieves the details of an existing second factor.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of a user the second factor belongs to.
  ///
  /// * [String] secondFactor (required):
  ///   The identifier (UUID) of the second factor.
  Future<Response> retrieveSecondFactorWithHttpInfo(String account, String user, String secondFactor,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}/second-factors/{second-factor}'
      .replaceAll('{account}', account)
      .replaceAll('{user}', user)
      .replaceAll('{second-factor}', secondFactor);

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

  /// Retrieve a second factor
  ///
  /// Retrieves the details of an existing second factor.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of a user the second factor belongs to.
  ///
  /// * [String] secondFactor (required):
  ///   The identifier (UUID) of the second factor.
  Future<RetrieveSecondFactorResponse?> retrieveSecondFactor(String account, String user, String secondFactor,) async {
    final response = await retrieveSecondFactorWithHttpInfo(account, user, secondFactor,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveSecondFactorResponse',) as RetrieveSecondFactorResponse;
    
    }
    return null;
  }

  /// Update a second factor
  ///
  /// Update an existing second factor for the user. This can be used to enable and disable a second factor as-needed. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of a user the second factor belongs to.
  ///
  /// * [String] secondFactor (required):
  ///   The identifier (UUID) of the second factor to be updated.
  ///
  /// * [UpdateSecondFactorRequest] updateSecondFactorRequest (required):
  Future<Response> updateSecondFactorWithHttpInfo(String account, String user, String secondFactor, UpdateSecondFactorRequest updateSecondFactorRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}/second-factors/{second-factor}'
      .replaceAll('{account}', account)
      .replaceAll('{user}', user)
      .replaceAll('{second-factor}', secondFactor);

    // ignore: prefer_final_locals
    Object? postBody = updateSecondFactorRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/vnd.api+json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a second factor
  ///
  /// Update an existing second factor for the user. This can be used to enable and disable a second factor as-needed. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of a user the second factor belongs to.
  ///
  /// * [String] secondFactor (required):
  ///   The identifier (UUID) of the second factor to be updated.
  ///
  /// * [UpdateSecondFactorRequest] updateSecondFactorRequest (required):
  Future<UpdateSecondFactorResponse?> updateSecondFactor(String account, String user, String secondFactor, UpdateSecondFactorRequest updateSecondFactorRequest,) async {
    final response = await updateSecondFactorWithHttpInfo(account, user, secondFactor, updateSecondFactorRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateSecondFactorResponse',) as UpdateSecondFactorResponse;
    
    }
    return null;
  }
}
