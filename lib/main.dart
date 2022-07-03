import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Study',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: '과제'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text('HI'),
          ],
        ),
      ),
      bottomNavigationBar: new GestureDetector(
          onTap: () {
            print("GestureDetector clicked");
          },
          child: Container(
              height: 55,
              color: Colors.blueGrey,
              child: new Column(children: [Icon(Icons.home), Text('홈')]))),
      endDrawer: Drawer(
          child: ListView(
        children: [
          ListTile(
            title: const Text('Home'),
            onTap: () {
              print('home');
            },
          ),
          ListTile(
            title: const Text('Image'),
            onTap: () {
              print('image');
            },
          ),
        ],
      )),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
