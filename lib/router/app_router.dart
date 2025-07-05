import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:redfi/features/flight_search/presentation/flight_search_screen.dart';
import 'package:redfi/starter/onboarding/onboarding_page.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/onboarding',
    routes: [
      GoRoute(
        name: RouteNames.onboarding,
        path: '/onboarding',
        pageBuilder: (context, state) =>
            _scaleTransition(state, const OnboardingPage()),
      ),
      GoRoute(
        name: RouteNames.flight_search,
        path: '/flight_search',
        pageBuilder: (context, state) =>
            _fadeTransition(state, const FlightSearchScreen()),
      ),
    ],
  );
});



CustomTransitionPage _fadeTransition(GoRouterState state, Widget child) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}


CustomTransitionPage _slideTransition(GoRouterState state, Widget child) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.ease));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}


CustomTransitionPage _scaleTransition(GoRouterState state, Widget child) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: animation,
        child: child,
      );
    },
  );
}

class RouteNames {
  static const home = 'home';
  static const onboarding = 'onboarding';
  static const flight_search = 'flight_search';
}