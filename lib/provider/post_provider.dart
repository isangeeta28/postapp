import 'package:flutter/material.dart';

import '../services/api_services.dart';

class PostProvider with ChangeNotifier {
  ApiService _apiService = ApiService();
  List<dynamic> _posts = [];
  bool _loading = false;
  String? _error;

  List<dynamic> get posts => _posts;
  bool get loading => _loading;
  String? get error => _error;

  Future<void> fetchPosts() async {
    _loading = true;
    _error = null;
    notifyListeners();
    try {
      _posts = await _apiService.fetchPosts();
    } catch (e) {
      _error = e.toString();
    }
    _loading = false;
    notifyListeners();
  }
}
