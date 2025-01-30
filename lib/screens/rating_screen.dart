import 'package:flutter/material.dart';
import '../models/content.dart';
import '../widgets/shared_nav_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class RatingScreen extends StatefulWidget {
  final Content content;

  const RatingScreen({super.key, required this.content});

  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  double _currentRating = 5.0;
  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Puan Ver"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: const SharedNavDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor.withOpacity(0.8),
              Theme.of(context).primaryColorLight.withOpacity(0.6),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${widget.content.title} için puan verin",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.content.imageUrl,
                  width: 200,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Puan: ${_currentRating.toStringAsFixed(1)}",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
              ),
              Slider(
                value: _currentRating,
                min: 1.0,
                max: 10.0,
                divisions: 9,
                label: _currentRating.toStringAsFixed(1),
                onChanged: (value) {
                  setState(() {
                    _currentRating = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _commentController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  labelText: 'Yorumunuzu yazın',
                  labelStyle: const TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                ),
                maxLines: 3,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.content.userRating = _currentRating;
                    widget.content.userComment = _commentController.text.isEmpty
                        ? "Henüz bir yorum yazılmadı."
                        : _commentController.text;

                    if (!favoriteList.contains(widget.content)) {
                      favoriteList.add(widget.content);
                    }
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Favorilere eklendi!")),
                  );

                  context.go('/favorites');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: Text(
                  "Favorilere Ekle",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
              const SizedBox(height: 1),
              Lottie.asset(
                'assets/motions/rate.json',
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
