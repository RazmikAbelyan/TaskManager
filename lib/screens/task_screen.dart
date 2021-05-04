import 'package:flutter/material.dart';
import 'package:tasks/widgets/task_widget.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen(this.tskName);

  String tskName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(tskName),
      ),
      body: Container(

      ),
    );
  }
}
