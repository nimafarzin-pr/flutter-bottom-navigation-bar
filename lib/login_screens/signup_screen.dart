import 'package:bb/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Signup Screen',
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () =>
                  context.router.navigate(const LoginScreenRoute()),
              child: const Text(
                'Go to LoginScreen',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () => context.router.replace(const UserScreenRoute()),
              child: const Text(
                'Signup (UserScreen)',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
