import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  // le Const devant le constructeur Category signifie que les propriétsés de
  // l'objet ne peuvent pas être modifié après la création de cet object
  const Category(
      {required this.id, required this.title, this.color = Colors.orange});
}
