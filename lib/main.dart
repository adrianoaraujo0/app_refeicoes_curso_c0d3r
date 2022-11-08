import 'package:flutter/material.dart';
import 'package:refeicoes_curso/data/dummy_data.dart';
import 'package:refeicoes_curso/models/settings.dart';
import 'package:refeicoes_curso/ui/settings_screen.dart';
import 'package:refeicoes_curso/ui/categories_meals_screen.dart';
import 'package:refeicoes_curso/ui/meal_detail_screen.dart';
import 'package:refeicoes_curso/ui/tabs_screen.dart';
import 'package:refeicoes_curso/utils/app_routes.dart';

import 'models/meal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Meal> _availableMeals = dummyMeals;
  Settings settings = Settings();

  void _filterMeals(Settings settings){
    setState(() {
      this.settings = settings;
   
      _availableMeals = dummyMeals.where((meal) {
          final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
          final filterLactose = settings.isLactoseFree && !meal.isLactoseFree; 
          final filterVegan = settings.isVegan && !meal.isVegan; 
          final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;
          return !filterGluten && !filterLactose && filterVegan && !filterVegetarian;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vamos Cozinhar?",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed'
          )
        )
      ),
      routes: {
        AppRoutes.home:(context) => const TabsScreen(),
        AppRoutes.categories_meals : (context) =>  CategoriesMealsScreen(meals: _availableMeals),
        AppRoutes.meal_detail :(context) => MealDetailScreen(),
        AppRoutes.settings :(context) => SettingsScreen(settings: settings ,onSettingsChanged: _filterMeals),
      }
    );
  }
}
