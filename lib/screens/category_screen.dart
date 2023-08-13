import 'package:flutter/material.dart';
import 'package:quiz_app_mazen_momen/widgets/category_container.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [for (int i = 0; i < 3; i++) CategoryContainer(index: i)],
      ),
    );
  }
}
