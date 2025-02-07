import 'package:flutter/material.dart';

class AppController extends StatelessWidget {
  const AppController({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Page Accueil'),
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
