//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.keygen.sh/v1', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'ActivateMachineRequest':
          return ActivateMachineRequest.fromJson(value);
        case 'ActivateMachineRequestData':
          return ActivateMachineRequestData.fromJson(value);
        case 'ActivateMachineRequestDataAttributes':
          return ActivateMachineRequestDataAttributes.fromJson(value);
        case 'ActivateMachineRequestDataRelationships':
          return ActivateMachineRequestDataRelationships.fromJson(value);
        case 'ActivateMachineRequestDataRelationshipsLicense':
          return ActivateMachineRequestDataRelationshipsLicense.fromJson(value);
        case 'ActivateMachineRequestDataRelationshipsLicenseData':
          return ActivateMachineRequestDataRelationshipsLicenseData.fromJson(value);
        case 'ActivateMachineResponse':
          return ActivateMachineResponse.fromJson(value);
        case 'AddSecondFactorRequest':
          return AddSecondFactorRequest.fromJson(value);
        case 'AddSecondFactorRequestMeta':
          return AddSecondFactorRequestMeta.fromJson(value);
        case 'AddSecondFactorResponse':
          return AddSecondFactorResponse.fromJson(value);
        case 'AttachLicenseEntitlementsRequest':
          return AttachLicenseEntitlementsRequest.fromJson(value);
        case 'AttachLicenseEntitlementsResponse':
          return AttachLicenseEntitlementsResponse.fromJson(value);
        case 'AttachPolicyEntitlementsRequest':
          return AttachPolicyEntitlementsRequest.fromJson(value);
        case 'AttachPolicyEntitlementsRequestDataInner':
          return AttachPolicyEntitlementsRequestDataInner.fromJson(value);
        case 'AttachPolicyEntitlementsResponse':
          return AttachPolicyEntitlementsResponse.fromJson(value);
        case 'BanUserResponse':
          return BanUserResponse.fromJson(value);
        case 'ChangeLicenseGroupRequest':
          return ChangeLicenseGroupRequest.fromJson(value);
        case 'ChangeLicenseGroupResponse':
          return ChangeLicenseGroupResponse.fromJson(value);
        case 'ChangeLicensePolicyRequest':
          return ChangeLicensePolicyRequest.fromJson(value);
        case 'ChangeLicensePolicyResponse':
          return ChangeLicensePolicyResponse.fromJson(value);
        case 'ChangeLicenseUserRequest':
          return ChangeLicenseUserRequest.fromJson(value);
        case 'ChangeLicenseUserResponse':
          return ChangeLicenseUserResponse.fromJson(value);
        case 'ChangeMachineGroupRequest':
          return ChangeMachineGroupRequest.fromJson(value);
        case 'ChangeMachineGroupResponse':
          return ChangeMachineGroupResponse.fromJson(value);
        case 'ChangeUserGroupRequest':
          return ChangeUserGroupRequest.fromJson(value);
        case 'ChangeUserGroupResponse':
          return ChangeUserGroupResponse.fromJson(value);
        case 'CheckInLicenseResponse':
          return CheckInLicenseResponse.fromJson(value);
        case 'CheckOutLicenseResponse':
          return CheckOutLicenseResponse.fromJson(value);
        case 'CheckOutMachineResponse':
          return CheckOutMachineResponse.fromJson(value);
        case 'CreateEntitlementRequest':
          return CreateEntitlementRequest.fromJson(value);
        case 'CreateEntitlementRequestData':
          return CreateEntitlementRequestData.fromJson(value);
        case 'CreateEntitlementRequestDataAttributes':
          return CreateEntitlementRequestDataAttributes.fromJson(value);
        case 'CreateEntitlementResponse':
          return CreateEntitlementResponse.fromJson(value);
        case 'CreateGroupRequest':
          return CreateGroupRequest.fromJson(value);
        case 'CreateGroupRequestData':
          return CreateGroupRequestData.fromJson(value);
        case 'CreateGroupRequestDataAttributes':
          return CreateGroupRequestDataAttributes.fromJson(value);
        case 'CreateGroupResponse':
          return CreateGroupResponse.fromJson(value);
        case 'CreateLicenseRequest':
          return CreateLicenseRequest.fromJson(value);
        case 'CreateLicenseRequestData':
          return CreateLicenseRequestData.fromJson(value);
        case 'CreateLicenseRequestDataAttributes':
          return CreateLicenseRequestDataAttributes.fromJson(value);
        case 'CreateLicenseRequestDataRelationships':
          return CreateLicenseRequestDataRelationships.fromJson(value);
        case 'CreateLicenseRequestDataRelationshipsGroup':
          return CreateLicenseRequestDataRelationshipsGroup.fromJson(value);
        case 'CreateLicenseRequestDataRelationshipsPolicy':
          return CreateLicenseRequestDataRelationshipsPolicy.fromJson(value);
        case 'CreateLicenseRequestDataRelationshipsPolicyData':
          return CreateLicenseRequestDataRelationshipsPolicyData.fromJson(value);
        case 'CreateLicenseRequestDataRelationshipsUser':
          return CreateLicenseRequestDataRelationshipsUser.fromJson(value);
        case 'CreateLicenseRequestDataRelationshipsUserData':
          return CreateLicenseRequestDataRelationshipsUserData.fromJson(value);
        case 'CreateLicenseResponse':
          return CreateLicenseResponse.fromJson(value);
        case 'CreateLicenseTokenRequest':
          return CreateLicenseTokenRequest.fromJson(value);
        case 'CreateLicenseTokenRequestData':
          return CreateLicenseTokenRequestData.fromJson(value);
        case 'CreateLicenseTokenRequestDataAttributes':
          return CreateLicenseTokenRequestDataAttributes.fromJson(value);
        case 'CreateLicenseTokenResponse':
          return CreateLicenseTokenResponse.fromJson(value);
        case 'CreatePolicyRequest':
          return CreatePolicyRequest.fromJson(value);
        case 'CreatePolicyRequestData':
          return CreatePolicyRequestData.fromJson(value);
        case 'CreatePolicyRequestDataAttributes':
          return CreatePolicyRequestDataAttributes.fromJson(value);
        case 'CreatePolicyRequestDataRelationships':
          return CreatePolicyRequestDataRelationships.fromJson(value);
        case 'CreatePolicyRequestDataRelationshipsProduct':
          return CreatePolicyRequestDataRelationshipsProduct.fromJson(value);
        case 'CreatePolicyRequestDataRelationshipsProductData':
          return CreatePolicyRequestDataRelationshipsProductData.fromJson(value);
        case 'CreatePolicyResponse':
          return CreatePolicyResponse.fromJson(value);
        case 'CreateProductRequest':
          return CreateProductRequest.fromJson(value);
        case 'CreateProductRequestData':
          return CreateProductRequestData.fromJson(value);
        case 'CreateProductRequestDataAttributes':
          return CreateProductRequestDataAttributes.fromJson(value);
        case 'CreateProductResponse':
          return CreateProductResponse.fromJson(value);
        case 'CreateUserRequest':
          return CreateUserRequest.fromJson(value);
        case 'CreateUserRequestData':
          return CreateUserRequestData.fromJson(value);
        case 'CreateUserRequestDataAttributes':
          return CreateUserRequestDataAttributes.fromJson(value);
        case 'CreateUserRequestDataRelationships':
          return CreateUserRequestDataRelationships.fromJson(value);
        case 'CreateUserRequestDataRelationshipsGroup':
          return CreateUserRequestDataRelationshipsGroup.fromJson(value);
        case 'CreateUserRequestDataRelationshipsGroupData':
          return CreateUserRequestDataRelationshipsGroupData.fromJson(value);
        case 'CreateUserResponse':
          return CreateUserResponse.fromJson(value);
        case 'DecrementLicenseUsageRequest':
          return DecrementLicenseUsageRequest.fromJson(value);
        case 'DecrementLicenseUsageRequestMeta':
          return DecrementLicenseUsageRequestMeta.fromJson(value);
        case 'DecrementLicenseUsageResponse':
          return DecrementLicenseUsageResponse.fromJson(value);
        case 'DetachLicenseEntitlementsRequest':
          return DetachLicenseEntitlementsRequest.fromJson(value);
        case 'DetachPolicyEntitlementsRequest':
          return DetachPolicyEntitlementsRequest.fromJson(value);
        case 'Entitlement':
          return Entitlement.fromJson(value);
        case 'EntitlementAttributes':
          return EntitlementAttributes.fromJson(value);
        case 'EntitlementRelationships':
          return EntitlementRelationships.fromJson(value);
        case 'EntitlementRelationshipsAccount':
          return EntitlementRelationshipsAccount.fromJson(value);
        case 'Error':
          return Error.fromJson(value);
        case 'ErrorSource':
          return ErrorSource.fromJson(value);
        case 'ForgotPasswordRequest':
          return ForgotPasswordRequest.fromJson(value);
        case 'ForgotPasswordRequestMeta':
          return ForgotPasswordRequestMeta.fromJson(value);
        case 'GenerateProductTokenRequest':
          return GenerateProductTokenRequest.fromJson(value);
        case 'GenerateProductTokenRequestData':
          return GenerateProductTokenRequestData.fromJson(value);
        case 'GenerateProductTokenRequestDataAttributes':
          return GenerateProductTokenRequestDataAttributes.fromJson(value);
        case 'GenerateProductTokenResponse':
          return GenerateProductTokenResponse.fromJson(value);
        case 'GenerateTokenRequest':
          return GenerateTokenRequest.fromJson(value);
        case 'GenerateTokenRequestData':
          return GenerateTokenRequestData.fromJson(value);
        case 'GenerateTokenRequestDataAttributes':
          return GenerateTokenRequestDataAttributes.fromJson(value);
        case 'GenerateTokenRequestDataAttributesMeta':
          return GenerateTokenRequestDataAttributesMeta.fromJson(value);
        case 'GenerateTokenResponse':
          return GenerateTokenResponse.fromJson(value);
        case 'GenerateUserTokenRequest':
          return GenerateUserTokenRequest.fromJson(value);
        case 'GenerateUserTokenResponse':
          return GenerateUserTokenResponse.fromJson(value);
        case 'Group':
          return Group.fromJson(value);
        case 'GroupAttributes':
          return GroupAttributes.fromJson(value);
        case 'GroupRelationships':
          return GroupRelationships.fromJson(value);
        case 'GroupRelationshipsAccount':
          return GroupRelationshipsAccount.fromJson(value);
        case 'GroupRelationshipsLicenses':
          return GroupRelationshipsLicenses.fromJson(value);
        case 'GroupRelationshipsMachines':
          return GroupRelationshipsMachines.fromJson(value);
        case 'GroupRelationshipsOwners':
          return GroupRelationshipsOwners.fromJson(value);
        case 'GroupRelationshipsUsers':
          return GroupRelationshipsUsers.fromJson(value);
        case 'IncrementLicenseUsageRequest':
          return IncrementLicenseUsageRequest.fromJson(value);
        case 'IncrementLicenseUsageRequestMeta':
          return IncrementLicenseUsageRequestMeta.fromJson(value);
        case 'IncrementLicenseUsageResponse':
          return IncrementLicenseUsageResponse.fromJson(value);
        case 'KillProcessResponse':
          return KillProcessResponse.fromJson(value);
        case 'License':
          return License.fromJson(value);
        case 'LicenseAttributes':
          return LicenseAttributes.fromJson(value);
        case 'LicenseEntitlement':
          return LicenseEntitlement.fromJson(value);
        case 'LicenseEntitlementRelationships':
          return LicenseEntitlementRelationships.fromJson(value);
        case 'LicenseEntitlementRelationshipsLicense':
          return LicenseEntitlementRelationshipsLicense.fromJson(value);
        case 'LicenseFile':
          return LicenseFile.fromJson(value);
        case 'LicenseFileAttributes':
          return LicenseFileAttributes.fromJson(value);
        case 'LicenseFileRelationships':
          return LicenseFileRelationships.fromJson(value);
        case 'LicenseRelationships':
          return LicenseRelationships.fromJson(value);
        case 'LicenseRelationshipsAccount':
          return LicenseRelationshipsAccount.fromJson(value);
        case 'LicenseRelationshipsGroup':
          return LicenseRelationshipsGroup.fromJson(value);
        case 'LicenseRelationshipsMachines':
          return LicenseRelationshipsMachines.fromJson(value);
        case 'LicenseRelationshipsPolicy':
          return LicenseRelationshipsPolicy.fromJson(value);
        case 'LicenseRelationshipsProduct':
          return LicenseRelationshipsProduct.fromJson(value);
        case 'LicenseRelationshipsUser':
          return LicenseRelationshipsUser.fromJson(value);
        case 'ListEntitlementsResponse':
          return ListEntitlementsResponse.fromJson(value);
        case 'ListGroupsResponse':
          return ListGroupsResponse.fromJson(value);
        case 'ListLicenseEntitlementsResponse':
          return ListLicenseEntitlementsResponse.fromJson(value);
        case 'ListLicensesExpiresParameter':
          return ListLicensesExpiresParameter.fromJson(value);
        case 'ListLicensesResponse':
          return ListLicensesResponse.fromJson(value);
        case 'ListMachinesResponse':
          return ListMachinesResponse.fromJson(value);
        case 'ListPoliciesResponse':
          return ListPoliciesResponse.fromJson(value);
        case 'ListPolicyEntitlementsResponse':
          return ListPolicyEntitlementsResponse.fromJson(value);
        case 'ListProcessesResponse':
          return ListProcessesResponse.fromJson(value);
        case 'ListProductsResponse':
          return ListProductsResponse.fromJson(value);
        case 'ListSecondFactorsResponse':
          return ListSecondFactorsResponse.fromJson(value);
        case 'ListTokensBearerParameter':
          return ListTokensBearerParameter.fromJson(value);
        case 'ListTokensResponse':
          return ListTokensResponse.fromJson(value);
        case 'ListUsersResponse':
          return ListUsersResponse.fromJson(value);
        case 'Machine':
          return Machine.fromJson(value);
        case 'MachineAttributes':
          return MachineAttributes.fromJson(value);
        case 'MachineFile':
          return MachineFile.fromJson(value);
        case 'MachineFileRelationships':
          return MachineFileRelationships.fromJson(value);
        case 'MachineFileRelationshipsMachine':
          return MachineFileRelationshipsMachine.fromJson(value);
        case 'MachineRelationships':
          return MachineRelationships.fromJson(value);
        case 'MachineRelationshipsAccount':
          return MachineRelationshipsAccount.fromJson(value);
        case 'MachineRelationshipsGroup':
          return MachineRelationshipsGroup.fromJson(value);
        case 'MachineRelationshipsLicense':
          return MachineRelationshipsLicense.fromJson(value);
        case 'MachineRelationshipsProcesses':
          return MachineRelationshipsProcesses.fromJson(value);
        case 'MachineRelationshipsProduct':
          return MachineRelationshipsProduct.fromJson(value);
        case 'MachineRelationshipsUser':
          return MachineRelationshipsUser.fromJson(value);
        case 'PaginationLinks':
          return PaginationLinks.fromJson(value);
        case 'PaginationLinksMeta':
          return PaginationLinksMeta.fromJson(value);
        case 'PingMachineResponse':
          return PingMachineResponse.fromJson(value);
        case 'PingProcessResponse':
          return PingProcessResponse.fromJson(value);
        case 'Policy':
          return Policy.fromJson(value);
        case 'PolicyAttributes':
          return PolicyAttributes.fromJson(value);
        case 'PolicyEntitlement':
          return PolicyEntitlement.fromJson(value);
        case 'PolicyEntitlementAttributes':
          return PolicyEntitlementAttributes.fromJson(value);
        case 'PolicyEntitlementRelationships':
          return PolicyEntitlementRelationships.fromJson(value);
        case 'PolicyEntitlementRelationshipsAccount':
          return PolicyEntitlementRelationshipsAccount.fromJson(value);
        case 'PolicyEntitlementRelationshipsEntitlement':
          return PolicyEntitlementRelationshipsEntitlement.fromJson(value);
        case 'PolicyEntitlementRelationshipsPolicy':
          return PolicyEntitlementRelationshipsPolicy.fromJson(value);
        case 'PolicyRelationships':
          return PolicyRelationships.fromJson(value);
        case 'PolicyRelationshipsAccount':
          return PolicyRelationshipsAccount.fromJson(value);
        case 'PolicyRelationshipsEntitlements':
          return PolicyRelationshipsEntitlements.fromJson(value);
        case 'PolicyRelationshipsLicenses':
          return PolicyRelationshipsLicenses.fromJson(value);
        case 'PolicyRelationshipsPool':
          return PolicyRelationshipsPool.fromJson(value);
        case 'PolicyRelationshipsProduct':
          return PolicyRelationshipsProduct.fromJson(value);
        case 'Process':
          return Process.fromJson(value);
        case 'ProcessAttributes':
          return ProcessAttributes.fromJson(value);
        case 'ProcessRelationships':
          return ProcessRelationships.fromJson(value);
        case 'ProcessRelationshipsAccount':
          return ProcessRelationshipsAccount.fromJson(value);
        case 'ProcessRelationshipsLicense':
          return ProcessRelationshipsLicense.fromJson(value);
        case 'ProcessRelationshipsMachine':
          return ProcessRelationshipsMachine.fromJson(value);
        case 'ProcessRelationshipsProduct':
          return ProcessRelationshipsProduct.fromJson(value);
        case 'Product':
          return Product.fromJson(value);
        case 'ProductAttributes':
          return ProductAttributes.fromJson(value);
        case 'ProductRelationships':
          return ProductRelationships.fromJson(value);
        case 'ProductRelationshipsAccount':
          return ProductRelationshipsAccount.fromJson(value);
        case 'ProductRelationshipsLicenses':
          return ProductRelationshipsLicenses.fromJson(value);
        case 'ProductRelationshipsMachines':
          return ProductRelationshipsMachines.fromJson(value);
        case 'ProductRelationshipsPolicies':
          return ProductRelationshipsPolicies.fromJson(value);
        case 'ProductRelationshipsTokens':
          return ProductRelationshipsTokens.fromJson(value);
        case 'ProductRelationshipsUsers':
          return ProductRelationshipsUsers.fromJson(value);
        case 'RegenerateTokenResponse':
          return RegenerateTokenResponse.fromJson(value);
        case 'ReinstateLicenseResponse':
          return ReinstateLicenseResponse.fromJson(value);
        case 'RelatedLinks':
          return RelatedLinks.fromJson(value);
        case 'RenewLicenseResponse':
          return RenewLicenseResponse.fromJson(value);
        case 'ResetLicenseUsageResponse':
          return ResetLicenseUsageResponse.fromJson(value);
        case 'ResetMachineResponse':
          return ResetMachineResponse.fromJson(value);
        case 'ResetUserPasswordRequest':
          return ResetUserPasswordRequest.fromJson(value);
        case 'ResetUserPasswordRequestMeta':
          return ResetUserPasswordRequestMeta.fromJson(value);
        case 'ResetUserPasswordResponse':
          return ResetUserPasswordResponse.fromJson(value);
        case 'RetrieveEntitlementResponse':
          return RetrieveEntitlementResponse.fromJson(value);
        case 'RetrieveGroupResponse':
          return RetrieveGroupResponse.fromJson(value);
        case 'RetrieveLicenseResponse':
          return RetrieveLicenseResponse.fromJson(value);
        case 'RetrieveMachineResponse':
          return RetrieveMachineResponse.fromJson(value);
        case 'RetrievePolicyResponse':
          return RetrievePolicyResponse.fromJson(value);
        case 'RetrieveProcessResponse':
          return RetrieveProcessResponse.fromJson(value);
        case 'RetrieveProductResponse':
          return RetrieveProductResponse.fromJson(value);
        // BEGIN MANUALLY MODIFIED AFTER OPENAPI-GENERATOR RAN
        case 'RetrieveProfileResponse':
          return RetrieveProfileResponse.fromJson(value);
        // END MANUALLY MODIFIED AFTER OPENAPI-GENERATOR RAN
        case 'RetrieveSecondFactorResponse':
          return RetrieveSecondFactorResponse.fromJson(value);
        case 'RetrieveTokenResponse':
          return RetrieveTokenResponse.fromJson(value);
        case 'RetrieveUserResponse':
          return RetrieveUserResponse.fromJson(value);
        case 'SecondFactor':
          return SecondFactor.fromJson(value);
        case 'SecondFactorAttributes':
          return SecondFactorAttributes.fromJson(value);
        case 'SecondFactorRelationships':
          return SecondFactorRelationships.fromJson(value);
        case 'SecondFactorRelationshipsAccount':
          return SecondFactorRelationshipsAccount.fromJson(value);
        case 'SecondFactorRelationshipsUser':
          return SecondFactorRelationshipsUser.fromJson(value);
        case 'SelfLinks':
          return SelfLinks.fromJson(value);
        case 'SpawnProcessRequest':
          return SpawnProcessRequest.fromJson(value);
        case 'SpawnProcessRequestData':
          return SpawnProcessRequestData.fromJson(value);
        case 'SpawnProcessRequestDataAttributes':
          return SpawnProcessRequestDataAttributes.fromJson(value);
        case 'SpawnProcessRequestDataRelationships':
          return SpawnProcessRequestDataRelationships.fromJson(value);
        case 'SpawnProcessRequestDataRelationshipsMachine':
          return SpawnProcessRequestDataRelationshipsMachine.fromJson(value);
        case 'SpawnProcessRequestDataRelationshipsMachineData':
          return SpawnProcessRequestDataRelationshipsMachineData.fromJson(value);
        case 'SpawnProcessResponse':
          return SpawnProcessResponse.fromJson(value);
        case 'SuspendLicenseResponse':
          return SuspendLicenseResponse.fromJson(value);
        case 'Token':
          return Token.fromJson(value);
        case 'TokenAttributes':
          return TokenAttributes.fromJson(value);
        case 'TokenRelationships':
          return TokenRelationships.fromJson(value);
        case 'TokenRelationshipsAccount':
          return TokenRelationshipsAccount.fromJson(value);
        case 'TokenRelationshipsAccountData':
          return TokenRelationshipsAccountData.fromJson(value);
        case 'TokenRelationshipsBearer':
          return TokenRelationshipsBearer.fromJson(value);
        case 'TokenRelationshipsBearerData':
          return TokenRelationshipsBearerData.fromJson(value);
        case 'UnbanUserResponse':
          return UnbanUserResponse.fromJson(value);
        case 'UpdateEntitlementRequest':
          return UpdateEntitlementRequest.fromJson(value);
        case 'UpdateEntitlementRequestData':
          return UpdateEntitlementRequestData.fromJson(value);
        case 'UpdateEntitlementRequestDataAttributes':
          return UpdateEntitlementRequestDataAttributes.fromJson(value);
        case 'UpdateEntitlementResponse':
          return UpdateEntitlementResponse.fromJson(value);
        case 'UpdateGroupRequest':
          return UpdateGroupRequest.fromJson(value);
        case 'UpdateGroupRequestData':
          return UpdateGroupRequestData.fromJson(value);
        case 'UpdateGroupRequestDataAttributes':
          return UpdateGroupRequestDataAttributes.fromJson(value);
        case 'UpdateGroupResponse':
          return UpdateGroupResponse.fromJson(value);
        case 'UpdateLicenseRequest':
          return UpdateLicenseRequest.fromJson(value);
        case 'UpdateLicenseRequestData':
          return UpdateLicenseRequestData.fromJson(value);
        case 'UpdateLicenseRequestDataAttributes':
          return UpdateLicenseRequestDataAttributes.fromJson(value);
        case 'UpdateLicenseResponse':
          return UpdateLicenseResponse.fromJson(value);
        case 'UpdateMachineRequest':
          return UpdateMachineRequest.fromJson(value);
        case 'UpdateMachineRequestData':
          return UpdateMachineRequestData.fromJson(value);
        case 'UpdateMachineRequestDataAttributes':
          return UpdateMachineRequestDataAttributes.fromJson(value);
        case 'UpdateMachineResponse':
          return UpdateMachineResponse.fromJson(value);
        case 'UpdatePolicyRequest':
          return UpdatePolicyRequest.fromJson(value);
        case 'UpdatePolicyRequestData':
          return UpdatePolicyRequestData.fromJson(value);
        case 'UpdatePolicyRequestDataAttributes':
          return UpdatePolicyRequestDataAttributes.fromJson(value);
        case 'UpdatePolicyResponse':
          return UpdatePolicyResponse.fromJson(value);
        case 'UpdateProcessRequest':
          return UpdateProcessRequest.fromJson(value);
        case 'UpdateProcessRequestData':
          return UpdateProcessRequestData.fromJson(value);
        case 'UpdateProcessRequestDataAttributes':
          return UpdateProcessRequestDataAttributes.fromJson(value);
        case 'UpdateProcessResponse':
          return UpdateProcessResponse.fromJson(value);
        case 'UpdateProductRequest':
          return UpdateProductRequest.fromJson(value);
        case 'UpdateProductRequestData':
          return UpdateProductRequestData.fromJson(value);
        case 'UpdateProductRequestDataAttributes':
          return UpdateProductRequestDataAttributes.fromJson(value);
        case 'UpdateProductResponse':
          return UpdateProductResponse.fromJson(value);
        case 'UpdateSecondFactorRequest':
          return UpdateSecondFactorRequest.fromJson(value);
        case 'UpdateSecondFactorRequestData':
          return UpdateSecondFactorRequestData.fromJson(value);
        case 'UpdateSecondFactorRequestDataAttributes':
          return UpdateSecondFactorRequestDataAttributes.fromJson(value);
        case 'UpdateSecondFactorRequestMeta':
          return UpdateSecondFactorRequestMeta.fromJson(value);
        case 'UpdateSecondFactorResponse':
          return UpdateSecondFactorResponse.fromJson(value);
        case 'UpdateUserPasswordRequest':
          return UpdateUserPasswordRequest.fromJson(value);
        case 'UpdateUserPasswordRequestMeta':
          return UpdateUserPasswordRequestMeta.fromJson(value);
        case 'UpdateUserPasswordResponse':
          return UpdateUserPasswordResponse.fromJson(value);
        case 'UpdateUserRequest':
          return UpdateUserRequest.fromJson(value);
        case 'UpdateUserRequestData':
          return UpdateUserRequestData.fromJson(value);
        case 'UpdateUserRequestDataAttributes':
          return UpdateUserRequestDataAttributes.fromJson(value);
        case 'UpdateUserResponse':
          return UpdateUserResponse.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'UserAttributes':
          return UserAttributes.fromJson(value);
        case 'UserRelationships':
          return UserRelationships.fromJson(value);
        case 'UserRelationshipsAccount':
          return UserRelationshipsAccount.fromJson(value);
        case 'UserRelationshipsGroup':
          return UserRelationshipsGroup.fromJson(value);
        case 'UserRelationshipsLicenses':
          return UserRelationshipsLicenses.fromJson(value);
        case 'UserRelationshipsMachines':
          return UserRelationshipsMachines.fromJson(value);
        case 'UserRelationshipsProducts':
          return UserRelationshipsProducts.fromJson(value);
        case 'UserRelationshipsTokens':
          return UserRelationshipsTokens.fromJson(value);
        case 'ValidateLicenseKeyRequest':
          return ValidateLicenseKeyRequest.fromJson(value);
        case 'ValidateLicenseKeyRequestMeta':
          return ValidateLicenseKeyRequestMeta.fromJson(value);
        case 'ValidateLicenseKeyResponse':
          return ValidateLicenseKeyResponse.fromJson(value);
        case 'ValidateLicenseRequest':
          return ValidateLicenseRequest.fromJson(value);
        case 'ValidateLicenseRequestMeta':
          return ValidateLicenseRequestMeta.fromJson(value);
        case 'ValidateLicenseRequestMetaScope':
          return ValidateLicenseRequestMetaScope.fromJson(value);
        case 'ValidateLicenseResponse':
          return ValidateLicenseResponse.fromJson(value);
        case 'ValidateLicenseResponseMeta':
          return ValidateLicenseResponseMeta.fromJson(value);
        case 'ValidateLicenseResponseMetaScope':
          return ValidateLicenseResponseMetaScope.fromJson(value);
        case 'WebhookEvent':
          return WebhookEvent.fromJson(value);
        case 'WebhookEventAttributes':
          return WebhookEventAttributes.fromJson(value);
        case 'WebhookEventRelationships':
          return WebhookEventRelationships.fromJson(value);
        case 'WebhookEventRelationshipsAccount':
          return WebhookEventRelationshipsAccount.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
