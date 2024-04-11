import 'package:flutter/material.dart';
import 'package:molinadiseno0967/all_containers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material APP',
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Contenedores Molina0967",
                style: TextStyle(
                  color: Color(0xffffffff),
                ),
              ),
              backgroundColor: Color(0xff700e0e),
            ),
            body: const AllContainers()));
  }
}
