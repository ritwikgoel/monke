import 'dart:io';

import 'package:flutter/material.dart';

class viewer extends StatefulWidget {
  @override
  _viewerState createState() => _viewerState();
}

class _viewerState extends State<viewer> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);
    return Scaffold(
      backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text("MONKE"),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                child: Image.file(
                  data['imgFin'],
                  height: 300,
                  width: 200,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              color: Colors.pink,
              textColor: Colors.white,
              padding: EdgeInsets.all(12),
              onPressed: () {
                Navigator.pushNamed(context, '/decider');
              },
              child: Text("Scan your soul"),
            )
          ],
        ));
  }
}
