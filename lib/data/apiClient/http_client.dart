import 'dart:convert';
import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseUrl = 'https://api-base-url.com';

  //   Helper method to make a GET request
  static Future<Map<String, dynamic>> get(String endPoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endPoint'));
    return _handleResponse(response);
  }

  // Helper method to make POST request
  static Future<Map<String, dynamic>> post(String endPoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endPoint'),
      headers: {'Content-Type':'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  // Helper method to make PUT request
  static Future<Map<String, dynamic>> put(String endPoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endPoint'),
      headers: {'Content-Type':'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }
  // Helper method to make DELETE request
  static Future<Map<String, dynamic>> delete(String endPoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endPoint'),);
    return _handleResponse(response);
  }

  // Helper the HTTP response
  static Map<String, dynamic> _handleResponse (http.Response response)  {
    if (response.statusCode == 200){
      return json.decode(response.body);
    }else{
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }



}