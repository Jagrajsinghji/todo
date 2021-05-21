import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BugReport extends StatefulWidget {
  const BugReport({Key key}) : super(key: key);

  @override
  _BugReportState createState() => _BugReportState();
}

class _BugReportState extends State<BugReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Align(child: Image.asset("images/report.jpg"),
            alignment: Alignment.center,),
            Align(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40.0,left: 25.0,right: 25.0),
                child: TextFormField(
                  initialValue: "Report bugs",
                ),
              ),
              alignment: Alignment.bottomCenter,
            )
          ],
        ),
      ),
    );
  }
}
