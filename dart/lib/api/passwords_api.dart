//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PasswordsApi {
  PasswordsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Forgot password
  ///
  /// Request a password reset for a user. When the user does not already have a password, they will be invited to set a password. This will send an email to the user, if it is a valid email address that exists in our system. The email will contain a link leading to a password reset form securely hosted by Keygen. To send a customized email, see below.  When the account is protected, and the user does not yet have a password set, they will not be able to set their initial password. Passwordless users are considered \"managed\" users, and depending on whether or not the account is protected, they may not have permission to set a password.  To work around this, you may do one of the following:  - Set a temporary password on the user. You can do this when creating the user, or you can do this after the   fact. Once a password has been set, the user is no longer considered \"managed\" and may reset their password   normally. - Set the account to unprotected. Though note what this entails — you may want to set all policies to protected   to ensure certain actions can't be taken by users, such as license creation.  In most cases, we recommend #1. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [ForgotPasswordRequest] forgotPasswordRequest (required):
  Future<Response> forgotPasswordWithHttpInfo(String account, ForgotPasswordRequest forgotPasswordRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/passwords'
      .replaceAll('{account}', account);

    // ignore: prefer_final_locals
    Object? postBody = forgotPasswordRequest;

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

  /// Forgot password
  ///
  /// Request a password reset for a user. When the user does not already have a password, they will be invited to set a password. This will send an email to the user, if it is a valid email address that exists in our system. The email will contain a link leading to a password reset form securely hosted by Keygen. To send a customized email, see below.  When the account is protected, and the user does not yet have a password set, they will not be able to set their initial password. Passwordless users are considered \"managed\" users, and depending on whether or not the account is protected, they may not have permission to set a password.  To work around this, you may do one of the following:  - Set a temporary password on the user. You can do this when creating the user, or you can do this after the   fact. Once a password has been set, the user is no longer considered \"managed\" and may reset their password   normally. - Set the account to unprotected. Though note what this entails — you may want to set all policies to protected   to ensure certain actions can't be taken by users, such as license creation.  In most cases, we recommend #1. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [ForgotPasswordRequest] forgotPasswordRequest (required):
  Future<void> forgotPassword(String account, ForgotPasswordRequest forgotPasswordRequest,) async {
    final response = await forgotPasswordWithHttpInfo(account, forgotPasswordRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
