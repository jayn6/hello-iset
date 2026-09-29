import 'package:flutter/material.dart';
//lib folder contains the main and the actual application code
//android folder has specific parts of the android system used in flutter like android app settings
//web folder holds the html, icons, and config files that flutter uses to run the app in a browser
//pubspec.yaml contains the project configuration & packages
//main() responsible for starting the application 
void main() {
  runApp(const MyApp());//runapp is for setting the app widget (myapp()),
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//materialapp() provides the material desgin features such as themes colors and fonts ect , 

      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 252, 245, 146)),
      ),
      home: const MyHomePage(title: 'mon premier projet {Nouran ben sghaier}'),
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
    setState(() {//setstate responsible for rebuliding the screen based on the new changes
    
      _counter++;
    });
  }
  void _decrementCounter() 
{

     setState(() {
      if (_counter>0) {

      _counter--;

    }});
  }
   void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(//scaffold gives the structure of the screen like body bars and bttons,
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
         child: Column(
        
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    FloatingActionButton(
      onPressed: _decrementCounter,
      tooltip: 'Decrease',
      child: const Icon(Icons.remove),
    ),

    const SizedBox(width: 15),

    FloatingActionButton(
      onPressed: _resetCounter,
      tooltip: 'Reset',
      child: const Icon(Icons.refresh),
    ),

    const SizedBox(width: 15),

    FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ),
  ],
),
    );
  }
}
