import 'package:flutter/material.dart';
import 'package:todo/Bloc/tasks_bloc.dart';
import 'package:todo/Models/Task.dart';
import 'package:todo/Utils/retry_widget.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key key}) : super(key: key);

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  bool isLoading = true;
  bool retry = false;
  List<Task> _tasks = [];

  @override
  void initState() {
    super.initState();
    getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : retry
              ? RetryWidget(
                  retryFunction: getList,
                )
              : ListView.builder(
                  itemCount: _tasks.length,
                  itemBuilder: (c, index) {
                    Task task = _tasks.elementAt(index);
                    return ListTile(
                      title: Text("${task.subject}"),
                      subtitle: Text("${task.description}"),
                    );
                  }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  void getList() async {
    if (mounted)
      setState(() {
        isLoading = true;
        retry = false;
      });

    var response = await TasksBloc.instance().getTasksList();
    if (response.data != null &&
        response.data is Map &&
        response.data.containsKey("list")) {
      _tasks = []
        ..addAll((response.data['list'] as List).map((e) => Task.fromMap(e)));
      if (mounted)
        setState(() {
          isLoading = false;
          retry = false;
        });
    } else {
      if (mounted)
        setState(() {
          isLoading = false;
          retry = true;
        });
    }
  }
}
