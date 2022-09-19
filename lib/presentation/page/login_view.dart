import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginView extends StatelessWidget {
  static const String routeName = '/login';
  const LoginView({super.key});
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Lottie.network(
              'https://assets5.lottiefiles.com/packages/lf20_mjlh3hcy.json',
              width: double.infinity,
              height: 200,
            ),
            const TextField(),
          ],
        ),
      ),
    );
  }
}
