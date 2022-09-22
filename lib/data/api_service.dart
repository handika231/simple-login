import 'package:dio/dio.dart';

class ApiService {
  Dio client;
  ApiService(this.client);
  Future signIn() async {
    final response = await client.get('https://reqres.in/api/users/2');
    return response.data;
  }
}
