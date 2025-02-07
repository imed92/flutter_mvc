import 'package:flutter/material.dart';

// Classe qui represente le menu qu'il y aura dans le Drawer
class MenuItem {
  String name; // Le nom de la vue
  Widget view; // Le widget de la vue qu'on veut afficher

  MenuItem({required this.name, required this.view});
}
