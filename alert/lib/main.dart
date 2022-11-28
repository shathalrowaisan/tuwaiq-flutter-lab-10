import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _icon = "images/alert.jpeg";
  String alert = "Alert";

  void _incrementCounter() {
    setState(() {
      if (_icon == "images/alert.jpeg") {
        _icon = "images/ring.jpeg" ;
          alert = "stop alert";
      } else {
        _icon = "images/alert.jpeg";
        alert = "Alert";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(

      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(_icon) ,
            SizedBox(height: 20,),
            ElevatedButton(onPressed: _incrementCounter, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, // Background color
            ),
            child: Text(alert),)
          ],
        ),
      ),
    );
  }
}
