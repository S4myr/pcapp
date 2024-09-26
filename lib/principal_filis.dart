import 'package:flutter/material.dart';

class principal_filis extends StatelessWidget {
  const principal_filis({super.key});

  @override
  Widget build(BuildContext context) {
    var estiloTexto = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Text(
            'Fílis',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('lalalaaaaaaaaaaaaaaaaaa1', style: estiloTexto),
            Text('lalala2', style: estiloTexto),
            Text('lalalaaaaaaaaaaaaaaaaaa3', style: estiloTexto),
            Text('lalala4', style: estiloTexto),
            Text('lalalaaaaaaaaaaaaaaaaaa5', style: estiloTexto),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('lalala1', style: estiloTexto),
                const SizedBox(width: 40),
                Text('lalala2', style: estiloTexto),
                const SizedBox(width: 40),
                const Icon(Icons.star),
                const SizedBox(width: 40),
                Text('lalala4', style: estiloTexto),
                const SizedBox(width: 40),
                Text('lalala5', style: estiloTexto),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(onPressed: () {}, child: const Text('Botão 1')),
                OutlinedButton(onPressed: () {}, child: const Text('Botão 2')),
                Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextButton.icon(
                      onPressed: () {},
                      label: Text('lua'),
                      icon: const Icon(Icons.bedtime),
                    ))
              ],
            ),
            Expanded(
              child: Center(
                child: Text('texto centralizado', style: estiloTexto),
              ),
            )
          ],
        ));
  }
}
