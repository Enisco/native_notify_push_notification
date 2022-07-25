import 'package:flutter/material.dart';
import 'package:native_notify/native_notify.dart';

String firebaseServerKey = 'AAAAn39KHrA:APA91bHtyyucEbY-As5FF-Ik8zL5QIk15kvdOevFOLwMTKCicVqvvl_Vfe6eB6nylv6mcu4Q0WPVSubSPplNgkwvQLuX1Ndgldf8aN1QicYcjG3A24n2TqiyqBHczrBOVyKv0sIV2dry';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NativeNotify.initialize(1212, 'fLfrdNiBhoP2hlzmlzioVU');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
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
