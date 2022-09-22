import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_login/data/api_service.dart';
import 'package:simple_login/injector.dart' as di;

import 'auth_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  group('Auth Request', () {
    setUp(() {
      di.initLocator();
    });
    test('return if Request Success', () {
      final data = {"email": "eve.holt@reqres.in", "password": "cityslicka"};
      final dio = MockDio();
      when(dio.post(
        'https://reqres.in/api/login',
        data: data,
      )).thenAnswer(
        (realInvocation) async => Response(
          data: data,
          statusCode: 404,
          requestOptions: RequestOptions(path: ''),
        ),
      );
      expect(
        di.locator<AuthService>().login(data['email']!, data['password']!),
        isA<Future>(),
      );
    });
  });
}
