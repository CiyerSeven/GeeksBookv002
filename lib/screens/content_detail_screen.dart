import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/content.dart';

class ContentDetailScreen extends StatelessWidget {
  final Content content;

  const ContentDetailScreen({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          // Arka plan posteri
          Positioned.fill(
            child: Image.asset(
              content.backdrop,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => context.go('/home'),
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite_border, color: Colors.white),
                        onPressed: () => context.go('/rating', extra: content),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 200),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
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
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).primaryColor.withOpacity(0.8),
                          Theme.of(context).primaryColorLight.withOpacity(0.6),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Text(
                      content.description,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black.withOpacity(0.7),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Editörün Notu",
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          content.editorNote,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}