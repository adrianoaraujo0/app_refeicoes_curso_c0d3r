import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:refeicoes_curso/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({required this.category ,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title),
    );
  }
}