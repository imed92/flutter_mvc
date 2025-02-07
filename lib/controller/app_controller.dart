// Packages Flutter
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Models
import 'package:draer_mds/model/menu_item.dart';

// Views
import 'package:draer_mds/view/home_view.dart';
import 'package:draer_mds/view/about_view.dart';

import '../view/drawer.dart';

class AppController extends StatefulWidget {
  final String title;

  const AppController({super.key, required this.title});

  @override
  State<StatefulWidget> createState() {
    return AppControllerState();
  }
}

@override
class AppControllerState extends State<AppController> {
  // Cette index va nous permettre de savoir dans quel vue on veut être
  int index = 0;

  // Ici on a une liste (ou tableau pour faire plus simple),
  // ou on aura toutes les vues qu'on veut afficher dans le Drawer
  final List<MenuItem> menu = [
    MenuItem(name: "Accueil", view: const HomeView()), // Ma page accueil
    MenuItem(name: "About", view: const AboutView()) // Ma page about
  ];

  void selected(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      drawer: DrawerView(
        items: menu,
        selection: selected,
      ),
    );
  }
}
