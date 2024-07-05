import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class textinho extends StatefulWidget {
  //less=não dá para modificar, full=usuario pode modificar
  const textinho({super.key});

  @override
  State<textinho> createState() => _textinhoState();
}

class _textinhoState extends State<textinho> {
  var texto = "Centralizado";
  final myController = TextEditingController();

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
          setState(() {
            texto = myController.text;
          });
        },
        child: Icon(Icons.rocket),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: myController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Insira um texto',
            ),
          ),
          Text(
            texto,
            style: TextStyle(fontSize: 36),
          ),
          SizedBox(
            width: 250.0,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText('do IT!'),
                  FadeAnimatedText('do it RIGHT!!'),
                  FadeAnimatedText('do it RIGHT NOW!!!'),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
