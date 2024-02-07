import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClassesPage extends StatefulWidget {
  const ClassesPage({super.key});

  @override
  State<ClassesPage> createState() => _ClassesPageState();
}

class _ClassesPageState extends State<ClassesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Classes')),
      body: Center(
        child: TextButton(
          child: const Text('Go to class'),
          onPressed: () {
            context.go('/classes/123');
          },
        ),
      ),
    );
  }
}
