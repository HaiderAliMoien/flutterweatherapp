import 'package:dio/dio.dart';

class ApiException implements Exception {
  final String url;
  final String message;
  final int? statusCode;
  final Response? response;

  ApiException({
    required this.url,
    required this.message,
    this.response,
    this.statusCode,
  });

  /// IMPORTANT NOTE
  /// here you can take advantage of toString() method to display the error for user
  /// lets make an example
  /// so in onError method when you make api you can just use apiExceptionInstance.toString() to get the error message from api
  @override
  toString() {
    String result = '';

    try {
      // todo add error message field which is coming from api for you (For ex: response.data['error']['message']
      if (response?.data is Map) {
        result += response?.data?['error']?['message'] ?? response?.data?['error'] ?? '';
      } else {
        // If data is not a map, perhaps it's HTML or plain text
        result += response?.data?.toString() ?? '';
      }
    } catch (e) {
      // If any error in parsing, fall back to message
      result = message;
    }

    if (result.isEmpty) {
      result += message; // message is the (dio error message) so usualy its not user friendly
    }

    return result;
  }
}