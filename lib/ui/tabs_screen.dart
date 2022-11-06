import 'package:flutter/material.dart';
import 'package:refeicoes_curso/ui/category_screen.dart';
import 'package:refeicoes_curso/ui/favorite_screen.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Vamos cozinhas?"),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: "Categorias", 
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "Favoritos", 
              )
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            CategoriesScreen(),
            FavoriteScreen(),
          ]
        ),
      ) 
    );
  }
}