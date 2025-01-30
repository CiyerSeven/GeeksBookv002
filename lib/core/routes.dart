import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading.dart';
import '../screens/login_screen.dart';
import '../screens/home_content_screen.dart';
import '../screens/content_detail_screen.dart';
import '../screens/rating_screen.dart';
import '../screens/favorites_screen.dart';
import '../screens/settings.dart';
import '../models/content.dart';
import '../screens/favorites_detail_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeContentScreen(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) {
        final content = state.extra as Content;
        return ContentDetailScreen(content: content);
      },
    ),
    GoRoute(
      path: '/rating',
      builder: (context, state) {
        final content = state.extra as Content;
        return RatingScreen(content: content);
      },
    ),
    GoRoute(
      path: '/favorites',
      builder: (context, state) => const FavoritesScreen(),
    ),
    GoRoute(
      path: '/favorite-detail',
      builder: (context, state) {
        final content = state.extra as Content;
        return FavoritesDetailScreen(content: content);
      },
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);