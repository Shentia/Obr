import 'package:blog/router/named_route.dart';
import 'package:blog/screen/mainScreen.dart';
import 'package:blog/screen/sign_on.dart';
import 'package:blog/screen/splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
      // initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: root,
          builder: (context, state) => SplashScreen(
            key: state.pageKey,
          ),
        ),
        GoRoute(
          path: '/mainScreen',
          name: home,
          builder: (context, state) => MainScreen(
            key: state.pageKey,
          ),
        ),
        GoRoute(
          path: '/signOnScreen',
          name: signOn,
          builder: (context, state) => SignOnScreen(
            key: state.pageKey,
          ),
        ),
      ]);
});
