import 'package:flutter/material.dart';
import 'package:monke_app/view.dart';
import 'info.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {
      '/info': (context) => Info(),
      '/view':(context) =>viewer(),
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File _image;
  Future getImage() async {
    File image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

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
        onPressed: () async {
          // Add your onPressed code here!
          await getImage();
          Navigator.pushNamed(context, '/view',);
        },
        label: Text('Check'),
        icon: Icon(Icons.camera_alt),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
