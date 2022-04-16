import 'package:flutter/material.dart';

Future<void> showValid(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Row(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.warning_rounded),
            ),
            Text('Sucess'),
          ],
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Column(
                children: const [
                  Text('Thank you for submitting a request'),
                  Text('I will get back to you within one buisness day'),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Future<void> showInvalid(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Row(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 8, 8),
              child: Icon(
                Icons.warning_rounded,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Error'),
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Column(
                children: const [
                  Text('Error sending your request'),
                  Text('Please try again later'),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
