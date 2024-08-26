//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProcessesApi {
  ProcessesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Kill a process
  ///
  /// Permanently kills (deletes) a process. It cannot be undone.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] process (required):
  ///   The identifier (UUID) of the process to be deleted.
  Future<Response> killProcessWithHttpInfo(String account, String process,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/processes/{process}'
      .replaceAll('{account}', account)
      .replaceAll('{process}', process);

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

  /// Kill a process
  ///
  /// Permanently kills (deletes) a process. It cannot be undone.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] process (required):
  ///   The identifier (UUID) of the process to be deleted.
  Future<KillProcessResponse?> killProcess(String account, String process,) async {
    final response = await killProcessWithHttpInfo(account, process,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KillProcessResponse',) as KillProcessResponse;
    
    }
    return null;
  }

  /// List all processes
  ///
  /// Returns a list of processes. The processes are returned sorted by creation date, with the most recent processes appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a user, only processes for that specific user will be listed. 
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
  /// * [String] machine:
  ///   The identifier (UUID) of the machine to filter by.
  ///
  /// * [String] license:
  ///   The identifier (UUID) of the license to filter by.
  ///
  /// * [String] user:
  ///   The identifier (UUID) of the user to filter by.
  ///
  /// * [String] product:
  ///   The identifier (UUID) of the product to filter by.
  Future<Response> listProcessesWithHttpInfo(String account, { Object? page, int? limit, String? machine, String? license, String? user, String? product, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/processes'
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
    if (machine != null) {
      queryParams.addAll(_queryParams('', 'machine', machine));
    }
    if (license != null) {
      queryParams.addAll(_queryParams('', 'license', license));
    }
    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
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

  /// List all processes
  ///
  /// Returns a list of processes. The processes are returned sorted by creation date, with the most recent processes appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a user, only processes for that specific user will be listed. 
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
  /// * [String] machine:
  ///   The identifier (UUID) of the machine to filter by.
  ///
  /// * [String] license:
  ///   The identifier (UUID) of the license to filter by.
  ///
  /// * [String] user:
  ///   The identifier (UUID) of the user to filter by.
  ///
  /// * [String] product:
  ///   The identifier (UUID) of the product to filter by.
  Future<ListProcessesResponse?> listProcesses(String account, { Object? page, int? limit, String? machine, String? license, String? user, String? product, }) async {
    final response = await listProcessesWithHttpInfo(account,  page: page, limit: limit, machine: machine, license: license, user: user, product: product, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListProcessesResponse',) as ListProcessesResponse;
    
    }
    return null;
  }

  /// Ping
  ///
  /// Action to maintain a process heartbeat ping frequency. When a process has not performed a heartbeat ping within the monitor window, it will be considered dead and queued for deletion. This can be utilized for process leasing, where a license or machine has a maximum number of allowed processes, and each process must maintain heartbeat pings in order to remain active. This can be used in combination with machine heartbeats.  Consider this common process leasing scenario:  - One or more processes are spawned during application initialization, after the license has been validated and   the underlying machine has been activated. - Each process sends their first ping and maintains a heartbeat ping frequency, according to the required   heartbeat monitor window, to indicate that it is still alive. - The application crashes. The normal process kill-on-exit procedure fails to occur before the application   exits. There are now one or more \"zombie\" processes. - The heartbeat monitor detects that the process has not sent a ping within the window, and subsequently kills   the process.  **The default heartbeat monitor window is 10 minutes.** This can be configured to a different value via the license policy's heartbeat duration attribute.  Processes will be culled according to the policy's heartbeat cull strategy, after the process's resurrection period has passed, if set. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] process (required):
  ///   The identifier (UUID) of the process to ping.
  Future<Response> pingProcessWithHttpInfo(String account, String process,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/processes/{process}/actions/ping'
      .replaceAll('{account}', account)
      .replaceAll('{process}', process);

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

  /// Ping
  ///
  /// Action to maintain a process heartbeat ping frequency. When a process has not performed a heartbeat ping within the monitor window, it will be considered dead and queued for deletion. This can be utilized for process leasing, where a license or machine has a maximum number of allowed processes, and each process must maintain heartbeat pings in order to remain active. This can be used in combination with machine heartbeats.  Consider this common process leasing scenario:  - One or more processes are spawned during application initialization, after the license has been validated and   the underlying machine has been activated. - Each process sends their first ping and maintains a heartbeat ping frequency, according to the required   heartbeat monitor window, to indicate that it is still alive. - The application crashes. The normal process kill-on-exit procedure fails to occur before the application   exits. There are now one or more \"zombie\" processes. - The heartbeat monitor detects that the process has not sent a ping within the window, and subsequently kills   the process.  **The default heartbeat monitor window is 10 minutes.** This can be configured to a different value via the license policy's heartbeat duration attribute.  Processes will be culled according to the policy's heartbeat cull strategy, after the process's resurrection period has passed, if set. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] process (required):
  ///   The identifier (UUID) of the process to ping.
  Future<PingProcessResponse?> pingProcess(String account, String process,) async {
    final response = await pingProcessWithHttpInfo(account, process,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PingProcessResponse',) as PingProcessResponse;
    
    }
    return null;
  }

  /// Retrieve a process
  ///
  /// Retrieves the details of an existing process.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] process (required):
  ///   The identifier (UUID) of the process to be retrieved.
  Future<Response> retrieveProcessWithHttpInfo(String account, String process,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/processes/{process}'
      .replaceAll('{account}', account)
      .replaceAll('{process}', process);

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

  /// Retrieve a process
  ///
  /// Retrieves the details of an existing process.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] process (required):
  ///   The identifier (UUID) of the process to be retrieved.
  Future<RetrieveProcessResponse?> retrieveProcess(String account, String process,) async {
    final response = await retrieveProcessWithHttpInfo(account, process,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveProcessResponse',) as RetrieveProcessResponse;
    
    }
    return null;
  }

  /// Spawn a process
  ///
  /// Spawns (creates) a new process resource for a machine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [SpawnProcessRequest] spawnProcessRequest (required):
  Future<Response> spawnProcessWithHttpInfo(String account, SpawnProcessRequest spawnProcessRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/processes'
      .replaceAll('{account}', account);

    // ignore: prefer_final_locals
    Object? postBody = spawnProcessRequest;

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

  /// Spawn a process
  ///
  /// Spawns (creates) a new process resource for a machine.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [SpawnProcessRequest] spawnProcessRequest (required):
  Future<SpawnProcessResponse?> spawnProcess(String account, SpawnProcessRequest spawnProcessRequest,) async {
    final response = await spawnProcessWithHttpInfo(account, spawnProcessRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpawnProcessResponse',) as SpawnProcessResponse;
    
    }
    return null;
  }

  /// Update a process
  ///
  /// Updates the specified process resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] process (required):
  ///   The identifier (UUID) of the process to be updated.
  ///
  /// * [UpdateProcessRequest] updateProcessRequest:
  Future<Response> updateProcessWithHttpInfo(String account, String process, { UpdateProcessRequest? updateProcessRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/processes/{process}'
      .replaceAll('{account}', account)
      .replaceAll('{process}', process);

    // ignore: prefer_final_locals
    Object? postBody = updateProcessRequest;

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

  /// Update a process
  ///
  /// Updates the specified process resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] process (required):
  ///   The identifier (UUID) of the process to be updated.
  ///
  /// * [UpdateProcessRequest] updateProcessRequest:
  Future<UpdateProcessResponse?> updateProcess(String account, String process, { UpdateProcessRequest? updateProcessRequest, }) async {
    final response = await updateProcessWithHttpInfo(account, process,  updateProcessRequest: updateProcessRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateProcessResponse',) as UpdateProcessResponse;
    
    }
    return null;
  }
}
