import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../widgets/shared_nav_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ayarlar",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: const SharedNavDrawer(),
      body: Stack(
        children: [
          // Lottie animasyonu (arka planda)
          Center(
            child: Opacity(
              opacity: 0.2, // Transparanlık etkisi
              child: Lottie.asset(
                'assets/motions/settings_animation.json',
                width: 300,
                height: 300,
              ),
            ),
          ),
          ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              //HAKKINDAAA
              ListTile(
                leading: const Icon(Icons.info, color: Colors.blueAccent),
                title: Text(
                  "Hakkında",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                ),
                onTap: () {
                  showAboutDialog(
                    context: context,
                    applicationName: "GeeksBook",
                    applicationVersion: "0.0.3",
                    applicationIcon: const Icon(Icons.movie, size: 40),
                    children: [
                      const Text(
                          "Bu uygulama Mobil Geliştirme dersi finali için hazırlanmıştır. Danışmanım Keyvan hocaya teşekkür ediyorum. Geeksbook bir içerik takip, yorumlama& kaydetme uygulamasıdır."
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

