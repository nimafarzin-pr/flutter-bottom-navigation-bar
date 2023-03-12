import 'package:bb/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class UserFriendsScreen extends StatelessWidget {
  const UserFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Friends"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'User Friends Screen',
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
