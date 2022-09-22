import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:simple_login/presentation/page/home_view.dart';

import '../provider/login_notifier.dart';

class LoginView extends StatelessWidget {
  static const String routeName = '/login';
  const LoginView({super.key});
  Future _login() async {
    Dio dio = Dio();
    final response = await dio.post('https://reqres.in/api/login',
        data: {"email": "eve.holt@reqres.in", "password": "cityslicka"});
    return response.data;
  }

//
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LoginNotifier>(context);
    return Scaffold(
      body: Form(
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
            ElevatedButton(
              child: const Text('Login'),
              onPressed: () async {
                _login().then((value) {
                  debugPrint(value['token']);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeView(),
                    ),
                  );
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
