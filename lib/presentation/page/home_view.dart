import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatelessWidget {
  static const String routeName = '/home';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieBuilder.network(
              'https://assets1.lottiefiles.com/packages/lf20_h6ykqbyg.json',
              width: double.infinity,
              height: 300,
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
            Text(
              'Your Token is : $data',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
