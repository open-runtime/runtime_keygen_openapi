//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProductsApi {
  ProductsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a product
  ///
  /// Creates a new product resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [CreateProductRequest] createProductRequest (required):
  Future<Response> createProductWithHttpInfo(String account, CreateProductRequest createProductRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/products'
      .replaceAll('{account}', account);

    // ignore: prefer_final_locals
    Object? postBody = createProductRequest;

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

  /// Create a product
  ///
  /// Creates a new product resource.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [CreateProductRequest] createProductRequest (required):
  Future<CreateProductResponse?> createProduct(String account, CreateProductRequest createProductRequest,) async {
    final response = await createProductWithHttpInfo(account, createProductRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateProductResponse',) as CreateProductResponse;
    
    }
    return null;
  }

  /// Delete a product
  ///
  /// Permanently deletes a product. It cannot be undone. This action also immediately deletes any policies, licenses and machines that the product is associated with. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] product (required):
  ///   The identifier (UUID) of the product to be deleted.
  Future<Response> deleteProductWithHttpInfo(String account, String product,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/products/{product}'
      .replaceAll('{account}', account)
      .replaceAll('{product}', product);

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

  /// Delete a product
  ///
  /// Permanently deletes a product. It cannot be undone. This action also immediately deletes any policies, licenses and machines that the product is associated with. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] product (required):
  ///   The identifier (UUID) of the product to be deleted.
  Future<void> deleteProduct(String account, String product,) async {
    final response = await deleteProductWithHttpInfo(account, product,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Generate a product token
  ///
  /// Generates a new product token resource. Product tokens do not expire.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] product (required):
  ///   The identifier (UUID) of the product to generate a token for.
  ///
  /// * [GenerateProductTokenRequest] generateProductTokenRequest:
  Future<Response> generateProductTokenWithHttpInfo(String account, String product, { GenerateProductTokenRequest? generateProductTokenRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/products/{product}/tokens'
      .replaceAll('{account}', account)
      .replaceAll('{product}', product);

    // ignore: prefer_final_locals
    Object? postBody = generateProductTokenRequest;

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

  /// Generate a product token
  ///
  /// Generates a new product token resource. Product tokens do not expire.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] product (required):
  ///   The identifier (UUID) of the product to generate a token for.
  ///
  /// * [GenerateProductTokenRequest] generateProductTokenRequest:
  Future<GenerateProductTokenResponse?> generateProductToken(String account, String product, { GenerateProductTokenRequest? generateProductTokenRequest, }) async {
    final response = await generateProductTokenWithHttpInfo(account, product,  generateProductTokenRequest: generateProductTokenRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateProductTokenResponse',) as GenerateProductTokenResponse;
    
    }
    return null;
  }

  /// List all products
  ///
  /// Returns a list of products. The products are returned sorted by creation date, with the most recent products appearing first. 
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
  Future<Response> listProductsWithHttpInfo(String account, { Object? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/products'
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

  /// List all products
  ///
  /// Returns a list of products. The products are returned sorted by creation date, with the most recent products appearing first. 
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
  Future<ListProductsResponse?> listProducts(String account, { Object? page, int? limit, }) async {
    final response = await listProductsWithHttpInfo(account,  page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListProductsResponse',) as ListProductsResponse;
    
    }
    return null;
  }

  /// Retrieve a product
  ///
  /// Retrieves the details of an existing product.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] product (required):
  ///   The identifier (UUID) of the product to be retrieved.
  Future<Response> retrieveProductWithHttpInfo(String account, String product,) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/products/{product}'
      .replaceAll('{account}', account)
      .replaceAll('{product}', product);

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

  /// Retrieve a product
  ///
  /// Retrieves the details of an existing product.
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] product (required):
  ///   The identifier (UUID) of the product to be retrieved.
  Future<RetrieveProductResponse?> retrieveProduct(String account, String product,) async {
    final response = await retrieveProductWithHttpInfo(account, product,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveProductResponse',) as RetrieveProductResponse;
    
    }
    return null;
  }

  /// Update a product
  ///
  /// Updates the specified product resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] product (required):
  ///   The identifier (UUID) of the product to be updated.
  ///
  /// * [UpdateProductRequest] updateProductRequest:
  Future<Response> updateProductWithHttpInfo(String account, String product, { UpdateProductRequest? updateProductRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/accounts/{account}/products/{product}'
      .replaceAll('{account}', account)
      .replaceAll('{product}', product);

    // ignore: prefer_final_locals
    Object? postBody = updateProductRequest;

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

  /// Update a product
  ///
  /// Updates the specified product resource by setting the values of the parameters passed. Any parameters not provided will be left unchanged. 
  ///
  /// Parameters:
  ///
  /// * [String] account (required):
  ///   The identifier (UUID) or slug of your Keygen account.
  ///
  /// * [String] product (required):
  ///   The identifier (UUID) of the product to be updated.
  ///
  /// * [UpdateProductRequest] updateProductRequest:
  Future<UpdateProductResponse?> updateProduct(String account, String product, { UpdateProductRequest? updateProductRequest, }) async {
    final response = await updateProductWithHttpInfo(account, product,  updateProductRequest: updateProductRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateProductResponse',) as UpdateProductResponse;
    
    }
    return null;
  }
}
