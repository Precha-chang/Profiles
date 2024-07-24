import 'package:profiles/drawer.dart';
import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
      ),
      drawer: const MyDrawer(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // จำนวนคอลัมน์ใน GridView
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Center(
              child: Text('Item $index'),
            ),
          );
        },
        itemCount: 20, // จำนวนไอเท็มใน GridView
      ),
    );
  }
}
