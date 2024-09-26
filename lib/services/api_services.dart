import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String _baseUrl = "https://jsonplaceholder.typicode.com";

  Future<List<dynamic>> fetchPosts() async {
    try {
      final response = await http.get(Uri.parse("$_baseUrl/posts"));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception("Failed to load posts");
      }
    } catch (error) {
      throw Exception("Failed to fetch data: $error");
    }
  }
}
