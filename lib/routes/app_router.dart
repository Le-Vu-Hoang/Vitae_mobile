import 'package:go_router/go_router.dart';

import 'package:vitae_mobile/presentation/pages/group.dart';
import 'package:vitae_mobile/presentation/pages/home_screen.dart';
import 'package:vitae_mobile/presentation/pages/login_screen.dart';
import 'package:vitae_mobile/presentation/pages/notification.dart';
import 'package:vitae_mobile/presentation/pages/profile_screen.dart';
import 'package:vitae_mobile/presentation/pages/register_screen.dart';
import 'package:vitae_mobile/presentation/pages/splash_screen.dart';
import 'package:vitae_mobile/presentation/widgets/bottom_nav_scaffold.dart';
import 'package:vitae_mobile/presentation/widgets/transition_helper.dart';

class AppRouter {
  static final routes = GoRouter(
    initialLocation: "/splash",
    routes: [
      ShellRoute(
        pageBuilder: (context, state, child) =>
            appTransitionPage(BottomNavScaffold(child: child)),
        routes: [
          GoRoute(
            path: "/home",
            name: "home",
            pageBuilder: (context, state) =>
                appTransitionPage(const HomeScreen()),
          ),
          GoRoute(
            path: "/group",
            name: "group",
            pageBuilder: (context, state) =>
                appTransitionPage(const GroupPage()),
          ),
          GoRoute(
            path: "/notification",
            name: "notification",
            pageBuilder: (context, state) =>
                appTransitionPage(const NotificationPage()),
          ),
          GoRoute(
            path: "/profile",
            name: "profile",
            pageBuilder: (context, state) =>
                appTransitionPage(const ProfileScreen()),
          ),
        ],
      ),

      GoRoute(
        path: "/login",
        name: "login",
        pageBuilder: (context, state) => appTransitionPage(const LoginScreen()),
      ),
      GoRoute(
        path: "/register",
        name: "register",
        pageBuilder: (context, state) =>
            appTransitionPage(const RegisterScreen()),
      ),
      GoRoute(
        path: "/splash",
        name: "splash",
        pageBuilder: (context, state) =>
            appTransitionPage(const SplashScreen()),
      ),
    ],
  );
}
