// import 'package:counter_increment/BgColorChange.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
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
  int age=10;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider bar"),
      ),
      body:
      Column(
        children: [
          Slider(
            label: "Select Age",
            value: age.toDouble(),
            onChanged: (value) {
              setState(() {
                age = value.toInt();
              });
            },
            min: 5,
            max: 100,
          ),
          Text("Your Age: " + age.toString(),
            style: const
            TextStyle(
              fontSize: 32.0,),
          ),
        ],
      ),
    );
  }
}

