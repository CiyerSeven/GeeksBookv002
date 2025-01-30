import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: 300,
                height: 300,
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),

            InkWell(
              onTap: () => context.go("/login"),
              child: SizedBox(
                width: 100,
                child: DotLottieLoader.fromAsset(
                  "assets/motions/arrow.json",
                  frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(dotlottie.animations.values.single);
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),
            // biraz boslok lazim
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
