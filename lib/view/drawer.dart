import 'package:flutter/material.dart';

import '../model/menu_item.dart';

class DrawerView extends StatelessWidget {
  final List<MenuItem> items;
  final Function(int)
      selection; // La fonction qui va me permettre de selectionner le widget à afficher

  const DrawerView({super.key, required this.items, required this.selection});

  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView.separated(
      itemBuilder: (context, index) {
        return (const ListTile(title: Text("Mes pages")));
      }, 
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemCount: items.length + 1, // Construit tous les éléments de la liste
    ));
  }
}
