import 'package:bb/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Login Screen',
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () =>
                  context.router.navigate(const SignupScreenRoute()),
              child: const Text(
                'Go to SignupScreen',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () => context.router.replace(const UserScreenRoute()),
              child: const Text(
                'Login (UserScreen)',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
