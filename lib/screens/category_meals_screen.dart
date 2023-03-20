import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({super.key});

  // final String categoryId;
  // final String categoyTitle;

  // const CategoryMealsScreen(this.categoryId, this.categoyTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text('The Recipes : $categoryTitle'),
      ),
      body: const Center(
        child: Text(
          'The Recipes For the Category!',
        ),
      ),
    );
  }
}