import 'package:flutter/material.dart';

// Ici je définis le widget de ma page home
class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Bienvenue dans la page About")
    );
  }
}
