import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  //less=não dá para modificar, full=usuario pode modificar
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Aplicativo da Sam',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Consegui!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {},
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('+'),
      ),
      body: const Center(
        child: Text(
          'Olha aqui, consegui!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
