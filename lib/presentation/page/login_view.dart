import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../provider/login_notifier.dart';

class LoginView extends StatelessWidget {
  static const String routeName = '/login';
  const LoginView({super.key});

//
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LoginNotifier>(context, listen: false);
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Lottie.network(
                'https://assets5.lottiefiles.com/packages/lf20_mjlh3hcy.json',
                width: double.infinity,
                height: 200,
                frameBuilder: (context, child, composition) {
                  if (composition == null) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return child;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              const Center(
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (value) =>
                      value!.isEmpty ? 'Email is required' : null,
                  controller: provider.emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Consumer<LoginNotifier>(
                  builder: (context, value, child) {
                    return TextFormField(
                      obscureText: provider.isPasswordVisible,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      validator: (value) =>
                          value!.isEmpty ? 'Password is required' : null,
                      controller: provider.passwordController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            value.togglePasswordVisibility();
                          },
                          icon: Icon(
                            value.isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(220, 50),
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onPressed: () async {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
