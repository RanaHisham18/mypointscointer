import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Points Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Points Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Points Calculator"),
      ),
      body:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Team A", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
              ),
              Text("0", style: TextStyle(fontSize: 64.0),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 140.0,
                  color: Colors.lightBlue,
                  child: MaterialButton(onPressed: (){}, child: const Text("Add 1 point",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 140.0,
                  color: Colors.lightBlue,
                  child: MaterialButton(onPressed: (){}, child: const Text("Add 2 point",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 140.0,
                  color: Colors.lightBlue,
                  child: MaterialButton(onPressed: (){}, child: const Text("Add 4 point",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),),),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 64, 0, 264),
            child: const VerticalDivider(
              width: 20,
              thickness: 2,
              color: Colors.grey,
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Team B", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
              ),
              Text("0", style: TextStyle(fontSize: 64.0),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 140.0,
                  color: Colors.lightBlue,
                  child: MaterialButton(onPressed: (){}, child: const Text("Add 1 point",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 140.0,
                  color: Colors.lightBlue,
                  child: MaterialButton(onPressed: (){}, child: const Text("Add 2 point",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 140.0,
                  color: Colors.lightBlue,
                  child: MaterialButton(onPressed: (){}, child: const Text("Add 4 point",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),),),
                ),
              ),
            ],
          )
        ],
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
