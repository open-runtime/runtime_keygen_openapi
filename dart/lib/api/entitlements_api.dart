//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EntitlementsApi {
  EntitlementsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an entitlement
  ///
  /// Creates a new entitlement resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [CreateEntitlementRequest] createEntitlementRequest (required):
  Future<Response> createEntitlementWithHttpInfo(String account, CreateEntitlementRequest createEntitlementRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/entitlements'
      .replaceAll('{account}', account);

    // ignore: prefer_final_locals
    Object? postBody = createEntitlementRequest;

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

  /// Create an entitlement
  ///
  /// Creates a new entitlement resource.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [CreateEntitlementRequest] createEntitlementRequest (required):
  Future<CreateEntitlementResponse?> createEntitlement(String account, CreateEntitlementRequest createEntitlementRequest,) async {
    final response = await createEntitlementWithHttpInfo(account, createEntitlementRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateEntitlementResponse',) as CreateEntitlementResponse;
    
    }
    return null;
  }

  /// Delete an entitlement
  ///
  /// Permanently deletes an entitlement. The entitlement will immediately be removed from all licenses and policies. It cannot be undone. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] entitlement (required):
  ///   The identifier (UUID) of the entitlement to be deleted.
  Future<Response> deleteEntitlementWithHttpInfo(String account, String entitlement,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/entitlements/{entitlement}'
      .replaceAll('{account}', account)
      .replaceAll('{entitlement}', entitlement);

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

  /// Delete an entitlement
  ///
  /// Permanently deletes an entitlement. The entitlement will immediately be removed from all licenses and policies. It cannot be undone. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] entitlement (required):
  ///   The identifier (UUID) of the entitlement to be deleted.
  Future<void> deleteEntitlement(String account, String entitlement,) async {
    final response = await deleteEntitlementWithHttpInfo(account, entitlement,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all entitlements
  ///
  /// Returns a list of entitlements. The entitlements are returned sorted by creation date, with the most recent entitlements appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a license, only entitlements attached to that specific license will be listed. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [Object] page:
  ///   Object containing page `size` and page `number`.
  ///
  /// * [int] limit:
  Future<Response> listEntitlementsWithHttpInfo(String account, { Object? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/entitlements'
      .replaceAll('{account}', account);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

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

  /// List all entitlements
  ///
  /// Returns a list of entitlements. The entitlements are returned sorted by creation date, with the most recent entitlements appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a license, only entitlements attached to that specific license will be listed. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [Object] page:
  ///   Object containing page `size` and page `number`.
  ///
  /// * [int] limit:
  Future<ListEntitlementsResponse?> listEntitlements(String account, { Object? page, int? limit, }) async {
    final response = await listEntitlementsWithHttpInfo(account,  page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListEntitlementsResponse',) as ListEntitlementsResponse;
    
    }
    return null;
  }

  /// Retrieve an entitlement
  ///
  /// Retrieves the details of an existing entitlement.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] entitlement (required):
  ///   The identifier (UUID) of the entitlement to be retrieved.
  Future<Response> retrieveEntitlementWithHttpInfo(String account, String entitlement,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/entitlements/{entitlement}'
      .replaceAll('{account}', account)
      .replaceAll('{entitlement}', entitlement);

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

  /// Retrieve an entitlement
  ///
  /// Retrieves the details of an existing entitlement.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] entitlement (required):
  ///   The identifier (UUID) of the entitlement to be retrieved.
  Future<RetrieveEntitlementResponse?> retrieveEntitlement(String account, String entitlement,) async {
    final response = await retrieveEntitlementWithHttpInfo(account, entitlement,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveEntitlementResponse',) as RetrieveEntitlementResponse;
    
    }
    return null;
  }

  /// Update an entitlement
  ///
  /// Updates the specified entitlement resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] entitlement (required):
  ///   The identifier (UUID) of the entitlement to be updated.
  ///
  /// * [UpdateEntitlementRequest] updateEntitlementRequest:
  Future<Response> updateEntitlementWithHttpInfo(String account, String entitlement, { UpdateEntitlementRequest? updateEntitlementRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/entitlements/{entitlement}'
      .replaceAll('{account}', account)
      .replaceAll('{entitlement}', entitlement);

    // ignore: prefer_final_locals
    Object? postBody = updateEntitlementRequest;

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

  /// Update an entitlement
  ///
  /// Updates the specified entitlement resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] entitlement (required):
  ///   The identifier (UUID) of the entitlement to be updated.
  ///
  /// * [UpdateEntitlementRequest] updateEntitlementRequest:
  Future<UpdateEntitlementResponse?> updateEntitlement(String account, String entitlement, { UpdateEntitlementRequest? updateEntitlementRequest, }) async {
    final response = await updateEntitlementWithHttpInfo(account, entitlement,  updateEntitlementRequest: updateEntitlementRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateEntitlementResponse',) as UpdateEntitlementResponse;
    
    }
    return null;
  }
}
