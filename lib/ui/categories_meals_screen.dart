import 'package:flutter/material.dart';
import 'package:refeicoes_curso/models/category.dart';
class CategoriesMealsScreen extends StatelessWidget {

  final Category category;
  const CategoriesMealsScreen({required this.category ,super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Receitas"),
      ),
      body: const Center(
        child: Text("Receitas por Categoria")
      ),
    );
  }
}