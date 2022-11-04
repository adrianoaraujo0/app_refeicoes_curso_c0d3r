import 'package:flutter/material.dart';
import 'package:refeicoes_curso/components/category_item.dart';
import 'package:refeicoes_curso/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Vamos cozinhar?")),
      body:GridView(
        padding: const EdgeInsets.all(25),     
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, 
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map(
          (category) {
            return CategoryItem(category: category);
          }
        ).toList(),
      )
    );
  }
}
