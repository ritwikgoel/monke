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
      appBar: AppBar(
        title: Text("MONKE"),
      ),
      body:
      Image.file(data['imgFin'])
    );
  }
}
