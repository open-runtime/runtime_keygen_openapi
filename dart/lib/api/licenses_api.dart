//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class LicensesApi {
  LicensesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Attach license entitlements
  ///
  /// Attach entitlements to a license. This will immediately be taken into effect for all future validations.  **Below are the limitations to attaching an entitlement:**  - You cannot attach an entitlement that is already attached through the policy. - You cannot attach an already attached entitlement. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license to be updated.
  ///
  /// * [AttachLicenseEntitlementsRequest] attachLicenseEntitlementsRequest (required):
  Future<Response> attachLicenseEntitlementsWithHttpInfo(String account, String license, AttachLicenseEntitlementsRequest attachLicenseEntitlementsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/entitlements'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody = attachLicenseEntitlementsRequest;

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

  /// Attach license entitlements
  ///
  /// Attach entitlements to a license. This will immediately be taken into effect for all future validations.  **Below are the limitations to attaching an entitlement:**  - You cannot attach an entitlement that is already attached through the policy. - You cannot attach an already attached entitlement. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license to be updated.
  ///
  /// * [AttachLicenseEntitlementsRequest] attachLicenseEntitlementsRequest (required):
  Future<AttachLicenseEntitlementsResponse?> attachLicenseEntitlements(String account, String license, AttachLicenseEntitlementsRequest attachLicenseEntitlementsRequest,) async {
    final response = await attachLicenseEntitlementsWithHttpInfo(account, license, attachLicenseEntitlementsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttachLicenseEntitlementsResponse',) as AttachLicenseEntitlementsResponse;
    
    }
    return null;
  }

  /// Change group
  ///
  /// Change a license's group relationship. This will immediately transfer the license resource to the new group. Changing the license's group will not retroactively change the group of its user or of its machines. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license to be updated.
  ///
  /// * [ChangeLicenseGroupRequest] changeLicenseGroupRequest (required):
  Future<Response> changeLicenseGroupWithHttpInfo(String account, String license, ChangeLicenseGroupRequest changeLicenseGroupRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/group'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody = changeLicenseGroupRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/vnd.api+json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Change group
  ///
  /// Change a license's group relationship. This will immediately transfer the license resource to the new group. Changing the license's group will not retroactively change the group of its user or of its machines. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license to be updated.
  ///
  /// * [ChangeLicenseGroupRequest] changeLicenseGroupRequest (required):
  Future<ChangeLicenseGroupResponse?> changeLicenseGroup(String account, String license, ChangeLicenseGroupRequest changeLicenseGroupRequest,) async {
    final response = await changeLicenseGroupWithHttpInfo(account, license, changeLicenseGroupRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChangeLicenseGroupResponse',) as ChangeLicenseGroupResponse;
    
    }
    return null;
  }

  /// Change policy
  ///
  /// Change a license's policy relationship. This will immediately be taken into effect for all future validations. The license's expiry may be changed, according to the new policy's transfer strategy.  **Below are the limitations to changing a license's policy:**  - You cannot change from an encrypted policy to an unencrypted policy (or vice-versa). - You cannot change from a pooled policy to an unpooled policy (or vice-versa). - You cannot change to a policy that has a less strict fingerprint strategy. - You cannot change to a policy that has a different cryptographic scheme. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license to be updated.
  ///
  /// * [ChangeLicensePolicyRequest] changeLicensePolicyRequest (required):
  Future<Response> changeLicensePolicyWithHttpInfo(String account, String license, ChangeLicensePolicyRequest changeLicensePolicyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/policy'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody = changeLicensePolicyRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/vnd.api+json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Change policy
  ///
  /// Change a license's policy relationship. This will immediately be taken into effect for all future validations. The license's expiry may be changed, according to the new policy's transfer strategy.  **Below are the limitations to changing a license's policy:**  - You cannot change from an encrypted policy to an unencrypted policy (or vice-versa). - You cannot change from a pooled policy to an unpooled policy (or vice-versa). - You cannot change to a policy that has a less strict fingerprint strategy. - You cannot change to a policy that has a different cryptographic scheme. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license to be updated.
  ///
  /// * [ChangeLicensePolicyRequest] changeLicensePolicyRequest (required):
  Future<ChangeLicensePolicyResponse?> changeLicensePolicy(String account, String license, ChangeLicensePolicyRequest changeLicensePolicyRequest,) async {
    final response = await changeLicensePolicyWithHttpInfo(account, license, changeLicensePolicyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChangeLicensePolicyResponse',) as ChangeLicensePolicyResponse;
    
    }
    return null;
  }

  /// Change user
  ///
  /// Change a license's user relationship. This will immediately transfer the license resource to the new user. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license to be updated.
  ///
  /// * [ChangeLicenseUserRequest] changeLicenseUserRequest (required):
  Future<Response> changeLicenseUserWithHttpInfo(String account, String license, ChangeLicenseUserRequest changeLicenseUserRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/user'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody = changeLicenseUserRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/vnd.api+json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Change user
  ///
  /// Change a license's user relationship. This will immediately transfer the license resource to the new user. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license to be updated.
  ///
  /// * [ChangeLicenseUserRequest] changeLicenseUserRequest (required):
  Future<ChangeLicenseUserResponse?> changeLicenseUser(String account, String license, ChangeLicenseUserRequest changeLicenseUserRequest,) async {
    final response = await changeLicenseUserWithHttpInfo(account, license, changeLicenseUserRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChangeLicenseUserResponse',) as ChangeLicenseUserResponse;
    
    }
    return null;
  }

  /// Check-in a license
  ///
  /// Action to check-in a license. Sets the license's `lastCheckIn` to the current time, and the license's `nextCheckIn` according to the policy's check-in interval. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to check-in.
  Future<Response> checkInLicenseWithHttpInfo(String account, String license,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/actions/check-in'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Check-in a license
  ///
  /// Action to check-in a license. Sets the license's `lastCheckIn` to the current time, and the license's `nextCheckIn` according to the policy's check-in interval. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to check-in.
  Future<CheckInLicenseResponse?> checkInLicense(String account, String license,) async {
    final response = await checkInLicenseWithHttpInfo(account, license,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckInLicenseResponse',) as CheckInLicenseResponse;
    
    }
    return null;
  }

  /// Check-out license
  ///
  /// Action to check-out a license. This will generate a snapshot of the license at time of checkout, encoded into a license file certificate that can be decoded and used for licensing offline and air-gapped environments. The algorithm will depend on the policy's `scheme`.  License files can be distributed using email or USB drives to air-gapped devices.  For instructions on verifying a license file, please see [license file verification](https://keygen.sh/docs/api/cryptography/#cryptographic-lic). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to check-out.
  ///
  /// * [int] ttl:
  ///   The time-to-live (TTL) of the checked out license file, in seconds.
  ///
  /// * [List<String>] include:
  ///   Include relationship data in the license file.
  Future<Response> checkOutLicenseWithHttpInfo(String account, String license, { int? ttl, List<String>? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/actions/check-out'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ttl != null) {
      queryParams.addAll(_queryParams('', 'ttl', ttl));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('multi', 'include', include));
    }

    const contentTypes = <String>[];


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

  /// Check-out license
  ///
  /// Action to check-out a license. This will generate a snapshot of the license at time of checkout, encoded into a license file certificate that can be decoded and used for licensing offline and air-gapped environments. The algorithm will depend on the policy's `scheme`.  License files can be distributed using email or USB drives to air-gapped devices.  For instructions on verifying a license file, please see [license file verification](https://keygen.sh/docs/api/cryptography/#cryptographic-lic). 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to check-out.
  ///
  /// * [int] ttl:
  ///   The time-to-live (TTL) of the checked out license file, in seconds.
  ///
  /// * [List<String>] include:
  ///   Include relationship data in the license file.
  Future<CheckOutLicenseResponse?> checkOutLicense(String account, String license, { int? ttl, List<String>? include, }) async {
    final response = await checkOutLicenseWithHttpInfo(account, license,  ttl: ttl, include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckOutLicenseResponse',) as CheckOutLicenseResponse;
    
    }
    return null;
  }

  /// Create a license
  ///
  /// Creates a new license resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [CreateLicenseRequest] createLicenseRequest (required):
  Future<Response> createLicenseWithHttpInfo(String account, CreateLicenseRequest createLicenseRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses'
      .replaceAll('{account}', account);

    // ignore: prefer_final_locals
    Object? postBody = createLicenseRequest;

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

  /// Create a license
  ///
  /// Creates a new license resource.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [CreateLicenseRequest] createLicenseRequest (required):
  Future<CreateLicenseResponse?> createLicense(String account, CreateLicenseRequest createLicenseRequest,) async {
    final response = await createLicenseWithHttpInfo(account, createLicenseRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateLicenseResponse',) as CreateLicenseResponse;
    
    }
    return null;
  }

  /// Generate a license token
  ///
  /// Create a license token for a license. A license token has permission to activate and deactivate machines for the given license.  An alternative to Token Authentication is [License Authentication](https://keygen.sh/docs/api/authentication/#license-authentication). Typically, we recommend using License Authentication where possible, as it very much simplifies an integration. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license the token is for.
  ///
  /// * [CreateLicenseTokenRequest] createLicenseTokenRequest:
  Future<Response> createLicenseTokenWithHttpInfo(String account, String license, { CreateLicenseTokenRequest? createLicenseTokenRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/tokens'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody = createLicenseTokenRequest;

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

  /// Generate a license token
  ///
  /// Create a license token for a license. A license token has permission to activate and deactivate machines for the given license.  An alternative to Token Authentication is [License Authentication](https://keygen.sh/docs/api/authentication/#license-authentication). Typically, we recommend using License Authentication where possible, as it very much simplifies an integration. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license the token is for.
  ///
  /// * [CreateLicenseTokenRequest] createLicenseTokenRequest:
  Future<CreateLicenseTokenResponse?> createLicenseToken(String account, String license, { CreateLicenseTokenRequest? createLicenseTokenRequest, }) async {
    final response = await createLicenseTokenWithHttpInfo(account, license,  createLicenseTokenRequest: createLicenseTokenRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateLicenseTokenResponse',) as CreateLicenseTokenResponse;
    
    }
    return null;
  }

  /// Decrement license usage
  ///
  /// Action to decrement a license's `uses` attribute in accordance with its policy's `maxUses` attribute.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to decrement usage for.
  ///
  /// * [DecrementLicenseUsageRequest] decrementLicenseUsageRequest:
  Future<Response> decrementLicenseUsageWithHttpInfo(String account, String license, { DecrementLicenseUsageRequest? decrementLicenseUsageRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/actions/decrement-usage'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody = decrementLicenseUsageRequest;

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

  /// Decrement license usage
  ///
  /// Action to decrement a license's `uses` attribute in accordance with its policy's `maxUses` attribute.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to decrement usage for.
  ///
  /// * [DecrementLicenseUsageRequest] decrementLicenseUsageRequest:
  Future<DecrementLicenseUsageResponse?> decrementLicenseUsage(String account, String license, { DecrementLicenseUsageRequest? decrementLicenseUsageRequest, }) async {
    final response = await decrementLicenseUsageWithHttpInfo(account, license,  decrementLicenseUsageRequest: decrementLicenseUsageRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecrementLicenseUsageResponse',) as DecrementLicenseUsageResponse;
    
    }
    return null;
  }

  /// Delete a license
  ///
  /// Permanently deletes a license. It cannot be undone. This action also immediately deletes any machines that the license is associated with. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to be deleted.
  Future<Response> deleteLicenseWithHttpInfo(String account, String license,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

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

  /// Delete a license
  ///
  /// Permanently deletes a license. It cannot be undone. This action also immediately deletes any machines that the license is associated with. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to be deleted.
  Future<void> deleteLicense(String account, String license,) async {
    final response = await deleteLicenseWithHttpInfo(account, license,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Detach license entitlements
  ///
  /// Detach entitlements from a license. This will immediately be taken into effect for all future validations.  **Below are the limitations to detaching an entitlement:**  - You cannot detach an entitlement that is attached through the policy. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license to be updated.
  ///
  /// * [DetachLicenseEntitlementsRequest] detachLicenseEntitlementsRequest (required):
  Future<Response> detachLicenseEntitlementsWithHttpInfo(String account, String license, DetachLicenseEntitlementsRequest detachLicenseEntitlementsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/entitlements'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody = detachLicenseEntitlementsRequest;

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

  /// Detach license entitlements
  ///
  /// Detach entitlements from a license. This will immediately be taken into effect for all future validations.  **Below are the limitations to detaching an entitlement:**  - You cannot detach an entitlement that is attached through the policy. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license to be updated.
  ///
  /// * [DetachLicenseEntitlementsRequest] detachLicenseEntitlementsRequest (required):
  Future<void> detachLicenseEntitlements(String account, String license, DetachLicenseEntitlementsRequest detachLicenseEntitlementsRequest,) async {
    final response = await detachLicenseEntitlementsWithHttpInfo(account, license, detachLicenseEntitlementsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Increment license usage
  ///
  /// Action to increment a license's `uses` attribute in accordance with its policy's `maxUses` attribute. When the policy's `maxUses` limit is exceeded, the increment attempt will fail. When the policy's `maxUses` is set to `null`, there is no limit on usage. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to increment usage for.
  ///
  /// * [IncrementLicenseUsageRequest] incrementLicenseUsageRequest:
  Future<Response> incrementLicenseUsageWithHttpInfo(String account, String license, { IncrementLicenseUsageRequest? incrementLicenseUsageRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/actions/increment-usage'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody = incrementLicenseUsageRequest;

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

  /// Increment license usage
  ///
  /// Action to increment a license's `uses` attribute in accordance with its policy's `maxUses` attribute. When the policy's `maxUses` limit is exceeded, the increment attempt will fail. When the policy's `maxUses` is set to `null`, there is no limit on usage. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to increment usage for.
  ///
  /// * [IncrementLicenseUsageRequest] incrementLicenseUsageRequest:
  Future<IncrementLicenseUsageResponse?> incrementLicenseUsage(String account, String license, { IncrementLicenseUsageRequest? incrementLicenseUsageRequest, }) async {
    final response = await incrementLicenseUsageWithHttpInfo(account, license,  incrementLicenseUsageRequest: incrementLicenseUsageRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IncrementLicenseUsageResponse',) as IncrementLicenseUsageResponse;
    
    }
    return null;
  }

  /// List license entitlements
  ///
  /// Returns a list of entitlements attached to the license. The entitlements are returned sorted by creation date, with the most recent entitlements appearing first. The listed entitlements include all entitlements attached to the license's policy, in addition to the entitlements attached to the particular license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license to list entitlements for.
  ///
  /// * [Object] page:
  ///   Object containing page `size` and page `number`.
  ///
  /// * [int] limit:
  Future<Response> listLicenseEntitlementsWithHttpInfo(String account, String license, { Object? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/entitlements'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

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

  /// List license entitlements
  ///
  /// Returns a list of entitlements attached to the license. The entitlements are returned sorted by creation date, with the most recent entitlements appearing first. The listed entitlements include all entitlements attached to the license's policy, in addition to the entitlements attached to the particular license. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or key of the license to list entitlements for.
  ///
  /// * [Object] page:
  ///   Object containing page `size` and page `number`.
  ///
  /// * [int] limit:
  Future<ListLicenseEntitlementsResponse?> listLicenseEntitlements(String account, String license, { Object? page, int? limit, }) async {
    final response = await listLicenseEntitlementsWithHttpInfo(account, license,  page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListLicenseEntitlementsResponse',) as ListLicenseEntitlementsResponse;
    
    }
    return null;
  }

  /// List all licenses
  ///
  /// Returns a list of licenses. The licenses are returned sorted by creation date, with the most recent licenses appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a user, only licenses of that specific user will be listed. 
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
  /// * [ListLicensesExpiresParameter] expires:
  ///   Object containing `in`, `before`, or `after` filters.
  ///
  /// * [String] status:
  ///   The status of the license to filter by.
  ///
  /// * [bool] unassigned:
  ///   The user-relationship status of the license to filter by.
  ///
  /// * [String] product:
  ///   The identifier (UUID) of the product to filter by.
  ///
  /// * [String] policy:
  ///   The identifier (UUID) of the policy to filter by.
  ///
  /// * [String] user:
  ///   The identifier (UUID) or email of the user to filter by.
  ///
  /// * [String] group:
  ///   The identifier (UUID) of the group to filter by.
  ///
  /// * [String] machine:
  ///   The identifier (UUID) of the machine to filter by.
  ///
  /// * [Object] metadata:
  ///   The metadata object to filter by.
  Future<Response> listLicensesWithHttpInfo(String account, { Object? page, int? limit, ListLicensesExpiresParameter? expires, String? status, bool? unassigned, String? product, String? policy, String? user, String? group, String? machine, Object? metadata, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses'
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
    if (expires != null) {
      queryParams.addAll(_queryParams('', 'expires', expires));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (unassigned != null) {
      queryParams.addAll(_queryParams('', 'unassigned', unassigned));
    }
    if (product != null) {
      queryParams.addAll(_queryParams('', 'product', product));
    }
    if (policy != null) {
      queryParams.addAll(_queryParams('', 'policy', policy));
    }
    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
    }
    if (group != null) {
      queryParams.addAll(_queryParams('', 'group', group));
    }
    if (machine != null) {
      queryParams.addAll(_queryParams('', 'machine', machine));
    }
    if (metadata != null) {
      queryParams.addAll(_queryParams('', 'metadata', metadata));
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

  /// List all licenses
  ///
  /// Returns a list of licenses. The licenses are returned sorted by creation date, with the most recent licenses appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a user, only licenses of that specific user will be listed. 
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
  /// * [ListLicensesExpiresParameter] expires:
  ///   Object containing `in`, `before`, or `after` filters.
  ///
  /// * [String] status:
  ///   The status of the license to filter by.
  ///
  /// * [bool] unassigned:
  ///   The user-relationship status of the license to filter by.
  ///
  /// * [String] product:
  ///   The identifier (UUID) of the product to filter by.
  ///
  /// * [String] policy:
  ///   The identifier (UUID) of the policy to filter by.
  ///
  /// * [String] user:
  ///   The identifier (UUID) or email of the user to filter by.
  ///
  /// * [String] group:
  ///   The identifier (UUID) of the group to filter by.
  ///
  /// * [String] machine:
  ///   The identifier (UUID) of the machine to filter by.
  ///
  /// * [Object] metadata:
  ///   The metadata object to filter by.
  Future<ListLicensesResponse?> listLicenses(String account, { Object? page, int? limit, ListLicensesExpiresParameter? expires, String? status, bool? unassigned, String? product, String? policy, String? user, String? group, String? machine, Object? metadata, }) async {
    final response = await listLicensesWithHttpInfo(account,  page: page, limit: limit, expires: expires, status: status, unassigned: unassigned, product: product, policy: policy, user: user, group: group, machine: machine, metadata: metadata, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListLicensesResponse',) as ListLicensesResponse;
    
    }
    return null;
  }

  /// Reinstate a license
  ///
  /// Action to reinstate a suspended license.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to reinstate. key. 
  Future<Response> reinstateLicenseWithHttpInfo(String account, String license,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/actions/reinstate'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Reinstate a license
  ///
  /// Action to reinstate a suspended license.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to reinstate. key. 
  Future<ReinstateLicenseResponse?> reinstateLicense(String account, String license,) async {
    final response = await reinstateLicenseWithHttpInfo(account, license,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReinstateLicenseResponse',) as ReinstateLicenseResponse;
    
    }
    return null;
  }

  /// Renew a license
  ///
  /// Action to renew a license. Extends license expiry by the policy's duration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to renew. key. 
  Future<Response> renewLicenseWithHttpInfo(String account, String license,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/actions/renew'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Renew a license
  ///
  /// Action to renew a license. Extends license expiry by the policy's duration.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to renew. key. 
  Future<RenewLicenseResponse?> renewLicense(String account, String license,) async {
    final response = await renewLicenseWithHttpInfo(account, license,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RenewLicenseResponse',) as RenewLicenseResponse;
    
    }
    return null;
  }

  /// Reset license usage
  ///
  /// Action to reset a license's `uses` attribute to `0`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to reset usage for.
  Future<Response> resetLicenseUsageWithHttpInfo(String account, String license,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/actions/reset-usage'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Reset license usage
  ///
  /// Action to reset a license's `uses` attribute to `0`.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to reset usage for.
  Future<ResetLicenseUsageResponse?> resetLicenseUsage(String account, String license,) async {
    final response = await resetLicenseUsageWithHttpInfo(account, license,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResetLicenseUsageResponse',) as ResetLicenseUsageResponse;
    
    }
    return null;
  }

  /// Retrieve a license
  ///
  /// Retrieves the details of an existing license.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to be retrieved. key. 
  Future<Response> retrieveLicenseWithHttpInfo(String account, String license,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

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

  /// Retrieve a license
  ///
  /// Retrieves the details of an existing license.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to be retrieved. key. 
  Future<RetrieveLicenseResponse?> retrieveLicense(String account, String license,) async {
    final response = await retrieveLicenseWithHttpInfo(account, license,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveLicenseResponse',) as RetrieveLicenseResponse;
    
    }
    return null;
  }

  /// Revoke a license
  ///
  /// Action to revoke (delete) a license. This cannot be undone. This action also immediately deletes any machines that the license is associated with. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to revoke. key. 
  Future<Response> revokeLicenseWithHttpInfo(String account, String license,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/actions/revoke'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Revoke a license
  ///
  /// Action to revoke (delete) a license. This cannot be undone. This action also immediately deletes any machines that the license is associated with. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to revoke. key. 
  Future<void> revokeLicense(String account, String license,) async {
    final response = await revokeLicenseWithHttpInfo(account, license,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Suspend a license
  ///
  /// Action to temporarily suspend (ban) a license. This will cause the license to fail validation until reinstated. To permanently revoke a license, see the [revoke action](https://keygen.sh/docs/api/licenses/#licenses-actions-revoke). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to suspend. key. 
  Future<Response> suspendLicenseWithHttpInfo(String account, String license,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/actions/suspend'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Suspend a license
  ///
  /// Action to temporarily suspend (ban) a license. This will cause the license to fail validation until reinstated. To permanently revoke a license, see the [revoke action](https://keygen.sh/docs/api/licenses/#licenses-actions-revoke). 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to suspend. key. 
  Future<SuspendLicenseResponse?> suspendLicense(String account, String license,) async {
    final response = await suspendLicenseWithHttpInfo(account, license,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuspendLicenseResponse',) as SuspendLicenseResponse;
    
    }
    return null;
  }

  /// Update a license
  ///
  /// Updates the specified license resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to be updated.
  ///
  /// * [UpdateLicenseRequest] updateLicenseRequest:
  Future<Response> updateLicenseWithHttpInfo(String account, String license, { UpdateLicenseRequest? updateLicenseRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody = updateLicenseRequest;

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

  /// Update a license
  ///
  /// Updates the specified license resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to be updated.
  ///
  /// * [UpdateLicenseRequest] updateLicenseRequest:
  Future<UpdateLicenseResponse?> updateLicense(String account, String license, { UpdateLicenseRequest? updateLicenseRequest, }) async {
    final response = await updateLicenseWithHttpInfo(account, license,  updateLicenseRequest: updateLicenseRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateLicenseResponse',) as UpdateLicenseResponse;
    
    }
    return null;
  }

  /// Validate by license ID
  ///
  /// Action to validate a license. This will check the following: if the license is suspended, if the license is expired, if the license is overdue for check-in, and if the license meets its machine requirements (if [strict](https://keygen.sh/docs/api/policies/#policies-object-attrs-strict)).  Additional scopes can also be applied, and may be required by the license's policy, e.g. a policy may set `requireFingerprintScope=true`, which will require that you specify a `scope.fingerprint` within the validation request in order to pass validation.  The scoping feature allows you to easily set up a node-locked or floating licensing model without additional logic on your end.  ### Validation codes  Below are the possible values for the `meta.code` key within the validation response. This can be used to better communicate failures to end-users and to handle specific failures within your application code.  | Code                       | Meaning                                                                         | |----------------------------|---------------------------------------------------------------------------------| | VALID                      | License is valid.                                                               | | SUSPENDED                  | License is suspended.                                                           | | EXPIRED                    | License is expired.                                                             | | OVERDUE                    | License is not found.                                                           | | NO_MACHINE                 | License is overdue for check-in.                                                | | NO_MACHINES                | License has reached its max machine limit.                                      | | TOO_MANY_MACHINES          | License has reached its max process limit.                                      | | TOO_MANY_CORES             | License has reached its max core limit.                                         | | TOO_MANY_PROCESSES         | License has reached its max use limit.                                          | | FINGERPRINT_SCOPE_REQUIRED | License does not have a scope.                                                  | | FINGERPRINT_SCOPE_MISMATCH | License scope does not match request scope.                                     | | FINGERPRINT_SCOPE_EMPTY    | License scope is invalid.                                                       | | COMPONENTS_SCOPE_REQUIRED  | License scope is invalid.                                                       | | COMPONENTS_SCOPE_MISMATCH  | None or not enough of the validated license's machine components match the      | |                            | provided components scope.                                                      | | USER_SCOPE_REQUIRED        | The validated license requires a user scope to be provided during validation.   | | USER_SCOPE_MISMATCH        | The validated license's user relationship does not match the provided user      | |                            | scope.                                                                          | | HEARTBEAT_NOT_STARTED      | The validated machine or fingerprint scope requires a heartbeat but one is not  | |                            | started.                                                                        | | HEARTBEAT_DEAD             | The validated machine or fingerprint scope belongs to a dead machine.           | | BANNED                     | The user that owns the validated license has been banned.                       | | PRODUCT_SCOPE_REQUIRED     | The validated license requires a product scope to be provided during            | |                            | validation.                                                                     | | PRODUCT_SCOPE_MISMATCH     | The validated license's product relationship does not match the provided        | |                            | product scope.                                                                  | | POLICY_SCOPE_REQUIRED      | The validated license requires a policy scope to be provided during validation. | | POLICY_SCOPE_MISMATCH      | The validated license's policy relationship does not match the provided policy  | |                            | scope.                                                                          | | MACHINE_SCOPE_REQUIRED     | The validated license requires a machine scope to be provided during            | |                            | validation.                                                                     | | MACHINE_SCOPE_MISMATCH     | None of the validated license's machine relationships match the provided        | |                            | machine scope.                                                                  | | ENTITLEMENTS_MISSING       | The validated license's entitlement relationship is missing one or more of the  | |                            | entitlement scope assertions.                                                   | | ENTITLEMENTS_SCOPE_EMPTY   | An entitlements scope was supplied but it has an empty value.                   | | VERSION_SCOPE_REQUIRED     | The validated license requires a version scope to be provided during            | |                            | validation.                                                                     | | VERSION_SCOPE_MISMATCH     | None of the validated license's accessible releases match the provided version  | |                            | scope, i.e. the release does not exist or it is inaccessible.                   | | CHECKSUM_SCOPE_REQUIRED    | The validated license requires a checksum scope to be provided during           | |                            | validation.                                                                     | | CHECKSUM_SCOPE_MISMATCH    | None of the validated license's accessible artifacts match the provided         | |                            | checksum scope, i.e. a matching artifact does not exist or it is inaccessible.  | 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to be validated. key. 
  ///
  /// * [ValidateLicenseRequest] validateLicenseRequest:
  Future<Response> validateLicenseWithHttpInfo(String account, String license, { ValidateLicenseRequest? validateLicenseRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/{license}/actions/validate'
      .replaceAll('{account}', account)
      .replaceAll('{license}', license);

    // ignore: prefer_final_locals
    Object? postBody = validateLicenseRequest;

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

  /// Validate by license ID
  ///
  /// Action to validate a license. This will check the following: if the license is suspended, if the license is expired, if the license is overdue for check-in, and if the license meets its machine requirements (if [strict](https://keygen.sh/docs/api/policies/#policies-object-attrs-strict)).  Additional scopes can also be applied, and may be required by the license's policy, e.g. a policy may set `requireFingerprintScope=true`, which will require that you specify a `scope.fingerprint` within the validation request in order to pass validation.  The scoping feature allows you to easily set up a node-locked or floating licensing model without additional logic on your end.  ### Validation codes  Below are the possible values for the `meta.code` key within the validation response. This can be used to better communicate failures to end-users and to handle specific failures within your application code.  | Code                       | Meaning                                                                         | |----------------------------|---------------------------------------------------------------------------------| | VALID                      | License is valid.                                                               | | SUSPENDED                  | License is suspended.                                                           | | EXPIRED                    | License is expired.                                                             | | OVERDUE                    | License is not found.                                                           | | NO_MACHINE                 | License is overdue for check-in.                                                | | NO_MACHINES                | License has reached its max machine limit.                                      | | TOO_MANY_MACHINES          | License has reached its max process limit.                                      | | TOO_MANY_CORES             | License has reached its max core limit.                                         | | TOO_MANY_PROCESSES         | License has reached its max use limit.                                          | | FINGERPRINT_SCOPE_REQUIRED | License does not have a scope.                                                  | | FINGERPRINT_SCOPE_MISMATCH | License scope does not match request scope.                                     | | FINGERPRINT_SCOPE_EMPTY    | License scope is invalid.                                                       | | COMPONENTS_SCOPE_REQUIRED  | License scope is invalid.                                                       | | COMPONENTS_SCOPE_MISMATCH  | None or not enough of the validated license's machine components match the      | |                            | provided components scope.                                                      | | USER_SCOPE_REQUIRED        | The validated license requires a user scope to be provided during validation.   | | USER_SCOPE_MISMATCH        | The validated license's user relationship does not match the provided user      | |                            | scope.                                                                          | | HEARTBEAT_NOT_STARTED      | The validated machine or fingerprint scope requires a heartbeat but one is not  | |                            | started.                                                                        | | HEARTBEAT_DEAD             | The validated machine or fingerprint scope belongs to a dead machine.           | | BANNED                     | The user that owns the validated license has been banned.                       | | PRODUCT_SCOPE_REQUIRED     | The validated license requires a product scope to be provided during            | |                            | validation.                                                                     | | PRODUCT_SCOPE_MISMATCH     | The validated license's product relationship does not match the provided        | |                            | product scope.                                                                  | | POLICY_SCOPE_REQUIRED      | The validated license requires a policy scope to be provided during validation. | | POLICY_SCOPE_MISMATCH      | The validated license's policy relationship does not match the provided policy  | |                            | scope.                                                                          | | MACHINE_SCOPE_REQUIRED     | The validated license requires a machine scope to be provided during            | |                            | validation.                                                                     | | MACHINE_SCOPE_MISMATCH     | None of the validated license's machine relationships match the provided        | |                            | machine scope.                                                                  | | ENTITLEMENTS_MISSING       | The validated license's entitlement relationship is missing one or more of the  | |                            | entitlement scope assertions.                                                   | | ENTITLEMENTS_SCOPE_EMPTY   | An entitlements scope was supplied but it has an empty value.                   | | VERSION_SCOPE_REQUIRED     | The validated license requires a version scope to be provided during            | |                            | validation.                                                                     | | VERSION_SCOPE_MISMATCH     | None of the validated license's accessible releases match the provided version  | |                            | scope, i.e. the release does not exist or it is inaccessible.                   | | CHECKSUM_SCOPE_REQUIRED    | The validated license requires a checksum scope to be provided during           | |                            | validation.                                                                     | | CHECKSUM_SCOPE_MISMATCH    | None of the validated license's accessible artifacts match the provided         | |                            | checksum scope, i.e. a matching artifact does not exist or it is inaccessible.  | 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] license (required):
  ///   The identifier (UUID) or URL-safe key of the license to be validated. key. 
  ///
  /// * [ValidateLicenseRequest] validateLicenseRequest:
  Future<ValidateLicenseResponse?> validateLicense(String account, String license, { ValidateLicenseRequest? validateLicenseRequest, }) async {
    final response = await validateLicenseWithHttpInfo(account, license,  validateLicenseRequest: validateLicenseRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValidateLicenseResponse',) as ValidateLicenseResponse;
    
    }
    return null;
  }

  /// Validate by license key
  ///
  /// Action to validate a license key. This will look up the license by its key and check the following: if the license is suspended, if the license is expired, if the license is overdue for check-in, and if the license meets its machine requirements (if [strict](https://keygen.sh/docs/api/policies/#policies-object-attrs-strict)).  Additional scopes can also be applied, and may be required by the license's policy, e.g. a policy may set `requireFingerprintScope=true`, which will require that you specify a `scope.fingerprint` within the validation request in order to pass validation.  The scoping feature allows you to easily set up a node-locked or floating licensing model without additional logic on your end. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [ValidateLicenseKeyRequest] validateLicenseKeyRequest:
  Future<Response> validateLicenseKeyWithHttpInfo(String account, { ValidateLicenseKeyRequest? validateLicenseKeyRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/licenses/actions/validate-key'
      .replaceAll('{account}', account);

    // ignore: prefer_final_locals
    Object? postBody = validateLicenseKeyRequest;

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

  /// Validate by license key
  ///
  /// Action to validate a license key. This will look up the license by its key and check the following: if the license is suspended, if the license is expired, if the license is overdue for check-in, and if the license meets its machine requirements (if [strict](https://keygen.sh/docs/api/policies/#policies-object-attrs-strict)).  Additional scopes can also be applied, and may be required by the license's policy, e.g. a policy may set `requireFingerprintScope=true`, which will require that you specify a `scope.fingerprint` within the validation request in order to pass validation.  The scoping feature allows you to easily set up a node-locked or floating licensing model without additional logic on your end. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [ValidateLicenseKeyRequest] validateLicenseKeyRequest:
  Future<ValidateLicenseKeyResponse?> validateLicenseKey(String account, { ValidateLicenseKeyRequest? validateLicenseKeyRequest, }) async {
    final response = await validateLicenseKeyWithHttpInfo(account,  validateLicenseKeyRequest: validateLicenseKeyRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValidateLicenseKeyResponse',) as ValidateLicenseKeyResponse;
    
    }
    return null;
  }
}
