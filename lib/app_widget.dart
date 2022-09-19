import 'package:flutter/material.dart';
import 'package:simple_login/presentation/page/home_view.dart';

import 'presentation/routes/navigation.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Login',
      navigatorKey: navigatorKey,
      routes: routes,
      initialRoute: HomeView.routeName,
    );
  }
}
