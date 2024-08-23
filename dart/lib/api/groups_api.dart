//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GroupsApi {
  GroupsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a group
  ///
  /// Creates a new group resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [CreateGroupRequest] createGroupRequest (required):
  Future<Response> createGroupWithHttpInfo(String account, CreateGroupRequest createGroupRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/groups'
      .replaceAll('{account}', account);

    // ignore: prefer_final_locals
    Object? postBody = createGroupRequest;

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

  /// Create a group
  ///
  /// Creates a new group resource.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [CreateGroupRequest] createGroupRequest (required):
  Future<CreateGroupResponse?> createGroup(String account, CreateGroupRequest createGroupRequest,) async {
    final response = await createGroupWithHttpInfo(account, createGroupRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateGroupResponse',) as CreateGroupResponse;
    
    }
    return null;
  }

  /// Delete a group
  ///
  /// Permanently deletes a group. The group will immediately be removed from all users, licenses and machines. It cannot be undone. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] group (required):
  ///   The identifier (UUID) of the group to be deleted.
  Future<Response> deleteGroupWithHttpInfo(String account, String group,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/groups/{group}'
      .replaceAll('{account}', account)
      .replaceAll('{group}', group);

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

  /// Delete a group
  ///
  /// Permanently deletes a group. The group will immediately be removed from all users, licenses and machines. It cannot be undone. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] group (required):
  ///   The identifier (UUID) of the group to be deleted.
  Future<void> deleteGroup(String account, String group,) async {
    final response = await deleteGroupWithHttpInfo(account, group,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all groups
  ///
  /// Returns a list of groups. This will include all groups associated with the authenticated bearer, including groups they are an owner of, as well as groups they are a member of. The groups are returned sorted by creation date, with the most recent groups appearing first. 
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
  Future<Response> listGroupsWithHttpInfo(String account, { Object? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/groups'
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

  /// List all groups
  ///
  /// Returns a list of groups. This will include all groups associated with the authenticated bearer, including groups they are an owner of, as well as groups they are a member of. The groups are returned sorted by creation date, with the most recent groups appearing first. 
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
  Future<ListGroupsResponse?> listGroups(String account, { Object? page, int? limit, }) async {
    final response = await listGroupsWithHttpInfo(account,  page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListGroupsResponse',) as ListGroupsResponse;
    
    }
    return null;
  }

  /// Retrieve a group
  ///
  /// Retrieves the details of an existing group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] group (required):
  ///   The identifier (UUID) of the group to be retrieved.
  Future<Response> retrieveGroupWithHttpInfo(String account, String group,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/groups/{group}'
      .replaceAll('{account}', account)
      .replaceAll('{group}', group);

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

  /// Retrieve a group
  ///
  /// Retrieves the details of an existing group.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] group (required):
  ///   The identifier (UUID) of the group to be retrieved.
  Future<RetrieveGroupResponse?> retrieveGroup(String account, String group,) async {
    final response = await retrieveGroupWithHttpInfo(account, group,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveGroupResponse',) as RetrieveGroupResponse;
    
    }
    return null;
  }

  /// Update a group
  ///
  /// Updates the specified group resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] group (required):
  ///   The identifier (UUID) of the group to be updated.
  ///
  /// * [UpdateGroupRequest] updateGroupRequest:
  Future<Response> updateGroupWithHttpInfo(String account, String group, { UpdateGroupRequest? updateGroupRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/groups/{group}'
      .replaceAll('{account}', account)
      .replaceAll('{group}', group);

    // ignore: prefer_final_locals
    Object? postBody = updateGroupRequest;

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

  /// Update a group
  ///
  /// Updates the specified group resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] group (required):
  ///   The identifier (UUID) of the group to be updated.
  ///
  /// * [UpdateGroupRequest] updateGroupRequest:
  Future<UpdateGroupResponse?> updateGroup(String account, String group, { UpdateGroupRequest? updateGroupRequest, }) async {
    final response = await updateGroupWithHttpInfo(account, group,  updateGroupRequest: updateGroupRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateGroupResponse',) as UpdateGroupResponse;
    
    }
    return null;
  }
}
