import 'package:flutter/material.dart';
import 'package:refeicoes_curso/models/category.dart';
class CategoriesMealsScreen extends StatelessWidget {

  const CategoriesMealsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: const Center(
        child: Text("Receitas por Categoria")
      ),
    );
  }
}