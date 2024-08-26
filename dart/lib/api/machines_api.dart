//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MachinesApi {
  MachinesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Activate a machine
  ///
  /// Creates, or activates, a new machine resource for a license.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [ActivateMachineRequest] activateMachineRequest (required):
  Future<Response> activateMachineWithHttpInfo(String account, ActivateMachineRequest activateMachineRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/machines'
      .replaceAll('{account}', account);

    // ignore: prefer_final_locals
    Object? postBody = activateMachineRequest;

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

  /// Activate a machine
  ///
  /// Creates, or activates, a new machine resource for a license.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [ActivateMachineRequest] activateMachineRequest (required):
  Future<ActivateMachineResponse?> activateMachine(String account, ActivateMachineRequest activateMachineRequest,) async {
    final response = await activateMachineWithHttpInfo(account, activateMachineRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ActivateMachineResponse',) as ActivateMachineResponse;
    
    }
    return null;
  }

  /// Change group
  ///
  /// Change a machine's group relationship. This will immediately transfer the machine resource to the new group. Changing the machine's group will not retroactively change the group of its user or license. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or key of the machine to be updated.
  ///
  /// * [ChangeMachineGroupRequest] changeMachineGroupRequest (required):
  Future<Response> changeMachineGroupWithHttpInfo(String account, String machine, ChangeMachineGroupRequest changeMachineGroupRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/machines/{machine}/group'
      .replaceAll('{account}', account)
      .replaceAll('{machine}', machine);

    // ignore: prefer_final_locals
    Object? postBody = changeMachineGroupRequest;

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
  /// Change a machine's group relationship. This will immediately transfer the machine resource to the new group. Changing the machine's group will not retroactively change the group of its user or license. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or key of the machine to be updated.
  ///
  /// * [ChangeMachineGroupRequest] changeMachineGroupRequest (required):
  Future<ChangeMachineGroupResponse?> changeMachineGroup(String account, String machine, ChangeMachineGroupRequest changeMachineGroupRequest,) async {
    final response = await changeMachineGroupWithHttpInfo(account, machine, changeMachineGroupRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChangeMachineGroupResponse',) as ChangeMachineGroupResponse;
    
    }
    return null;
  }

  /// Check-out machine
  ///
  /// Action to check-out a machine. This will generate a snapshot of the machine at time of checkout, encoded into a machine file certificate that can be decoded and used for licensing offline and air-gapped environments. The algorithm will depend on the license policy's `scheme`.  Machine files can be distributed using email or USB drives to air-gapped devices.  For instructions on verifying a machine file, please see [machine file verification](https://keygen.sh/docs/api/cryptography/#cryptographic-lic). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or URL-safe fingerprint of the machine to check-out.
  ///
  /// * [int] ttl:
  ///   The time-to-live (TTL) of the checked out machine file, in seconds.
  ///
  /// * [List<String>] include:
  ///   Include relationship data in the machine file.
  ///
  /// * [bool] encrypt:
  ///   Whether or not to encrypt the machine file.
  Future<Response> checkOutMachineWithHttpInfo(String account, String machine, { int? ttl, List<String>? include, bool? encrypt, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/machines/{machine}/actions/check-out'
      .replaceAll('{account}', account)
      .replaceAll('{machine}', machine);

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
    if (encrypt != null) {
      queryParams.addAll(_queryParams('', 'encrypt', encrypt));
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

  /// Check-out machine
  ///
  /// Action to check-out a machine. This will generate a snapshot of the machine at time of checkout, encoded into a machine file certificate that can be decoded and used for licensing offline and air-gapped environments. The algorithm will depend on the license policy's `scheme`.  Machine files can be distributed using email or USB drives to air-gapped devices.  For instructions on verifying a machine file, please see [machine file verification](https://keygen.sh/docs/api/cryptography/#cryptographic-lic). 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or URL-safe fingerprint of the machine to check-out.
  ///
  /// * [int] ttl:
  ///   The time-to-live (TTL) of the checked out machine file, in seconds.
  ///
  /// * [List<String>] include:
  ///   Include relationship data in the machine file.
  ///
  /// * [bool] encrypt:
  ///   Whether or not to encrypt the machine file.
  Future<CheckOutMachineResponse?> checkOutMachine(String account, String machine, { int? ttl, List<String>? include, bool? encrypt, }) async {
    final response = await checkOutMachineWithHttpInfo(account, machine,  ttl: ttl, include: include, encrypt: encrypt, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckOutMachineResponse',) as CheckOutMachineResponse;
    
    }
    return null;
  }

  /// Deactivate a machine
  ///
  /// Permanently deletes, or deactivates, a machine. It cannot be undone. This will immediately delete all processes associated with the machine. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or URL-safe fingerprint of the machine to be deleted.
  Future<Response> deactivateMachineWithHttpInfo(String account, String machine,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/machines/{machine}'
      .replaceAll('{account}', account)
      .replaceAll('{machine}', machine);

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

  /// Deactivate a machine
  ///
  /// Permanently deletes, or deactivates, a machine. It cannot be undone. This will immediately delete all processes associated with the machine. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or URL-safe fingerprint of the machine to be deleted.
  Future<void> deactivateMachine(String account, String machine,) async {
    final response = await deactivateMachineWithHttpInfo(account, machine,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all machines
  ///
  /// Returns a list of machines. The machines are returned sorted by creation date, with the most recent machines appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a user, only machines for that specific user will be listed. 
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
  /// * [String] fingerprint:
  ///   The machine fingerprint to filter by.
  ///
  /// * [String] ip:
  ///   The machine IP address to filter by.
  ///
  /// * [String] hostname:
  ///   The machine hostname to filter by.
  ///
  /// * [String] product:
  ///   The identifier (UUID) of the product to filter by.
  ///
  /// * [String] policy:
  ///   The identifier (UUID) of the policy to filter by.
  ///
  /// * [String] license:
  ///   The identifier (UUID) or key of the license to filter by.
  ///
  /// * [String] key:
  ///   The license key to filter by.
  ///
  /// * [String] user:
  ///   The identifier (UUID) of the user to filter by.
  ///
  /// * [String] group:
  ///   The identifier (UUID) of the group to filter by.
  ///
  /// * [Object] metadata:
  ///   The metadata object to filter by.
  Future<Response> listMachinesWithHttpInfo(String account, { Object? page, int? limit, String? fingerprint, String? ip, String? hostname, String? product, String? policy, String? license, String? key, String? user, String? group, Object? metadata, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/machines'
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
    if (fingerprint != null) {
      queryParams.addAll(_queryParams('', 'fingerprint', fingerprint));
    }
    if (ip != null) {
      queryParams.addAll(_queryParams('', 'ip', ip));
    }
    if (hostname != null) {
      queryParams.addAll(_queryParams('', 'hostname', hostname));
    }
    if (product != null) {
      queryParams.addAll(_queryParams('', 'product', product));
    }
    if (policy != null) {
      queryParams.addAll(_queryParams('', 'policy', policy));
    }
    if (license != null) {
      queryParams.addAll(_queryParams('', 'license', license));
    }
    if (key != null) {
      queryParams.addAll(_queryParams('', 'key', key));
    }
    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
    }
    if (group != null) {
      queryParams.addAll(_queryParams('', 'group', group));
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

  /// List all machines
  ///
  /// Returns a list of machines. The machines are returned sorted by creation date, with the most recent machines appearing first. Resources are automatically scoped to the authenticated bearer e.g. when authenticated as a user, only machines for that specific user will be listed. 
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
  /// * [String] fingerprint:
  ///   The machine fingerprint to filter by.
  ///
  /// * [String] ip:
  ///   The machine IP address to filter by.
  ///
  /// * [String] hostname:
  ///   The machine hostname to filter by.
  ///
  /// * [String] product:
  ///   The identifier (UUID) of the product to filter by.
  ///
  /// * [String] policy:
  ///   The identifier (UUID) of the policy to filter by.
  ///
  /// * [String] license:
  ///   The identifier (UUID) or key of the license to filter by.
  ///
  /// * [String] key:
  ///   The license key to filter by.
  ///
  /// * [String] user:
  ///   The identifier (UUID) of the user to filter by.
  ///
  /// * [String] group:
  ///   The identifier (UUID) of the group to filter by.
  ///
  /// * [Object] metadata:
  ///   The metadata object to filter by.
  Future<ListMachinesResponse?> listMachines(String account, { Object? page, int? limit, String? fingerprint, String? ip, String? hostname, String? product, String? policy, String? license, String? key, String? user, String? group, Object? metadata, }) async {
    final response = await listMachinesWithHttpInfo(account,  page: page, limit: limit, fingerprint: fingerprint, ip: ip, hostname: hostname, product: product, policy: policy, license: license, key: key, user: user, group: group, metadata: metadata, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListMachinesResponse',) as ListMachinesResponse;
    
    }
    return null;
  }

  /// Ping heartbeat
  ///
  /// Action to begin or maintain a machine heartbeat monitor. When a machine has not performed a heartbeat ping within the monitor window, it will automatically be deactivated. This can be utilized for machine leasing, where a license has a limited number of machines allowed, and each machine must maintain heartbeat pings in order to remain active.  To illustrate further, consider a rather common scenario when dealing with leasing VMs:  - The machine is activated for a new device using a unique VM GUID as a \"fingerprint.\" - The machine sends their first heartbeat ping, starting the monitor. - The machine sends further heartbeat pings, within the heartbeat monitor window, to indicate that it is still alive. - The machine/software crashes. Normal machine deactivation fails to occur before the software program exits. This is now a \"zombie\" machine. - The heartbeat monitor detects that the machine has not sent a ping within the window, and subsequently deactivates the machine.  **The default heartbeat monitor window is 10 minutes from time of last ping.** This can be configured via the license policy's `heartbeatDuration` attribute.  Machines will be culled according to the policy's heartbeat cull strategy, after the machine's resurrection period has passed, if set. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or URL-safe fingerprint of the machine to ping.
  Future<Response> pingMachineWithHttpInfo(String account, String machine,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/machines/{machine}/actions/ping'
      .replaceAll('{account}', account)
      .replaceAll('{machine}', machine);

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

  /// Ping heartbeat
  ///
  /// Action to begin or maintain a machine heartbeat monitor. When a machine has not performed a heartbeat ping within the monitor window, it will automatically be deactivated. This can be utilized for machine leasing, where a license has a limited number of machines allowed, and each machine must maintain heartbeat pings in order to remain active.  To illustrate further, consider a rather common scenario when dealing with leasing VMs:  - The machine is activated for a new device using a unique VM GUID as a \"fingerprint.\" - The machine sends their first heartbeat ping, starting the monitor. - The machine sends further heartbeat pings, within the heartbeat monitor window, to indicate that it is still alive. - The machine/software crashes. Normal machine deactivation fails to occur before the software program exits. This is now a \"zombie\" machine. - The heartbeat monitor detects that the machine has not sent a ping within the window, and subsequently deactivates the machine.  **The default heartbeat monitor window is 10 minutes from time of last ping.** This can be configured via the license policy's `heartbeatDuration` attribute.  Machines will be culled according to the policy's heartbeat cull strategy, after the machine's resurrection period has passed, if set. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or URL-safe fingerprint of the machine to ping.
  Future<PingMachineResponse?> pingMachine(String account, String machine,) async {
    final response = await pingMachineWithHttpInfo(account, machine,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PingMachineResponse',) as PingMachineResponse;
    
    }
    return null;
  }

  /// Reset heartbeat
  ///
  /// Action to reset and stop the machine's heartbeat monitor. This will not deactivate the machine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or URL-safe fingerprint of the machine to reset.
  Future<Response> resetMachineWithHttpInfo(String account, String machine,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/machines/{machine}/actions/reset'
      .replaceAll('{account}', account)
      .replaceAll('{machine}', machine);

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

  /// Reset heartbeat
  ///
  /// Action to reset and stop the machine's heartbeat monitor. This will not deactivate the machine.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or URL-safe fingerprint of the machine to reset.
  Future<ResetMachineResponse?> resetMachine(String account, String machine,) async {
    final response = await resetMachineWithHttpInfo(account, machine,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResetMachineResponse',) as ResetMachineResponse;
    
    }
    return null;
  }

  /// Retrieve a machine
  ///
  /// Retrieves the details of an existing machine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or URL-safe fingerprint of the machine to be retrieved.
  Future<Response> retrieveMachineWithHttpInfo(String account, String machine,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/machines/{machine}'
      .replaceAll('{account}', account)
      .replaceAll('{machine}', machine);

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

  /// Retrieve a machine
  ///
  /// Retrieves the details of an existing machine.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or URL-safe fingerprint of the machine to be retrieved.
  Future<RetrieveMachineResponse?> retrieveMachine(String account, String machine,) async {
    final response = await retrieveMachineWithHttpInfo(account, machine,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveMachineResponse',) as RetrieveMachineResponse;
    
    }
    return null;
  }

  /// Update a machine
  ///
  /// Updates the specified machine resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or URL-safe fingerprint of the machine to be updated.
  ///
  /// * [UpdateMachineRequest] updateMachineRequest:
  Future<Response> updateMachineWithHttpInfo(String account, String machine, { UpdateMachineRequest? updateMachineRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/machines/{machine}'
      .replaceAll('{account}', account)
      .replaceAll('{machine}', machine);

    // ignore: prefer_final_locals
    Object? postBody = updateMachineRequest;

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

  /// Update a machine
  ///
  /// Updates the specified machine resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] machine (required):
  ///   The identifier (UUID) or URL-safe fingerprint of the machine to be updated.
  ///
  /// * [UpdateMachineRequest] updateMachineRequest:
  Future<UpdateMachineResponse?> updateMachine(String account, String machine, { UpdateMachineRequest? updateMachineRequest, }) async {
    final response = await updateMachineWithHttpInfo(account, machine,  updateMachineRequest: updateMachineRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateMachineResponse',) as UpdateMachineResponse;
    
    }
    return null;
  }
}
