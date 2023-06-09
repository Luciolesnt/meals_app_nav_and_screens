import 'package:flutter/material.dart';

import '../datas/dummy_categories.dart';
import '../items/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Le widget Scafold est indispensble pour wrapper notre screen
    //(permet de délimiter l'écran en pretant attention au format de la'appareil utilisé par l'uilisateur)
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: dummyCategories
            .map(
              (catDta) => CategoryItem(
                catDta.id,
                catDta.title,
                catDta.color,
              ),
            )
            .toList(),
      ),
    );
  }
}
