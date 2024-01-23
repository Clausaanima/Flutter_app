import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
    final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100];

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter ListView')),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                color: Colors.blue[colorCodes[index]],
                child: Stack(
                  children: <Widget>[
                    Center(child: Text('Entry ${entries[index]}')),
                    Positioned(  
                      bottom: 3,  
                      right: 10,  
                      child: Text('$index'),
                    ),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}