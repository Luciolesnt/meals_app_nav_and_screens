import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Filters',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
