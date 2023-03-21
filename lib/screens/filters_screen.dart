import 'package:flutter/material.dart';

import '../items/main_drawer_item.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      drawer: const MainDrawer(),
      body: Center(
        child: Text(
          'Filters',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
