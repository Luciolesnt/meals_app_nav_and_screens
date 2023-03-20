import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(this.id, this.title, this.color, {super.key});

  void selectCategory(BuildContext context) {
    // Le navigator a besoin du context pour se repérer :
    // savoir sur quel écran on se situe par exemple
    // MaterialPageRoute est utilisé en tant que Wrapper par exemple pour
    // gérer l'animation entre les pages
    Navigator.of(context).pushNamed(
      '/category-meals',
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    // Comme le GestureDectector mais envoie un ripple effect (Material effect)
    // SplashColor => couleur du ripple effect
    return InkWell(
      // onTap appelle une fonction => sans les parenthèses car nous ne voulons pas l'exécuter
      // onTap: selectCategory,
      // Si nous devons passer des arguments alors la forme est la suivante :
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(title, style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
