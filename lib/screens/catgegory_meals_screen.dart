import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryId;
  final String categoyTitle;

  const CategoryMealsScreen(this.categoryId, this.categoyTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Recipes : $categoyTitle'),
      ),
      body: const Center(
        child: Text(
          'The Recipes For the Category!',
        ),
      ),
    );
  }
}
