import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main() {
  runApp(MaterialApp(
    home: LottieEx(),
  ));
}
class LottieEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
            "assets/Lottie/88753-neomorphism-radial-progress-bar-style-2-light-theme-01.json"),
      ),
    );
  }
}
