import 'package:flutter/material.dart';
import 'package:todo/UI/widgets/textformfield.dart';

class CreateToDO extends StatefulWidget {
  const CreateToDO({Key key}) : super(key: key);

  @override
  _CreateToDOState createState() => _CreateToDOState();
}

class _CreateToDOState extends State<CreateToDO> {
  TextEditingController subject = TextEditingController();
  TextEditingController description = TextEditingController();

  TextEditingController assignee = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create ToDo"),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: [
                SizedBox(
                  height: 40,
                ),
                CustomTextField(
                  hint: "Subject",
                  textEditingController: subject,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextField(
                  hint: "Description",
                  textEditingController: description,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextField(
                  hint: "Assignee",
                  textEditingController: assignee,
                ),
                SizedBox(
                  height: 40,
                ),
                RaisedButton(
                  elevation: 0,
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () async {
                    // if(subject.text==null) return;
                    // setState(() {
                    //   isLoading = true;
                    // });
                    // var resp = await TasksBloc.instance().createTask(
                    //     Task(assignee: assignee.text,
                    //       description: description.text,
                    //       reporter: "Jaskaran Sing",
                    //       subject: subject.text,));
                    Navigator.pop(
                      context,
                    );
                  },
                  textColor: Colors.white,
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.orange[200],
                            Colors.pinkAccent
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Create', style: TextStyle(fontSize: 14))),
                ),
              ],
            ),
    );
  }
}
