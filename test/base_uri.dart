abstract class MockUriRequest {
  static Uri uri({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) =>
      Uri(
        path: path,
        port: 8080,
        scheme: 'http',
        host: 'localhost',
        queryParameters: queryParameters,
      );
}
