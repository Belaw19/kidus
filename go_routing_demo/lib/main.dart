import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/details'),
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}

class detailsscreen extends StatelessWidget {
  const detailsscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: const Center(child: Text('This is the details screen')),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'go_router lesson 1',
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
void main() {
  runApp(const MyApp());
}
final _router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => homescreen()),
    GoRoute(path: '/details', builder: (context, state) => detailsscreen()),
  ],
);