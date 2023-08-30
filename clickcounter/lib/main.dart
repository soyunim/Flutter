import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  bool reset = false;

  void onClick() {
    setState(() {
      counter = counter + 1;
      if (counter == 10) {
        reset = !reset;
      }
    });
  }

  void resetCount() {
    setState(() {
      counter = 0;
      reset = !reset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.blueGrey.shade900,
            fontSize: 30,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.amber.shade200,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              reset
                  ? const MyLargeTitle(text: "Finish!")
                  : const MyLargeTitle(text: "Click Count!"),
              MyLargeTitle(text: "$counter"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  reset
                      ? IconButton(
                          onPressed: resetCount,
                          icon: const Icon(Icons.refresh),
                          iconSize: 40,
                        )
                      : IconButton(
                          onPressed: onClick,
                          icon: const Icon(Icons.add_box),
                          iconSize: 40,
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  final String text;

  const MyLargeTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
