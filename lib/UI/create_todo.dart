import 'package:flutter/material.dart';

class CreateToDO extends StatefulWidget {
  const CreateToDO({Key key}) : super(key: key);

  @override
  _CreateToDOState createState() => _CreateToDOState();
}

class _CreateToDOState extends State<CreateToDO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("create TODO"),
      ),
    );
  }

  void createTodo() async {
    /// pass the task in method and done;
    //await  TasksBloc.instance().createTask();
  }
}
