import 'package:flutter/material.dart';
import 'package:simple_login/data/api_service.dart';

class LoginNotifier extends ChangeNotifier {
  ApiService apiService;
  LoginNotifier(this.apiService);
  String message = '';
  Future getData() async {
    final data = await apiService.signIn();
    message = data['data']['email'];
    notifyListeners();
    return message;
  }
}
