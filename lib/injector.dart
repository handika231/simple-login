import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:simple_login/presentation/provider/login_notifier.dart';

import 'data/api_service.dart';

final locator = GetIt.instance;

initLocator() {
  locator.registerLazySingleton<ApiService>(() => ApiService(locator()));
  locator.registerLazySingleton<LoginNotifier>(() => LoginNotifier(locator()));
  locator.registerLazySingleton<Dio>(() => Dio());
}
