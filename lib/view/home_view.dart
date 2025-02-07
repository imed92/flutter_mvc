import 'package:flutter/material.dart';

// Ici je définis le widget de ma page home
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Bienvenue dans la page d'accueil")
    );
  }
}
