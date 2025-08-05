import 'package:go_router/go_router.dart';
import 'package:goroutersample/main.dart';
import 'package:goroutersample/route_constants.dart';
import 'package:goroutersample/screens/dashboard_screen.dart';
import 'package:goroutersample/screens/help_screen.dart';
import 'package:goroutersample/screens/search_screen.dart';
import 'package:goroutersample/screens/settings_screen.dart';

final GoRouter myRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainScreen(child: child);
      },
      routes: [
        GoRoute(
          path: MyPage.home.toPath,
          name: MyPage.home.toName,
          builder: (context, state) => const DashboardScreen(),
        ),
        GoRoute(
          path: MyPage.search.toPath,
          name: MyPage.search.toName,
          builder: (context, state) => const SearchScreen(),
        ),
        GoRoute(
          path: MyPage.settings.toPath,
          name: MyPage.settings.toName,
          builder: (context, state) => const SettingsScreen(),
        ),
        GoRoute(
          path: MyPage.help.toPath,
          name: MyPage.help.toName,
          builder: (context, state) => const HelpScreen(),
        ),
      ],
    ),
  ],
);
