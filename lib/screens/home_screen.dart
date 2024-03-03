import 'package:flutter/material.dart';
import 'package:ild/screens/ild_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: const Color.fromARGB(255, 39, 23, 159),
      ),
      body: SafeArea(
          child: Center(
              child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(const Color.fromARGB(255, 39, 23, 159)),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ILDScreen()));
        },
        child: const Text(
          'ILD Screen',
          style: TextStyle(color: Colors.white),
        ),
      ))),
    );
  }
}
