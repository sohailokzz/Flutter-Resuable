import 'package:flutter/material.dart';
import 'package:flutter_reusable/routes/routes_names.dart';
import 'package:flutter_reusable/screens/auth_screens/login_screen.dart';
import 'package:flutter_reusable/screens/home_screen.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case RoutesName.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      // Edit Note Screen
      //   case EditNoteScreen.routeName:
      //     final NotesModel notesModel = settings.arguments as NotesModel;
      //
      //     return MaterialPageRoute(builder: (_) => EditNoteScreen(notesModel: notesModel));

      default:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
    }
  }
}
