import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moview/pages/movie_detail_page.dart';
import 'package:moview/pages/root_page.dart';

class AppRouter {
  AppRouter();

  final router = GoRouter(
    initialLocation: RootPage.routeName,
    debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        path: RootPage.routeName,
        builder: (context, state) => const RootPage(),
      ),
      GoRoute(
        path: MovieDetailPage.routeName,
        pageBuilder: (context, state) {
          final id = state.params['id'];
          return MaterialPage<void>(
            key: state.pageKey,
            child: MovieDetailPage(
              id: id!,
            ),
          );
        },
      ),
    ],
    // errorPageBuilder: (context, state) => MaterialPage<void>(
    //   key: state.pageKey,
    //   child: ErrorPage(error: state.error),
    // ),
  );
}
