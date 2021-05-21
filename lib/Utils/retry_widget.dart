import 'package:flutter/material.dart';

class RetryWidget extends StatefulWidget {
  final Function retryFunction;

  const RetryWidget({Key key, this.retryFunction})
      : assert(retryFunction != null),
        super(key: key);

  @override
  _RetryWidgetState createState() => _RetryWidgetState();
}

class _RetryWidgetState extends State<RetryWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Something Went Wrong!"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                onPressed: () => widget.retryFunction(),
                color: Colors.blue,
                child: Text("Retry"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
