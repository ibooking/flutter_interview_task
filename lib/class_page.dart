import 'package:flutter/material.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({super.key, required this.id});

  final String id;

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class ${widget.id}'),
      ),
      body: Center(
        child: Text('Detail page for class ${widget.id}'),
      ),
    );
  }
}
