import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/animated/animated_screen.dart';
import 'package:widgets_app/presentation/screens/app_tutorial/app_tutorial_screen.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';
import 'package:widgets_app/presentation/screens/infinit_scroll/infinite_scroll_screen.dart';
import 'package:widgets_app/presentation/screens/progress/progress_screen.dart';
import 'package:widgets_app/presentation/screens/snackbar/snackbar_screen.dart';
import 'package:widgets_app/presentation/screens/ui_controls/ui_controls_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
        GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
        GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
            GoRoute(
      path: '/progress',
      builder: (context, state) => const ProgressScreen(),
    ),
                GoRoute(
      path: '/snackbars',
      builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(
      path: '/animated',
      builder: (context, state) => const AnimatedScreen(),
    ),
        GoRoute(
      path: '/ui-controls',
      builder: (context, state) => const UiControlsScreen(),
    ),
            GoRoute(
      path: '/tutorial',
      builder: (context, state) => const AppTutorialScreen(),
    ),
                GoRoute(
      path: '/infinite',
      builder: (context, state) => const InfiniteScrollScreen(),
    ),
  ],
);  