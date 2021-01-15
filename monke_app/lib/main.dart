import 'package:flutter/material.dart';
import 'info.dart';
import 'package:camera/camera.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {
      '/info': (context) => Info(),
    },
  ));
}

class Home extends StatelessWidget {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/info');
            },
          )
        ],
      ),
      body: Center(
        child: Text("Click on the button to check which monke you are"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text('Check'),
        icon: Icon(Icons.camera_alt),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
