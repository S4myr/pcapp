import 'package:flutter/material.dart';
import 'package:projeto_flutter/filis_inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFB08363),
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      home: const filis_inicio(),
    );
  }
}
