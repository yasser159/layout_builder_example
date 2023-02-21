import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleLayoutBuilder(),
    );
  }
}

class ExampleLayoutBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder Example'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: constraints.maxWidth,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Header',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: constraints.maxWidth,
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: constraints.maxWidth / 3 - 20,
                      height: 100,
                      color: Colors.red,
                    ),
                    Container(
                      width: constraints.maxWidth / 3 - 20,
                      height: 100,
                      color: Colors.green,
                    ),
                    Container(
                      width: constraints.maxWidth / 3 - 20,
                      height: 100,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  width: constraints.maxWidth,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      'Footer',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}
