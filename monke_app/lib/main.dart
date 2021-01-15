import 'package:flutter/material.dart';
import 'info.dart';

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
      floatingActionButton: FloatingActionButton(onPressed: () {
        counter++;
        print(counter);
      }),
    );
  }
}
