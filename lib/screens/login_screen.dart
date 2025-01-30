import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              "assets/welcome.png",
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(20),
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Mail",
                      prefixIcon: Icon(Icons.mail, color: Theme.of(context).primaryColor),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Şifre",
                      prefixIcon: Icon(Icons.lock, color: Theme.of(context).primaryColor),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () => context.go("/home"),
                    child: SizedBox(
                      width: 100,
                      child: DotLottieLoader.fromAsset(
                        "assets/motions/login.json",
                        frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                          if (dotlottie != null) {
                            return Lottie.memory(
                                dotlottie.animations.values.single);
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
