import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

// ignore: use_key_in_widget_constructors
class AddTaskScreen extends StatelessWidget {
  String newTaskTitle = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      color: Color(0xFF757575),

      // ignore: prefer_const_constructors
      child: Container(
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
        padding:
            // ignore: prefer_const_constructors
            EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            // ignore: prefer_const_constructors
            Center(
              // ignore: prefer_const_constructors
              child: Text(
                'Add A Task',
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10.0,
            ),
            // ignore: prefer_const_constructors
            TextField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                border: UnderlineInputBorder(),
                hintText: 'Enter your task',
              ),
              enabled: true,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTitle) {
                newTaskTitle = newTitle;
              },
            ),

            // ignore: prefer_const_constructors
            SizedBox(
              height: 15.0,
            ),

            Container(
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
              child: TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                // ignore: prefer_const_constructors
                child: Text(
                  'Add',
                  // ignore: prefer_const_constructors
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
