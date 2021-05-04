import 'package:flutter/material.dart';

class NewTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Task'),),
      body: Center(child: Text('task'),),
    );
  }
}
