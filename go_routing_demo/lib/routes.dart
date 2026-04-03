import 'package:go_router/go_router.dart';
import 'home.dart';
import 'detail.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/product/:id',
      builder: (context, state) {
        final id = state.pathParameters['id'];
        final filter = state.uri.queryParameters['filter'];

        return DetailPage(id: id!, filter: filter ?? '');
      },
    ),
  ],
);