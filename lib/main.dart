import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
    final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100];
    final List<String> imageLinks = <String>[
      'https://ferma-biz.ru/wp-content/uploads/2022/08/1476173418-111-2.jpg',
      'https://klike.net/uploads/posts/2022-08/1661756316_j-7.jpg',
      'https://proprikol.ru/wp-content/uploads/2020/08/krasivye-kartinki-kotov-20.jpg',
      'https://on-desktop.com/wps/2018Animals___Cats_Large_gray_cat_with_a_surprised_look_123712_.jpg',
      'https://gas-kvas.com/grafic/uploads/posts/2023-09/1695792586_gas-kvas-com-p-kartinki-kotiki-26.jpg',
      'https://klike.net/uploads/posts/2023-02/1675496633_3-13.jpg',
    ]; 

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
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: double.infinity,
                        child: Image.network(
                          imageLinks[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(child: Text('Entry ${entries[index]}')),
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