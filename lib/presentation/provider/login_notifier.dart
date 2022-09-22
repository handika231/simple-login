import 'package:flutter/material.dart';
import 'package:simple_login/data/api_service.dart';
import 'package:simple_login/presentation/routes/navigation.dart';

import '../page/home_view.dart';

class LoginNotifier extends ChangeNotifier {
  ApiService apiService;
  //key form
  final formKey = GlobalKey<FormState>();
  LoginNotifier({required this.apiService});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = true;
  bool isLogin = false;
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  Future signIn() async {
    try {
      isLogin = true;
      notifyListeners();
      final response =
          await apiService.login(emailController.text, passwordController.text);
      if (response['token'] != null) {
        Navigation.pushWithData(HomeView.routeName, response['token']);
        notifyListeners();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
