import 'package:flutter/material.dart';
import 'pagina_secundaria.dart';

class Pagina_principal extends StatelessWidget {
  const Pagina_principal({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Página Principal',
          style: TextStyle(
            color: Colors.white,
          ),),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Próxima página?'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pagina_secundaria()),
            );
          },
        ),
      ),
    );
  }
}
