import 'package:bb/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'User Screen',
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () =>
                  context.router.navigate(const UserDetailsScreenRoute()),
              child: const Text(
                'User details',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () =>
                  context.router.navigate(const UserFriendsScreenRoute()),
              child: const Text(
                'friends List',
              ),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () => context.router.push(GroupScreenRoute(id: '1')),
              child: const Text(
                'Go to GROUP 1',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () => context.router.push(GroupScreenRoute(id: '2')),
              child: const Text(
                'Go to GROUP 2',
              ),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () =>
                  context.router.root.replaceAll([const LoginScreenRoute()]),
              child: const Text(
                'LOGOUT',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
