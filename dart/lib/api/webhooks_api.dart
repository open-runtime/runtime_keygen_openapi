//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WebhooksApi {
  WebhooksApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Process an event
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keygenSignature (required):
  ///   The signature of the event payload.
  ///
  /// * [WebhookEvent] webhookEvent:
  Future<Response> processEventWithHttpInfo(String keygenSignature, { WebhookEvent? webhookEvent, }) async {
    // ignore: prefer_const_declarations
    final path = r'/event';

    // ignore: prefer_final_locals
    Object? postBody = webhookEvent;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Keygen-Signature'] = parameterToString(keygenSignature);

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

  /// Process an event
  ///
  /// Parameters:
  ///
  /// * [String] keygenSignature (required):
  ///   The signature of the event payload.
  ///
  /// * [WebhookEvent] webhookEvent:
  Future<void> processEvent(String keygenSignature, { WebhookEvent? webhookEvent, }) async {
    final response = await processEventWithHttpInfo(keygenSignature,  webhookEvent: webhookEvent, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
