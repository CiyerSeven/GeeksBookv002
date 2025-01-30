import 'package:flutter/material.dart';
import '../models/content.dart';
import 'package:go_router/go_router.dart';
import '../screens/rating_screen.dart';

class FavoritesDetailScreen extends StatelessWidget {
  final Content content;

  const FavoritesDetailScreen({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          content.title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.go('/favorites'),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              content.backdrop,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        content.imageUrl,
                        width: 120,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        content.title,
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "Puanınız: ${content.userRating?.toStringAsFixed(1) ?? "N/A"}",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Yorumunuz:",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    content.userComment ?? "Henüz bir yorum yazılmamış.",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    content.description,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}