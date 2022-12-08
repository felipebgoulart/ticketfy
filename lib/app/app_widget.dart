import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/theme/app_theme.dart';
    
class AppWidget extends StatelessWidget {
  const AppWidget({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Ticketfy',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: AppTheme.lightMode(),
      darkTheme: AppTheme.darkMode(),
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}