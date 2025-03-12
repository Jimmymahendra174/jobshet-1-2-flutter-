import 'package:flutter/material.dart';

import 'buttons/raised_button.dart';
import 'buttons/flat_button.dart';
import 'buttons/icon_button.dart';
import 'buttons/floating_action_button.dart';
import 'buttons/cupertino_button.dart';
import 'buttons/custom_gesture.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Buttons Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Buttons Demo')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildNavigationButton(context, 'Raised Button', const RaisedButtonDemo()),
          _buildNavigationButton(context, 'Flat Button', const FlatButtonDemo()),
          _buildNavigationButton(context, 'Icon Button', const IconButtonDemo()),
          _buildNavigationButton(context, 'Floating Action Button', const FloatingActionButtonDemo()),
          _buildNavigationButton(context, 'Cupertino Button', const CupertinoButtonScreen()),
          _buildNavigationButton(context, 'Custom Gesture', const CustomGestureScreen()),
        ],
      ),
    );
  }
}

Widget _buildNavigationButton(BuildContext context, String title, Widget screen) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Text(title),
    ),
  );
} 