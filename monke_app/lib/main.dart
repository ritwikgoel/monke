import 'package:flutter/material.dart';
import 'package:monke_app/view.dart';
import 'info.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:monke_app/decider.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {
      '/info': (context) => Info(),
      '/view': (context) => viewer(),
      '/decider': (context) => finalDecider(),
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<int, File> imageFileMap = {};
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
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text("M O N K E",
        style: TextStyle(
          color: Colors.black,

        ),),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
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
        child: Text("Click on the button to check which monke you are",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          // Add your onPressed code here!
          await getImage();
          imageFileMap[1] = _image;
          Navigator.pushNamed(context, '/view', arguments: {
            'imgFin': _image,
          });
        },
        label: Text('Check'),
        icon: Icon(Icons.camera_alt),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
