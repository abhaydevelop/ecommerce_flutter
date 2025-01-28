import 'dart:convert';
import 'package:http/http.dart' as http;

class THttpHelper {

  static const String _baseUrl = '';

  /*GET*/
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  /*POST*/
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data), // Corrected this line
    );
    return _handleResponse(response);
  }


  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body); // Corrected this line
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}