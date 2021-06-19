import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/task_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

// ignore: use_key_in_widget_constructors
class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        // ignore: prefer_const_constructors
        child: Icon(Icons.add),
        onPressed: () {
          // ignore: unused_local_variable
          showModalBottomSheet(
              context: context, builder: (context) => AddTaskScreen());
        },
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                // ignore: prefer_const_constructors
                EdgeInsets.only(
                    top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                // ignore: prefer_const_constructors
                CircleAvatar(
                  // ignore: prefer_const_constructors
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),

                // ignore: prefer_const_constructors
                SizedBox(
                  height: 10.0,
                ),

                // ignore: prefer_const_constructors
                Text(
                  'Todoey',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                // ignore: prefer_const_constructors
                Text(
                  '${Provider.of<TaskData>(context).taskCount} tasks left',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(20.0),
              child: TaskList(),
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: Colors.white,
                // ignore: prefer_const_constructors
                borderRadius: BorderRadius.only(
                  // ignore: prefer_const_constructors
                  topLeft: Radius.circular(20.0),
                  // ignore: prefer_const_constructors
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
