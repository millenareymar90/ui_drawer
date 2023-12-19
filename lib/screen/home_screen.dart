import 'package:flutter/material.dart';
import 'package:ui_drawer/widget/custom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Drawer'),
      ),
      drawer: const CustomNavDrawer(),
    );
  }
}
