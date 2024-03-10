import 'package:flutter/cupertino.dart';
import 'package:todoapp_flutter/widgets/task_tile.dart';

import '../modules/Task.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

List<Task> tasks = [
  Task(name: 'Task 1'),
  Task(name: 'Task 2'),
];

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkBoxCallback: (newValue) {
            setState(() {
              tasks[index].toggleState();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
