import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_login/presentation/page/login_view.dart';
import 'package:simple_login/presentation/provider/login_notifier.dart';

import 'injector.dart' as di;
import 'presentation/routes/navigation.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => di.locator<LoginNotifier>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Simple Login',
        navigatorKey: navigatorKey,
        routes: routes,
        initialRoute: LoginView.routeName,
      ),
    );
  }
}
