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
  int teamHishamPoints = 0;
  int teamAbdoPoints = 0;


  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Points Calculator"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Team Hisham",
                        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                     Text(
                      "$teamHishamPoints",
                      style: TextStyle(fontSize: 64.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 140.0,
                        color: Colors.lightBlue,
                        child: MaterialButton(
                          onPressed: () {
                            teamHishamPoints++;
                          },
                          child: const Text(
                            "Add 1 point",
                            style: TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 140.0,
                        color: Colors.lightBlue,
                        child: MaterialButton(
                          onPressed: () {
                            teamHishamPoints += 2;
                          },
                          child: const Text(
                            "Add 2 point",
                            style: TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 140.0,
                        color: Colors.lightBlue,
                        child: MaterialButton(
                          onPressed: () {
                            teamHishamPoints += 4;
                          },
                          child: const Text(
                            "Add 4 point",
                            style: TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 64, 0, 0),
                  child: SizedBox(
                    height: 220,
                    child: VerticalDivider(
                      width: 20,
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Team Abdo",
                        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                     Text(
                      "$teamAbdoPoints",
                      style: TextStyle(fontSize: 64.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 140.0,
                        color: Colors.lightBlue,
                        child: MaterialButton(
                          onPressed: () {
                            teamAbdoPoints++;
                          },
                          child: const Text(
                            "Add 1 point",
                            style: TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 140.0,
                        color: Colors.lightBlue,
                        child: MaterialButton(
                          onPressed: () {
                            teamAbdoPoints += 2;
                          },
                          child: const Text(
                            "Add 2 point",
                            style: TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 140.0,
                        color: Colors.lightBlue,
                        child: MaterialButton(
                          onPressed: () {
                            teamAbdoPoints += 4;
                          },
                          child: const Text(
                            "Add 4 point",
                            style: TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Container(
                width: 190.0,
                color: Colors.lightBlue,
                child: MaterialButton(onPressed: (){},
                  child: const Text(
                    "Reset",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),),
              ),
            )
          ],

        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
