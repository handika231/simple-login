import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/api_service.dart';
import 'presentation/provider/login_notifier.dart';

final locator = GetIt.instance;

initLocator() {
  locator.registerLazySingleton<Dio>(() => Dio());
  locator.registerLazySingleton<AuthService>(
    () => AuthService(
      locator(),
    ),
  );
  locator.registerLazySingleton<LoginNotifier>(
    () => LoginNotifier(
      apiService: locator(),
    ),
  );
}
