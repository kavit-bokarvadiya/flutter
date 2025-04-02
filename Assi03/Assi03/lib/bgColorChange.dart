
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
  Color BackgroundColor = Colors.white;
  void changeBlue()
  {
    setState(() {
      BackgroundColor = Colors.blue;
    });
  }
  void changeGreen()
  {
    setState(() {
      BackgroundColor = Colors.green;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Background Color Change", style: TextStyle(backgroundColor: Colors.grey,
            color: Colors.orange,
            fontSize: 20,
            fontWeight:FontWeight.bold),),
      ),
      body:
      Container(
        color: BackgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: changeBlue, child: Text("Make BG Blue...")),
              ElevatedButton(onPressed: changeGreen, child: Text("Make BG Green..."))
            ],
          ),
        ),
      ),

    );
  }
}

