import 'package:flutter/material.dart';
import 'package:internet_checker_banner/internet_checker_banner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

<<<<<<< HEAD
=======
  // Initialize internet_checker_banner inside the initState() function

>>>>>>> fa8ce7d709229a8908fc8772ff90f5f28a9cf701
  @override
  void initState() {
    // TODO: implement initState
    InternetCheckerBanner().initialize(context, title: "No internet access");
    super.initState();
  }

<<<<<<< HEAD
=======
  // don't forget to dispose it inside dispose() function

>>>>>>> fa8ce7d709229a8908fc8772ff90f5f28a9cf701
  @override
  void dispose() {
    // TODO: implement dispose
    InternetCheckerBanner().dispose();
    super.dispose();
  }

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
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
