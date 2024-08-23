//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UsersApi {
  UsersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Ban user
  ///
  /// Action to ban a user. Banned users cannot authenticate with the API, and all licenses the user owns will have a `BANNED` status. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be retrieved.
  Future<Response> banUserWithHttpInfo(String account, String user,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}/actions/ban'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Ban user
  ///
  /// Action to ban a user. Banned users cannot authenticate with the API, and all licenses the user owns will have a `BANNED` status. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be retrieved.
  Future<BanUserResponse?> banUser(String account, String user,) async {
    final response = await banUserWithHttpInfo(account, user,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BanUserResponse',) as BanUserResponse;
    
    }
    return null;
  }

  /// Change group
  ///
  /// Change a user's group relationship. This will immediately transfer the user resource to the new group. Changing the user's group will not retroactively change the group of its licenses or of its machines. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be updated.
  ///
  /// * [ChangeUserGroupRequest] changeUserGroupRequest (required):
  Future<Response> changeUserGroupWithHttpInfo(String account, String user, ChangeUserGroupRequest changeUserGroupRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}/group'
      .replaceAll('{account}', account)
      .replaceAll('{user}', user);

    // ignore: prefer_final_locals
    Object? postBody = changeUserGroupRequest;

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
  /// Change a user's group relationship. This will immediately transfer the user resource to the new group. Changing the user's group will not retroactively change the group of its licenses or of its machines. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be updated.
  ///
  /// * [ChangeUserGroupRequest] changeUserGroupRequest (required):
  Future<ChangeUserGroupResponse?> changeUserGroup(String account, String user, ChangeUserGroupRequest changeUserGroupRequest,) async {
    final response = await changeUserGroupWithHttpInfo(account, user, changeUserGroupRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChangeUserGroupResponse',) as ChangeUserGroupResponse;
    
    }
    return null;
  }

  /// Create a user
  ///
  /// Creates a new user resource. Users may be created with only an email address — no name or password is necessarily required. This can act as a way to associate an email address with a license, which can later be claimed and turned into a full user profile, if needed, using the password reset flow. This is particularly great for custom license recovery flows, where you may need to email a user their lost license keys. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [CreateUserRequest] createUserRequest (required):
  Future<Response> createUserWithHttpInfo(String account, CreateUserRequest createUserRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users'
      .replaceAll('{account}', account);

    // ignore: prefer_final_locals
    Object? postBody = createUserRequest;

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

  /// Create a user
  ///
  /// Creates a new user resource. Users may be created with only an email address — no name or password is necessarily required. This can act as a way to associate an email address with a license, which can later be claimed and turned into a full user profile, if needed, using the password reset flow. This is particularly great for custom license recovery flows, where you may need to email a user their lost license keys. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [CreateUserRequest] createUserRequest (required):
  Future<CreateUserResponse?> createUser(String account, CreateUserRequest createUserRequest,) async {
    final response = await createUserWithHttpInfo(account, createUserRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateUserResponse',) as CreateUserResponse;
    
    }
    return null;
  }

  /// Delete a user
  ///
  /// Permanently deletes a user. It cannot be undone. This action also immediately deletes any licenses and machines that the user is associated with. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be deleted.
  Future<Response> deleteUserWithHttpInfo(String account, String user,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}'
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a user
  ///
  /// Permanently deletes a user. It cannot be undone. This action also immediately deletes any licenses and machines that the user is associated with. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be deleted.
  Future<void> deleteUser(String account, String user,) async {
    final response = await deleteUserWithHttpInfo(account, user,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Generate a user token
  ///
  /// Generates a new user token resource. User tokens, by default, expire after 2 weeks. Though this can be adjusted via the `expiry` attribute. Typically, you'd want to generate a token using [the tokens resource](https://keygen.sh/docs/api/tokens/#tokens-generate), using the user's email and password. But this endpoint can be used by admins to generate a token on a user's behalf.  This endpoint is particularly useful for generating tokens for a user without a password, or if you want to manage logins another way, e.g. server-side. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to generate a token for.
  ///
  /// * [GenerateUserTokenRequest] generateUserTokenRequest:
  Future<Response> generateUserTokenWithHttpInfo(String account, String user, { GenerateUserTokenRequest? generateUserTokenRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}/tokens'
      .replaceAll('{account}', account)
      .replaceAll('{user}', user);

    // ignore: prefer_final_locals
    Object? postBody = generateUserTokenRequest;

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

  /// Generate a user token
  ///
  /// Generates a new user token resource. User tokens, by default, expire after 2 weeks. Though this can be adjusted via the `expiry` attribute. Typically, you'd want to generate a token using [the tokens resource](https://keygen.sh/docs/api/tokens/#tokens-generate), using the user's email and password. But this endpoint can be used by admins to generate a token on a user's behalf.  This endpoint is particularly useful for generating tokens for a user without a password, or if you want to manage logins another way, e.g. server-side. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to generate a token for.
  ///
  /// * [GenerateUserTokenRequest] generateUserTokenRequest:
  Future<GenerateUserTokenResponse?> generateUserToken(String account, String user, { GenerateUserTokenRequest? generateUserTokenRequest, }) async {
    final response = await generateUserTokenWithHttpInfo(account, user,  generateUserTokenRequest: generateUserTokenRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateUserTokenResponse',) as GenerateUserTokenResponse;
    
    }
    return null;
  }

  /// List all users
  ///
  /// Returns a list of users. The users are returned sorted by creation date, with the most recent users appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a product, only users associated with the specific product, through a license, will be listed in the results. 
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
  /// * [String] status:
  ///   The status of the user to filter by.
  ///
  /// * [bool] assigned:
  ///   Only show users assigned a license.
  ///
  /// * [String] product:
  ///   The identifier (UUID) of the product to filter by.
  ///
  /// * [String] group:
  ///   The identifier (UUID) of the group to filter by.
  ///
  /// * [List<String>] roles:
  ///   Array containing role names to filter by.
  ///
  /// * [Object] metadata:
  ///   The metadata object to filter by.
  Future<Response> listUsersWithHttpInfo(String account, { Object? page, int? limit, String? status, bool? assigned, String? product, String? group, List<String>? roles, Object? metadata, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users'
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
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (assigned != null) {
      queryParams.addAll(_queryParams('', 'assigned', assigned));
    }
    if (product != null) {
      queryParams.addAll(_queryParams('', 'product', product));
    }
    if (group != null) {
      queryParams.addAll(_queryParams('', 'group', group));
    }
    if (roles != null) {
      queryParams.addAll(_queryParams('multi', 'roles', roles));
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

  /// List all users
  ///
  /// Returns a list of users. The users are returned sorted by creation date, with the most recent users appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a product, only users associated with the specific product, through a license, will be listed in the results. 
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
  /// * [String] status:
  ///   The status of the user to filter by.
  ///
  /// * [bool] assigned:
  ///   Only show users assigned a license.
  ///
  /// * [String] product:
  ///   The identifier (UUID) of the product to filter by.
  ///
  /// * [String] group:
  ///   The identifier (UUID) of the group to filter by.
  ///
  /// * [List<String>] roles:
  ///   Array containing role names to filter by.
  ///
  /// * [Object] metadata:
  ///   The metadata object to filter by.
  Future<ListUsersResponse?> listUsers(String account, { Object? page, int? limit, String? status, bool? assigned, String? product, String? group, List<String>? roles, Object? metadata, }) async {
    final response = await listUsersWithHttpInfo(account,  page: page, limit: limit, status: status, assigned: assigned, product: product, group: group, roles: roles, metadata: metadata, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListUsersResponse',) as ListUsersResponse;
    
    }
    return null;
  }

  /// Reset password
  ///
  /// Fulfill a user's password reset request. Password reset tokens expire 24 hours after [requesting the reset](https://keygen.sh/docs/api/passwords/#passwords-forgot). For an example of self-hosting your password reset flow, please [see this repo](https://github.com/keygen-sh/example-password-reset-fulfillment). Alternatively, you can use [our Zapier integration](https://zapier.com/apps/keygen/integrations).  When the account is protected, and the user does not yet have a password set, they will not be able to set their initial password. Only admins may set the password for a passwordless user, unless the account is unprotected. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be retrieved.
  ///
  /// * [ResetUserPasswordRequest] resetUserPasswordRequest (required):
  Future<Response> resetUserPasswordWithHttpInfo(String account, String user, ResetUserPasswordRequest resetUserPasswordRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}/actions/reset-password'
      .replaceAll('{account}', account)
      .replaceAll('{user}', user);

    // ignore: prefer_final_locals
    Object? postBody = resetUserPasswordRequest;

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

  /// Reset password
  ///
  /// Fulfill a user's password reset request. Password reset tokens expire 24 hours after [requesting the reset](https://keygen.sh/docs/api/passwords/#passwords-forgot). For an example of self-hosting your password reset flow, please [see this repo](https://github.com/keygen-sh/example-password-reset-fulfillment). Alternatively, you can use [our Zapier integration](https://zapier.com/apps/keygen/integrations).  When the account is protected, and the user does not yet have a password set, they will not be able to set their initial password. Only admins may set the password for a passwordless user, unless the account is unprotected. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be retrieved.
  ///
  /// * [ResetUserPasswordRequest] resetUserPasswordRequest (required):
  Future<ResetUserPasswordResponse?> resetUserPassword(String account, String user, ResetUserPasswordRequest resetUserPasswordRequest,) async {
    final response = await resetUserPasswordWithHttpInfo(account, user, resetUserPasswordRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResetUserPasswordResponse',) as ResetUserPasswordResponse;
    
    }
    return null;
  }

  /// Retrieve a user
  ///
  /// Retrieves the details of an existing user. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be retrieved.
  Future<Response> retrieveUserWithHttpInfo(String account, String user,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}'
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

  /// Retrieve a user
  ///
  /// Retrieves the details of an existing user. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be retrieved.
  Future<RetrieveUserResponse?> retrieveUser(String account, String user,) async {
    final response = await retrieveUserWithHttpInfo(account, user,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveUserResponse',) as RetrieveUserResponse;
    
    }
    return null;
  }

  /// Unban user
  ///
  /// Action to unban a user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be retrieved.
  Future<Response> unbanUserWithHttpInfo(String account, String user,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}/actions/unban'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Unban user
  ///
  /// Action to unban a user.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be retrieved.
  Future<UnbanUserResponse?> unbanUser(String account, String user,) async {
    final response = await unbanUserWithHttpInfo(account, user,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnbanUserResponse',) as UnbanUserResponse;
    
    }
    return null;
  }

  /// Update a user
  ///
  /// Updates the specified user resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be updated.
  ///
  /// * [UpdateUserRequest] updateUserRequest:
  Future<Response> updateUserWithHttpInfo(String account, String user, { UpdateUserRequest? updateUserRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}'
      .replaceAll('{account}', account)
      .replaceAll('{user}', user);

    // ignore: prefer_final_locals
    Object? postBody = updateUserRequest;

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

  /// Update a user
  ///
  /// Updates the specified user resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be updated.
  ///
  /// * [UpdateUserRequest] updateUserRequest:
  Future<UpdateUserResponse?> updateUser(String account, String user, { UpdateUserRequest? updateUserRequest, }) async {
    final response = await updateUserWithHttpInfo(account, user,  updateUserRequest: updateUserRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateUserResponse',) as UpdateUserResponse;
    
    }
    return null;
  }

  /// Update password
  ///
  /// Action to update the user's password. A user's password can **only** be updated when authenticated as the given user. To update the user's password as an admin, use the [update user endpoint](https://keygen.sh/docs/api/users/#users-update). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be retrieved.
  ///
  /// * [UpdateUserPasswordRequest] updateUserPasswordRequest (required):
  Future<Response> updateUserPasswordWithHttpInfo(String account, String user, UpdateUserPasswordRequest updateUserPasswordRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/users/{user}/actions/update-password'
      .replaceAll('{account}', account)
      .replaceAll('{user}', user);

    // ignore: prefer_final_locals
    Object? postBody = updateUserPasswordRequest;

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

  /// Update password
  ///
  /// Action to update the user's password. A user's password can **only** be updated when authenticated as the given user. To update the user's password as an admin, use the [update user endpoint](https://keygen.sh/docs/api/users/#users-update). 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] user (required):
  ///   The identifier (UUID) or email of the user to be retrieved.
  ///
  /// * [UpdateUserPasswordRequest] updateUserPasswordRequest (required):
  Future<UpdateUserPasswordResponse?> updateUserPassword(String account, String user, UpdateUserPasswordRequest updateUserPasswordRequest,) async {
    final response = await updateUserPasswordWithHttpInfo(account, user, updateUserPasswordRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateUserPasswordResponse',) as UpdateUserPasswordResponse;
    
    }
    return null;
  }
}
