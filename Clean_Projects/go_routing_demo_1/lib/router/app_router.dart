import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../screens/product_detail_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/product/:id',
      name: 'productDetail',
      builder: (context, state) {
        final id = state.pathParameters['id'];
        if (id == null) {
          return const HomeScreen(); // or error screen
        }
        final filter = state.uri.queryParameters['filter'] ?? 'all';
        return ProductDetailScreen(id: id, filter: filter);
      },
    ),
  ],
);