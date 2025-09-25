import 'package:flutter/material.dart';
import 'package:flutter_reusable/screens/auth_screens/login_screen.dart';
import 'package:flutter_reusable/screens/auth_screens/login_screen_vm.dart';
import 'package:flutter_reusable/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MultiProvider(
          providers: [
            // Add your providers here
            ChangeNotifierProvider(
              create: (_) => LoginScreenVm(),
            ),
          ],

          child: MaterialApp(
            title: 'Flutter Theme Architecture',
            debugShowCheckedModeBanner: false,

            // Use separated theme files
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: ThemeMode.system,

            home: LoginScreen(),
          ),
        );
      },
    );
  }
}
