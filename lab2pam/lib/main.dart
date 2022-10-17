import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab2',
      theme: ThemeData
        (
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Lab2GaidaMaxim'),
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
  final formKey = GlobalKey<FormState>();
  String response = '';
  int counter = 0;
  final calculatorController = TextEditingController();
  final letter1 = 'a';
  void _incrementCounter() async {
    setState(() {

      List<String> words = calculatorController.text.split(' ');
      for (String item in words) {
        if ( item.contains(letter1 , 0)) {
          counter++;
        }
      }
      response = 'Cuvinte: $counter';
      counter = 0;
    });
  }
  void _reset() async {
    setState(() {
      counter = 0;
      response = '';
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Numărul de literele a:',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,letterSpacing: 2),
                ),
                Container(
                    margin: const EdgeInsets.all(5),
                    child: Container()
                ),
                Text(
                  response,
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Scrie textul',
                  ),
                  controller: calculatorController,
                ),
                Container(
                    margin: const EdgeInsets.all(20),
                    child: Container()
                ),
                TextButton(onPressed: _incrementCounter,
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange),),
                  child: const Text('Calculează',
                    style: TextStyle(color: Colors.white),

                  ),
                ),
              ],
            ),
          )
      ),
    );

  }
}