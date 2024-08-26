//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PoliciesApi {
  PoliciesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Attach policy entitlements
  ///
  /// Attach entitlements to a policy. This will immediately be taken into effect for all future license validations. Any license that implements the given policy will automatically possess all the policy's entitlements.  **Below are the limitations to attaching an entitlement:**  - You cannot attach an already attached entitlement. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to be updated.
  ///
  /// * [AttachPolicyEntitlementsRequest] attachPolicyEntitlementsRequest (required):
  Future<Response> attachPolicyEntitlementsWithHttpInfo(String account, String policy, AttachPolicyEntitlementsRequest attachPolicyEntitlementsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/policies/{policy}/entitlements'
      .replaceAll('{account}', account)
      .replaceAll('{policy}', policy);

    // ignore: prefer_final_locals
    Object? postBody = attachPolicyEntitlementsRequest;

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

  /// Attach policy entitlements
  ///
  /// Attach entitlements to a policy. This will immediately be taken into effect for all future license validations. Any license that implements the given policy will automatically possess all the policy's entitlements.  **Below are the limitations to attaching an entitlement:**  - You cannot attach an already attached entitlement. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to be updated.
  ///
  /// * [AttachPolicyEntitlementsRequest] attachPolicyEntitlementsRequest (required):
  Future<AttachPolicyEntitlementsResponse?> attachPolicyEntitlements(String account, String policy, AttachPolicyEntitlementsRequest attachPolicyEntitlementsRequest,) async {
    final response = await attachPolicyEntitlementsWithHttpInfo(account, policy, attachPolicyEntitlementsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttachPolicyEntitlementsResponse',) as AttachPolicyEntitlementsResponse;
    
    }
    return null;
  }

  /// Create a policy
  ///
  /// Creates a new policy resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [CreatePolicyRequest] createPolicyRequest (required):
  Future<Response> createPolicyWithHttpInfo(String account, CreatePolicyRequest createPolicyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/policies'
      .replaceAll('{account}', account);

    // ignore: prefer_final_locals
    Object? postBody = createPolicyRequest;

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

  /// Create a policy
  ///
  /// Creates a new policy resource.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [CreatePolicyRequest] createPolicyRequest (required):
  Future<CreatePolicyResponse?> createPolicy(String account, CreatePolicyRequest createPolicyRequest,) async {
    final response = await createPolicyWithHttpInfo(account, createPolicyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreatePolicyResponse',) as CreatePolicyResponse;
    
    }
    return null;
  }

  /// Delete a policy
  ///
  /// Permanently deletes a policy. It cannot be undone. This action also immediately deletes any licenses that the policy is associated with. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to be deleted.
  Future<Response> deletePolicyWithHttpInfo(String account, String policy,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/policies/{policy}'
      .replaceAll('{account}', account)
      .replaceAll('{policy}', policy);

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

  /// Delete a policy
  ///
  /// Permanently deletes a policy. It cannot be undone. This action also immediately deletes any licenses that the policy is associated with. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to be deleted.
  Future<void> deletePolicy(String account, String policy,) async {
    final response = await deletePolicyWithHttpInfo(account, policy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Detach policy entitlements
  ///
  /// Detach entitlements from a policy. This will immediately be taken into effect for all future license validations. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to be updated.
  ///
  /// * [DetachPolicyEntitlementsRequest] detachPolicyEntitlementsRequest (required):
  Future<Response> detachPolicyEntitlementsWithHttpInfo(String account, String policy, DetachPolicyEntitlementsRequest detachPolicyEntitlementsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/policies/{policy}/entitlements'
      .replaceAll('{account}', account)
      .replaceAll('{policy}', policy);

    // ignore: prefer_final_locals
    Object? postBody = detachPolicyEntitlementsRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/vnd.api+json'];


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

  /// Detach policy entitlements
  ///
  /// Detach entitlements from a policy. This will immediately be taken into effect for all future license validations. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to be updated.
  ///
  /// * [DetachPolicyEntitlementsRequest] detachPolicyEntitlementsRequest (required):
  Future<void> detachPolicyEntitlements(String account, String policy, DetachPolicyEntitlementsRequest detachPolicyEntitlementsRequest,) async {
    final response = await detachPolicyEntitlementsWithHttpInfo(account, policy, detachPolicyEntitlementsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all policies
  ///
  /// Returns a list of policies. The policies are returned sorted by creation date, with the most recent policies appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a product, only policies of that specific product will be listed. 
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
  ///
  /// * [String] product:
  ///   The identifier (UUID) of the product to filter by.
  Future<Response> listPoliciesWithHttpInfo(String account, { Object? page, int? limit, String? product, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/policies'
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
    if (product != null) {
      queryParams.addAll(_queryParams('', 'product', product));
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

  /// List all policies
  ///
  /// Returns a list of policies. The policies are returned sorted by creation date, with the most recent policies appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a product, only policies of that specific product will be listed. 
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
  ///
  /// * [String] product:
  ///   The identifier (UUID) of the product to filter by.
  Future<ListPoliciesResponse?> listPolicies(String account, { Object? page, int? limit, String? product, }) async {
    final response = await listPoliciesWithHttpInfo(account,  page: page, limit: limit, product: product, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListPoliciesResponse',) as ListPoliciesResponse;
    
    }
    return null;
  }

  /// List policy entitlements
  ///
  /// Returns a list of entitlements attached to the policy. The entitlements are returned sorted by creation date, with the most recent entitlements appearing first. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to list entitlements for.
  ///
  /// * [Object] page:
  ///   Object containing page `size` and page `number`.
  ///
  /// * [int] limit:
  Future<Response> listPolicyEntitlementsWithHttpInfo(String account, String policy, { Object? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/policies/{policy}/entitlements'
      .replaceAll('{account}', account)
      .replaceAll('{policy}', policy);

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

  /// List policy entitlements
  ///
  /// Returns a list of entitlements attached to the policy. The entitlements are returned sorted by creation date, with the most recent entitlements appearing first. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to list entitlements for.
  ///
  /// * [Object] page:
  ///   Object containing page `size` and page `number`.
  ///
  /// * [int] limit:
  Future<ListPolicyEntitlementsResponse?> listPolicyEntitlements(String account, String policy, { Object? page, int? limit, }) async {
    final response = await listPolicyEntitlementsWithHttpInfo(account, policy,  page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListPolicyEntitlementsResponse',) as ListPolicyEntitlementsResponse;
    
    }
    return null;
  }

  /// Pop key from pool
  ///
  /// Pop off (delete) a key from the policy's pool of pre-determined keys. The returned key is only available directly after a pop, similar to authentication tokens. This cannot be undone. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to be retrieved.
  Future<Response> popKeyFromPolicyPoolWithHttpInfo(String account, String policy,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/policies/{policy}/pool'
      .replaceAll('{account}', account)
      .replaceAll('{policy}', policy);

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

  /// Pop key from pool
  ///
  /// Pop off (delete) a key from the policy's pool of pre-determined keys. The returned key is only available directly after a pop, similar to authentication tokens. This cannot be undone. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to be retrieved.
  Future<void> popKeyFromPolicyPool(String account, String policy,) async {
    final response = await popKeyFromPolicyPoolWithHttpInfo(account, policy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve a policy
  ///
  /// Retrieves the details of an existing policy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to be retrieved.
  Future<Response> retrievePolicyWithHttpInfo(String account, String policy,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/policies/{policy}'
      .replaceAll('{account}', account)
      .replaceAll('{policy}', policy);

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

  /// Retrieve a policy
  ///
  /// Retrieves the details of an existing policy.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to be retrieved.
  Future<RetrievePolicyResponse?> retrievePolicy(String account, String policy,) async {
    final response = await retrievePolicyWithHttpInfo(account, policy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrievePolicyResponse',) as RetrievePolicyResponse;
    
    }
    return null;
  }

  /// Update a policy
  ///
  /// Updates the specified policy resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. For example, if the `maxMachines` property is not provided, then the policy's `maxMachines` value will be left unchanged. However, if the `maxMachines` property is provided with a value of `null`, then the policy's `maxMachines` value will be updated to `null`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to be updated.
  ///
  /// * [UpdatePolicyRequest] updatePolicyRequest:
  Future<Response> updatePolicyWithHttpInfo(String account, String policy, { UpdatePolicyRequest? updatePolicyRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/policies/{policy}'
      .replaceAll('{account}', account)
      .replaceAll('{policy}', policy);

    // ignore: prefer_final_locals
    Object? postBody = updatePolicyRequest;

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

  /// Update a policy
  ///
  /// Updates the specified policy resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. For example, if the `maxMachines` property is not provided, then the policy's `maxMachines` value will be left unchanged. However, if the `maxMachines` property is provided with a value of `null`, then the policy's `maxMachines` value will be updated to `null`. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] policy (required):
  ///   The identifier (UUID) of the policy to be updated.
  ///
  /// * [UpdatePolicyRequest] updatePolicyRequest:
  Future<UpdatePolicyResponse?> updatePolicy(String account, String policy, { UpdatePolicyRequest? updatePolicyRequest, }) async {
    final response = await updatePolicyWithHttpInfo(account, policy,  updatePolicyRequest: updatePolicyRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdatePolicyResponse',) as UpdatePolicyResponse;
    
    }
    return null;
  }
}
