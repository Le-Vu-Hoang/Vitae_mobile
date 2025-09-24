import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vitae_mobile/routes/app_router.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp.custom(
      themeMode: ThemeMode.system,
      theme: ShadThemeData(
        colorScheme: const ShadVioletColorScheme.light(),
        brightness: Brightness.light,
      ),
      darkTheme: ShadThemeData(
        colorScheme: const ShadVioletColorScheme.dark(),
        brightness: Brightness.dark,
      ),
      appBuilder: (context) {
        return MaterialApp.router(
          title: 'Vitae Mobile',
          theme: Theme.of(context),
          routerConfig: AppRouter.routes,
          builder: (context, child) {
            return ShadAppBuilder(child: child);
          },
        );
      },
    );
  }
}
