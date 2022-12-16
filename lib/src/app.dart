import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
            debugPrint('button pressed');
          },
          child: const Icon(Icons.add_a_photo),
        ),
        appBar: AppBar(title: const Text('Show Images')),
      ),
    );
  }
}
