import 'package:chatgpt_extend/utility.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(body: HomePage())),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  String output = "wait";

  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(output),
        ElevatedButton(
            onPressed: () async {
              print("000000000000000 hello");
              final x = await getChatResponse("write a love letter");

              setState(() {
                output = x;
              });
              print("000000000000 $output");
            },
            child: const Text("run the script"))
      ],
    );
  }
}
