import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SharedNavDrawer extends StatelessWidget {
  const SharedNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3B1E54),
              Color(0xFF9B7EBD),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Menü',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Lottie.asset(
                      'assets/motions/menu.json',
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white),
              title: const Text('Ana Sayfa', style: TextStyle(color: Colors.white)),
              onTap: () {
                context.go('/home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite, color: Colors.white),
              title: const Text('Favoriler', style: TextStyle(color: Colors.white)),
              onTap: () {
                context.go('/favorites');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title: const Text('Ayarlar', style: TextStyle(color: Colors.white)),
              onTap: () {
                context.go('/settings');
              },
            ),
          ],
        ),
      ),
    );
  }
}