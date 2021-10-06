import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo/widgets/tasks_list.dart';
import 'package:my_todo/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:my_todo/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Todo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 51, 51, 51),
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.bell,
            ),
          )
        ],
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 130, 130, 130)),
        elevation: 0,
      ),
      drawer: Drawer(
        child: (Column(
            //TODO add some icons
            )),
      ),
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 66, 133, 244),
          child: Icon(
            Icons.add,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                        child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(),
                    )));
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 51, 51, 51),
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Remaining Tasks '),
                      TextSpan(
                          text: '(${Provider.of<TaskData>(context).taskCount})',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
