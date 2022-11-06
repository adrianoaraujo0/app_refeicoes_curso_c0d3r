import 'package:flutter/material.dart';
import 'package:refeicoes_curso/ui/category_screen.dart';
import 'package:refeicoes_curso/ui/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  int _selectedScreenIndex = 0;
  final List<Map<String, Object>> _screens = [
    {"title" : "Lista de Categorias", "screen" : const CategoriesScreen()},
    {"title" : "Meus favoritos", "screen" : const FavoriteScreen()},
  ];

  _selectScreen(int index){
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]["title"] as String),
        centerTitle: true,
      ),
      body: _screens[_selectedScreenIndex]["screen"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        onTap: _selectScreen,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellow,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categorias"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favoritos"
          ),
        ]
      ),
    );
  }
}