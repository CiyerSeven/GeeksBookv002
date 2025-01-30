import 'package:flutter/material.dart';
import '../models/content.dart';
import '../widgets/shared_nav_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favoriler",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: const SharedNavDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1E1E1E),
              Color(0xFF2C2C2C),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: favoriteList.isEmpty
            ? Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hey! Burası boş..",
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
          Opacity(
            opacity: 0.6,
            child: Lottie.asset(
              'assets/motions/empty.json',
              width: 200,
              height: 200,
            ),
          ),
            ],
          ),
        )
            : ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: favoriteList.length,
          itemBuilder: (context, index) {
            final content = favoriteList[index];
            return Card(
              color: Colors.white.withOpacity(0.8),
              margin: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    content.imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  content.title,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Puan: ${content.userRating?.toStringAsFixed(1) ?? "N/A"}",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                onTap: () {
                  context.go('/favorite-detail', extra: content);
                },
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      favoriteList.removeAt(index);
                    });

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Favoriden kaldırıldı!")),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
