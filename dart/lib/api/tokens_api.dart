//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TokensApi {
  TokensApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Generate a token
  ///
  /// Generate a new token resource for a user, using the user's email and password. Keygen does not store your tokens for security reasons. After a token is generated, it cannot be recovered if lost. The token will need to be revoked if lost, and a new token should be generated. Alternatively, the existing token can be regenerated (rolled).  By default, user tokens expire in 2 weeks, and admin tokens do not expire. A custom expiry may be provided in the token generate request. If the user does not have a password, a token must be generated via [the user's token relationship](https://keygen.sh/docs/api/users/#users-tokens)  To generate a token for a product, see the [product token relationship](https://keygen.sh/docs/api/products/#products-tokens).  To generate a license token, see the [license token relationship](https://keygen.sh/docs/api/licenses/#licenses-relationships-activation-tokens). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [GenerateTokenRequest] generateTokenRequest:
  Future<Response> generateTokenWithHttpInfo(String account, { GenerateTokenRequest? generateTokenRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/tokens'
      .replaceAll('{account}', account);

    // ignore: prefer_final_locals
    Object? postBody = generateTokenRequest;

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

  /// Generate a token
  ///
  /// Generate a new token resource for a user, using the user's email and password. Keygen does not store your tokens for security reasons. After a token is generated, it cannot be recovered if lost. The token will need to be revoked if lost, and a new token should be generated. Alternatively, the existing token can be regenerated (rolled).  By default, user tokens expire in 2 weeks, and admin tokens do not expire. A custom expiry may be provided in the token generate request. If the user does not have a password, a token must be generated via [the user's token relationship](https://keygen.sh/docs/api/users/#users-tokens)  To generate a token for a product, see the [product token relationship](https://keygen.sh/docs/api/products/#products-tokens).  To generate a license token, see the [license token relationship](https://keygen.sh/docs/api/licenses/#licenses-relationships-activation-tokens). 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [GenerateTokenRequest] generateTokenRequest:
  Future<GenerateTokenResponse?> generateToken(String account, { GenerateTokenRequest? generateTokenRequest, }) async {
    final response = await generateTokenWithHttpInfo(account,  generateTokenRequest: generateTokenRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateTokenResponse',) as GenerateTokenResponse;
    
    }
    return null;
  }

  /// List all tokens
  ///
  /// Returns a list of tokens. The tokens are returned sorted by creation date, with the most recent tokens appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a product, only tokens that belong to the specific product will be listed. 
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
  /// * [ListTokensBearerParameter] bearer:
  ///   Object containing the bearer's type and ID.
  Future<Response> listTokensWithHttpInfo(String account, { Object? page, int? limit, ListTokensBearerParameter? bearer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/tokens'
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
    if (bearer != null) {
      queryParams.addAll(_queryParams('', 'bearer', bearer));
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

  /// List all tokens
  ///
  /// Returns a list of tokens. The tokens are returned sorted by creation date, with the most recent tokens appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a product, only tokens that belong to the specific product will be listed. 
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
  /// * [ListTokensBearerParameter] bearer:
  ///   Object containing the bearer's type and ID.
  Future<ListTokensResponse?> listTokens(String account, { Object? page, int? limit, ListTokensBearerParameter? bearer, }) async {
    final response = await listTokensWithHttpInfo(account,  page: page, limit: limit, bearer: bearer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListTokensResponse',) as ListTokensResponse;
    
    }
    return null;
  }

  /// Regenerate a token
  ///
  /// Regenerate an existing token resource. This will replace the token attribute with a new secure token, and extend the token's expiry by 2 weeks from the current time. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] token (required):
  ///   The identifier (UUID) of the token to be regenerated.
  Future<Response> regenerateTokenWithHttpInfo(String account, String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/tokens/{token}'
      .replaceAll('{account}', account)
      .replaceAll('{token}', token);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Regenerate a token
  ///
  /// Regenerate an existing token resource. This will replace the token attribute with a new secure token, and extend the token's expiry by 2 weeks from the current time. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] token (required):
  ///   The identifier (UUID) of the token to be regenerated.
  Future<RegenerateTokenResponse?> regenerateToken(String account, String token,) async {
    final response = await regenerateTokenWithHttpInfo(account, token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegenerateTokenResponse',) as RegenerateTokenResponse;
    
    }
    return null;
  }

  /// Retrieve a token
  ///
  /// Retrieves the details of an existing token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] token (required):
  ///   The identifier (UUID) of the token to be retrieved.
  Future<Response> retrieveTokenWithHttpInfo(String account, String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/tokens/{token}'
      .replaceAll('{account}', account)
      .replaceAll('{token}', token);

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

  /// Retrieve a token
  ///
  /// Retrieves the details of an existing token.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] token (required):
  ///   The identifier (UUID) of the token to be retrieved.
  Future<RetrieveTokenResponse?> retrieveToken(String account, String token,) async {
    final response = await retrieveTokenWithHttpInfo(account, token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveTokenResponse',) as RetrieveTokenResponse;
    
    }
    return null;
  }

  /// Revoke a token
  ///
  /// Permanently revokes a token. It cannot be undone. This action also immediately invalidates all sessions using the given token. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] token (required):
  ///   The identifier (UUID) of the token to be revoked.
  Future<Response> revokeTokenWithHttpInfo(String account, String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/tokens/{token}'
      .replaceAll('{account}', account)
      .replaceAll('{token}', token);

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

  /// Revoke a token
  ///
  /// Permanently revokes a token. It cannot be undone. This action also immediately invalidates all sessions using the given token. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] token (required):
  ///   The identifier (UUID) of the token to be revoked.
  Future<void> revokeToken(String account, String token,) async {
    final response = await revokeTokenWithHttpInfo(account, token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
