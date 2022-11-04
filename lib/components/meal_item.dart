import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {

  final Meal meal;
  const MealItem({required this.meal ,super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Text(meal.title),
      ),
    );
  }
}