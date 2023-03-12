import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../routes.gr.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'User Details Screen',
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () =>
                  context.router.navigate(const UserProfileScreenRoute()),
              child: const Text(
                'Back to user',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
