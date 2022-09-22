import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static const String routeName = '/home';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: Center(
        child: Text('$data'),
      ),
    );
  }
}
