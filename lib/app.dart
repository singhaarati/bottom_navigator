import 'package:bottom_navigation/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'view/navigator_bar_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.getApplicationTheme(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const NavigatorBarView(),
        });
  }
}
