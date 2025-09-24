import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavScaffold extends StatelessWidget {
  final Widget child;

  const BottomNavScaffold({super.key, required this.child});

  int _index(BuildContext context) {
    final currentUri = GoRouterState.of(context).uri.toString();
    switch (currentUri) {
      case '/home':
        return 0;
      case '/group':
        return 1;
      case '/notification':
        return 2;
      case '/profile':
        return 3;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = _index(context);

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (i) {
          switch (i) {
            case 0:
              context.goNamed('home');
              break;
            case 1:
              context.goNamed('group');
              break;
            case 2:
              context.goNamed('notification');
              break;
            case 3:
              context.goNamed('profile');
              break;
          }
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.group), label: 'Group'),
          NavigationDestination(
            icon: Icon(Icons.notifications_active),
            label: 'Notifications',
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
