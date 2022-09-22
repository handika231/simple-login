import 'package:dio/dio.dart';

class AuthService {
  Dio dio;
  AuthService(this.dio);

  Future login(String email, String password) async {
    final response = await dio.post(
      'https://reqres.in/api/login',
      data: {"email": email, "password": password},
    );
    return response.data;
  }
}
