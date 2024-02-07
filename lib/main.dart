import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'class_page.dart';
import 'classes_page.dart';
import 'bookings_page.dart';
import 'scaffold_with_navbar.dart';

void main() {
  runApp(GroupClassBookingApp());
}

class GroupClassBookingApp extends StatelessWidget {
  GroupClassBookingApp({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNavbar(navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) {
                  return const BookingsPage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/classes',
                builder: (context, state) {
                  return const ClassesPage();
                },
                routes: [
                  GoRoute(
                    path: ':id',
                    builder: (context, state) {
                      return ClassPage(id: state.pathParameters['id']!);
                    },
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      builder: (context, child) {
        return child!;
      },
    );
  }
}
