import 'package:flutter/material.dart';
import 'package:profiles/drawer.dart';
import 'package:getwidget/getwidget.dart';


class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  var items = List<String>.generate(20, (i) => 'Phisan $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My List"),
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: GFListTile(
              titleText: items[index],
              subTitleText: 'hello',
              icon: const Icon(Icons.adb),
            ),
          );
        },
      ),
    );
  }
}