import 'package:profiles/buttomsheet.dart';
import 'package:profiles/grid.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:profiles/about.dart';
import 'package:profiles/main.dart';
import 'package:profiles/mix.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('My App'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Get.to(const MyHomePage(title: "My App"));
            },
          ),
          ListTile(
            title: const Text('About Me'),
            onTap: () {
              Get.to(const AboutPage());
            },
          ),
          ListTile(
            title: const Text('Grid view'),
            onTap: () {
              Get.to(const GridPage());
            },
          ),
          ListTile(
            title: const Text('Mix view'),
            onTap: () {
              Get.to(const MixPage());
            },
          ),
          ListTile(
            title: const Text('Buttom view'),
            onTap: () {
              Get.to(const MybottomsheetPage());
            },
          ),
        ],
      ),
    );
  }
}
