import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {

  final Meal meal;
  const MealItem({required this.meal ,super.key});

  void _selectMeal(){}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),topLeft: Radius.circular(15)
              ),
              child: Stack(
                children: [
                  Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}