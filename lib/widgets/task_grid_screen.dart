import 'package:flutter/material.dart';
import 'package:tasks/screens/task_screen.dart';
import 'package:tasks/widgets/task_widget.dart';

class TaskGridScreen extends StatelessWidget {
  final List _tasks = [];
  String _tskName = 'ts';

  final DateTime _startDate = DateTime.now();
  DateTime _endDate;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: 10,
      itemBuilder: (context, index) => InkWell(
        onTap: () => selectTask(context),
        child: TaskWidget(_tskName),
      ),
    );
  }

  void selectTask(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) => TaskScreen(_tskName),
      ),
    );
  }
}
