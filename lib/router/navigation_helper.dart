import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'app_router.dart';

final navigationHelperProvider = Provider<NavigationHelper>((ref) {
  final router = ref.watch(goRouterProvider);
  return NavigationHelper(router);
});

class NavigationHelper {
  final GoRouter _router;

  NavigationHelper(this._router);

  void goToFlightSearch() => _router.goNamed(RouteNames.flight_search);
  void pop() => _router.pop();
}
