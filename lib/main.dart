import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<List<dynamic>> todos = [
    ["Hallo", false]
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.red,
          appBarTheme: AppBarTheme(
            centerTitle: true,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle()),
          ),
          
      home: Scaffold(
          body: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Text(todos[index][0]),
                    Checkbox(
                        value: todos[index][1],
                        onChanged: (val) {
                          setState(() {
                            todos[index][1] = val;
                          });
                        })
                  ],
                );
              })),
    );
  }
}
