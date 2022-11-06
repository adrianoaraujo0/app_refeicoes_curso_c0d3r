import 'package:flutter/material.dart';
import 'package:refeicoes_curso/ui/settings.dart';
import 'package:refeicoes_curso/ui/categories_meals_screen.dart';
import 'package:refeicoes_curso/ui/category_screen.dart';
import 'package:refeicoes_curso/ui/meal_detail_screen.dart';
import 'package:refeicoes_curso/ui/tabs_screen.dart';
import 'package:refeicoes_curso/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        AppRoutes.categories_meals : (context) => const CategoriesMealsScreen(),
        AppRoutes.meal_detail :(context) => MealDetailScreen(),
        AppRoutes.settings :(context) =>const Settings(),
      }
    );
  }
}
