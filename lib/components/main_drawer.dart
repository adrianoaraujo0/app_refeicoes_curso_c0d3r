import 'package:flutter/material.dart';
import 'package:refeicoes_curso/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget _createItem(IconData icon, String label, Function()? onTap){
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontFamily: "RobotoCondensed",
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            alignment: Alignment.bottomCenter,
            child: const Text(
              "Vamos cozinhar?",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 30,),
          _createItem(
            Icons.restaurant,
            "Refeições",
            ()=> Navigator.pushReplacementNamed(context, AppRoutes.home)
          ),
          _createItem(
            Icons.settings,
            "Configurações",
            ()=> Navigator.pushReplacementNamed(context, AppRoutes.settings)
          )
        ]
      ),
    );
  }
}