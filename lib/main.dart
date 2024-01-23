import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Basic Flutter App",
      home: MainContainer(),
    );
  }
}

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Flutter App"),
      ),
      body: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = "Hello World";

  showFirstText() {
    setState(() {
      text = "First Text";
    });
  }

  showSecondText() {
    setState(() {
      text = "Second Text";
    });
  }

  showThirdText() {
    setState(() {
      text = "Third Text";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          ElevatedButton(
            onPressed: showFirstText,
            child: const Text("Click Me"),
          ),
          ElevatedButton(
            onPressed: showSecondText,
            child: const Text("Click Me"),
          ),
          ElevatedButton(
            onPressed: showThirdText,
            child: const Text("Click Me"),
          )
        ],
      )),
    );
  }
}
