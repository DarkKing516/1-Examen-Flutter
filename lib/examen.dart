import 'package:flutter/material.dart';
import 'package:si/exmaneSecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Examen Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double imageHeight = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cinta debug EMULADOR',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Image.network(
              'https://i.stack.imgur.com/rbkq0.png',
              width: imageHeight,
            ),
            const Text(
              '---------------------------------------',
              style: TextStyle(
                color: Colors.red,
                fontSize: 22,
              ),
            ),
            const Text(
              'debugShowCheckedModeBanner',
              style: TextStyle(
                color: Colors.red,
                fontSize: 25,
              ),
            ),
            const Text(
              'Definiendolo como "false"',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 22,
              ),
            ),
            const Text(
              'Podremos quitar la cinta de debug',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 22,
              ),
            ),
            const Text(
              'La cual se pone por defecto',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 22,
              ),
            ),
            const Text(
              'Al ejecutar una aplicación de flutter',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 22,
              ),
            ),
            const Text(
              'En la parte superior del emulador',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 22,
              ),
            ),
            ElevatedButton(
              child: const Text(
                'Hola',
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondRoute(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
